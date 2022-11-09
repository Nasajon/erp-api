node('master') {
	def dirArtifactName = "erp-api"
	def artifactBuildPath = "${env.WORKSPACE}\\${dirArtifactName}\\build"
	def nasajonCIBaseDir = "${env.NASAJON_CI_BASE_DIR}"
	def version = ""
	def dependenciesMaskVersion = "RELEASE"

	try {
		properties([disableConcurrentBuilds()])

		stage('Checkout') {
			dir("${dirArtifactName}") {
			    timeout(time: 3600, unit: 'SECONDS') {
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
					bat """
                        set VERINFO=${version}
                        set DEPS_VERSION=${dependenciesMaskVersion}
						erp\\deploy.bat ${artifactBuildPath} zip ${env.WORKSPACE}\\output\\Nasajon.API.zip
					"""
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
		subject: '''${DEFAULT_SUBJECT}''',
		body: '''${DEFAULT_CONTENT}''',
		recipientProviders: [[$class: 'CulpritsRecipientProvider'],
							[$class: 'DevelopersRecipientProvider'],
							[$class: 'RequesterRecipientProvider'],
							[$class: 'UpstreamComitterRecipientProvider']],
		to: "${env.EMAILS_FAILED}"
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
	def branchName = "${env.BRANCH_NAME}"

	if (branchName == "master") {
		version = "2.${env.CURRENT_SPRINT}.0.${env.BUILD_NUMBER}"
		dependenciesMaskVersion = "[2.${env.CURRENT_SPRINT}.0.0, 2.${env.CURRENT_SPRINT}.0.9999]"
	} else if (branchName.startsWith("v2.")) {
		def sprint = branchName.substring(3)
		version = "2.${sprint}.${env.BUILD_NUMBER}.0"
		dependenciesMaskVersion = "[2.${sprint}.1.0, 2.${sprint}.9999.0]"
	} else {
		version = "2.0.0.0"
	}

	println("Version: " + version)
	println("Dependencies Mask Version: " + dependenciesMaskVersion)

	currentBuild.displayName = version

	writeFile file: "${env.WORKSPACE}\\output\\VersionInfo", text: version
	writeFile file: "${env.WORKSPACE}\\output\\DependenciesMaskVersion", text: dependenciesMaskVersion
}

def canDeploy() {
	return (env.BRANCH_NAME == 'master') || (env.BRANCH_NAME.startsWith("v2."))
}
