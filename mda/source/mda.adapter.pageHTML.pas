unit mda.adapter.pageHTML;

interface

uses
  System.Classes,
  System.SysUtils,
  Winapi.Windows,

  mda.enum,
  mda.adapter.syntax,
  mda.types,
  mda.models,
  mda.helpers,
  mda.constants,
  mda.utils;

  type
    TAdapterHTML = class(TInterfacedObject, IAdapterSyntaxPage)

      private

        function gerarIndexHTML(): TMDAErro;
        function gerarIndexHTML_Modelos(): TMDAErro;

      public

        function gerarCodigoFonte(): TMDAErro;

    end;

implementation

{ TAdapterHTML }

function TAdapterHTML.gerarCodigoFonte(): TMDAErro;
begin
  Result := Self.gerarIndexHTML();
  if not Result.comErro
    then Result := Self.gerarIndexHTML_Modelos();
end;

function TAdapterHTML.gerarIndexHTML(): TMDAErro;

  var t_HTML: TStringList;
  var t_Key: TpSistemas;
  var t_Index: Integer;

begin
  Result.init();

  t_HTML := TStringList.Create();
  try
    t_HTML.LoadFromFile('..\template\html\index.html');

    for t_Key := Low(mda.enum.tpSistemas) to High(mda.enum.tpSistemas)
      do begin
        t_Index := t_HTML.getIndex(mda.constants.c_html_schemas);
        t_HTML.insertAndInc(
          t_Index,
          Format(
            '          <li><h3><a href="%s\%s">%s</a><h3></li>',
            [
              mda.constants.cSistemasStr[t_Key],
              'index.html',
              mda.constants.cSistemasStr[t_Key]
            ]
          ).RetirarAspas()
        );
      end;

    t_HTML.searchReplace(mda.constants.c_html_schemas, '');

    // Gerar o arquivo
    t_HTML.SaveToFile(String(TUtils.getDirPage() + 'index.html') .RetirarAspas());
  finally
    t_HTML.Free();
  end;
end;

function TAdapterHTML.gerarIndexHTML_Modelos(
): TMDAErro;

  var t_HTML: TStringList;
  var t_Key: TpSistemas;

  var t_Index: Integer;

  var t_Lista_Files: TStringList;
  var t_Indice_Files: Integer;

  var t_File: TStringList;
  var t_Indice: Integer;

  var t_Nome: String;

begin
  Result.init();

  for t_Key := Low(mda.enum.tpSistemas) to High(mda.enum.tpSistemas)
    do begin
      t_HTML := TStringList.Create();
      try
        t_HTML.LoadFromFile('..\template/html/index.html');

        if not DirectoryExists((TUtils.getDirSyntaxeFileFormat(mda.constants.cSistemasStr[t_Key])).RetirarAspas())
          then Continue;

        // Lista todos os arquivos
        t_Lista_Files := TUtils.findFiles(TUtils.getDirSyntaxeFileFormat(mda.constants.cSistemasStr[t_Key]), 'txt');
        try
          for t_Indice_Files := 0 to t_Lista_Files.Count - 1
            do begin
              // Copia o arquivo
              t_File := TStringList.Create();
              try
                t_File.LoadFromFile(t_Lista_Files.Strings[t_Indice_Files]);
                t_File.SaveToFile(TUtils.getDirPageFileFormat(mda.constants.cSistemasStr[t_Key]) + ExtractFileName(t_Lista_Files.Strings[t_Indice_Files]));
              finally
                t_File.Free();
              end;

              t_Nome := StringReplace(ExtractFileName(t_Lista_Files.Strings[t_Indice_Files]), '/', '', [rfReplaceAll]);

              t_Index := t_HTML.getIndex(mda.constants.c_html_schemas);
              t_HTML.insertAndInc(
                t_Index,
                Format(
                  '          <li><h3><a href="%s">%s</a><h3></li>',
                  [
                    t_Nome,
                    StringReplace(t_Nome, '.txt', '', [rfReplaceAll])
                  ]
                ).RetirarAspas()
              );
            end;
        finally
          if Assigned(t_Lista_Files)
            then t_Lista_Files.Free();
        end;

        t_HTML.searchReplace(mda.constants.c_html_schemas, '');

        // Gerar o arquivo
        t_HTML.SaveToFile(String(TUtils.getDirPageFileFormat(mda.constants.cSistemasStr[t_Key]) + 'index.html') .RetirarAspas());
      finally
        t_HTML.Free();
      end;
    end;
end;

end.
