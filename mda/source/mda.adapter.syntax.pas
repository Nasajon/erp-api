unit mda.adapter.syntax;

interface

uses
  mda.types,
  mda.models;

  type
    IAdapterSyntax = interface
      ['{CED8BD23-D8D7-4D3A-836C-11B3129ED775}']
      function gerarCodigoFonte(
        const a_API: TAPI
      ): TMDAErro;
    end;

  type
    IAdapterSyntaxPage = interface
      ['{F6BF7D37-D233-4D14-A932-35B6418FE624}']
      function gerarCodigoFonte(): TMDAErro;
    end;

implementation

end.
