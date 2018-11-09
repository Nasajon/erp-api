unit mda.adapter.syntax.php;

interface

uses
  mda.adapter.syntax,
  mda.models,
  mda.types,
  mda.helpers,
  mda.constants;

  type
    TAdapterPHP = class(TInterfacedObject, IAdapterSyntax)

      public

        function gerarCodigoFonte(
          const a_API: TAPI
        ): TMDAErro;

    end;

implementation

{ TAdapterPHP }

function TAdapterPHP.gerarCodigoFonte(
  const a_API: TAPI
): TMDAErro;
begin
  if not Assigned(a_API)
    then Exit();
end;

end.
