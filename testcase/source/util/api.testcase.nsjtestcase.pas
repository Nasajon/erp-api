unit api.testcase.nsjtestcase;

interface

uses
  TestFramework,
  uTransaction,
  uErro,
  uConst,
  System.SysUtils,
  api.model.recibo;

type
  TNsjTestCase = class(TTestCase)

    protected
      var m_disableAutomaticRollback: Boolean;

      procedure setAutomaticRollback(const a_disableAutomaticRollback: Boolean);

      procedure RunTest(testResult: TTestResult); override;
      procedure validaRecibo(const a_recibo: TRecibo);
      procedure validaTpErro(const a_erro: TpErro);

  end;

implementation

{ TNsjTestCase }

procedure TNsjTestCase.RunTest(testResult: TTestResult);

  var t_erro: TpErro;

begin
  try
    if not m_disableAutomaticRollback
      then begin
        t_erro := TTransaction.StartTransaction();
        if (t_erro.tipo <> trConfirmacao)
          then begin
            raise Exception.Create('Erro ao iniciar transação: ' + t_erro.mensagem);
          end;
      end;

    inherited;
  finally
    if not m_disableAutomaticRollback
      then begin
        TTransaction.Rollback();
      end;
  end;
end;

procedure TNsjTestCase.setAutomaticRollback(
  const a_disableAutomaticRollback: Boolean
);
begin
  Self.m_disableAutomaticRollback := a_disableAutomaticRollback;
end;

procedure TNsjTestCase.validaRecibo(const a_recibo: TRecibo);
begin
  Check((a_recibo.codigo = c_recibo_ok) or
        (a_recibo.codigo = '0001') or
        (a_recibo.codigo = '001'), a_recibo.mensagem);
end;

procedure TNsjTestCase.validaTpErro(const a_erro: TpErro);
begin
  Check((a_erro.tipo = trConfirmacao), a_erro.mensagem);
end;

end.
