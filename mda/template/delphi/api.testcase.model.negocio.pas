unit api.testcase.model.$(negocio);

interface

	uses
      TestFramework,
      Uni,
      udmConexao,
      api.model.recibo,
      uConst
    	$(uses)
	;

	$(interface.negocio)

implementation
  uses SysUtils, DateUtils;

	$(implementation.metodos)

initialization
   $(initialization.testcase)

end.
