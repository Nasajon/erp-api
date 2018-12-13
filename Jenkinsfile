node('master') {
	def dirArtifactName = "erp-api"
	def artifactBuildPath = "${env.WORKSPACE}\\${dirArtifactName}\\build"
	def nasajonCIBaseDir = "${env.NASAJON_CI_BASE_DIR}"

	try {
		properties([disableConcurrentBuilds()])

		stage('Checkout') {
			dir("${dirArtifactName}") {
			    timeout(time: 300, unit: 'SECONDS') {
                	checkout scm
          		}
			}
		}

		stage('Build') {
			dir("${nasajonCIBaseDir}\\build\\erp") {
				bat 'init.bat'
			}

			generateVersionNumber()

			dir("${artifactBuildPath}") {
				bat 'jenkins_build.bat'
			}
		}

		if (canDeploy()) {
			stage('Deploy') {
				dir("${nasajonCIBaseDir}\\build\\") {
					bat "tools\\7zip\\7za.exe a -tzip ${env.WORKSPACE}\\output\\Nasajon.API.zip ${env.WORKSPACE}\\output\\dcu\\api"

					bat "erp\\deploy.bat ${artifactBuildPath} zip ${env.WORKSPACE}\\output\\Nasajon.API.zip"
				}
			}
		}

		notifyChangeLog()
	} catch (e) {
		currentBuild.result = "FAILED"
    	notifyFailed()
    	throw e
	} finally {
		stage('Clean') {
			dir("${env.WORKSPACE}\\output") {
				deleteDir()
			}
		}
	}
}

def notifyFailed() {
  emailext(
      subject: "Build Quebrado: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
      body: """Build Quebrado: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]': '${env.BUILD_URL}/console'""",
      recipientProviders: [[$class: 'CulpritsRecipientProvider'],
                     	   [$class: 'DevelopersRecipientProvider'],
                           [$class: 'RequesterRecipientProvider'],
                           [$class: 'UpstreamComitterRecipientProvider']]
  )
}

@NonCPS
def notifyChangeLog() {
	def branchName = "${env.BRANCH_NAME}"
	def branchsLD = "${env.BRANCHS_LD}"

	if (!branchsLD.contains(branchName)) {
		return
	}

	def changeLogSets = currentBuild.changeSets
	def content = ""

	for (int i = 0; i < changeLogSets.size(); i++) {
		def entries = changeLogSets[i].items

		for (int j = 0; j < entries.length; j++) {
			def entry = entries[j]
			content += "[${entry.author}] - ${entry.msg}\n"
		}
	}

	if (!content) {
        return
    }

	emailext(
      to: "cvf@nasajon.com.br",
	  subject: "ChangeLog '${env.JOB_NAME} [${currentBuild.displayName}]'",
      body: content
  	)
}

def generateVersionNumber() {
	def version = ""
	def branchName = "${env.BRANCH_NAME}"

	if (branchName == "master") {
		version = "2.${env.CURRENT_SPRINT}.0.${env.BUILD_NUMBER}"
	} else if (branchName.startsWith("v2.")) {
		def sprint = branchName.substring(3)
		version = "2.${sprint}.${env.BUILD_NUMBER}.0"
	} else {
		version = "2.0.0.0"
	}

	println("Version: " + version)

	currentBuild.displayName = version

	writeFile file: "${env.WORKSPACE}\\output\\VersionInfo", text: version
}

def canDeploy() {
	return (env.BRANCH_NAME == 'master') || (env.BRANCH_NAME.startsWith("v2."))
}