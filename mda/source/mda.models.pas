unit mda.models;

interface

uses
  System.SysUtils,
  System.Generics.Collections,

  mda.types,
  mda.xmlbinding,
  mda.helpers,
  mda.utils,

  XMLIntf,
  XMLDoc;

  {$REGION '<< Types >>'}

    type
      TNodeImport = class;
      TNodeField = class;
      TNodeClasseModelo = class;
      TAPI = class;

  {$ENDREGION}

  {$REGION '<< TNodeImport >>'}

    TNodeImport = class

      private

        var m_nome: String;

        function Getnome(): String;

      public

        constructor create(
          const a_nome: String
        ); overload;

        property nome: String read Getnome;

    end;

  {$ENDREGION}

  {$REGION '<< TNodeField >>'}

    TNodeField = class

      private

        var m_nome: String;
        var m_controlType: String;
        var m_tamanho: String;
        var m_namespace: String;
        var m_required: Boolean;
        var m_summary: String;
        var m_notnull: Boolean;
        var m_format: String;

        function Getnome(): String;
        function GetcontrolType(): String;
        function Gettamanho(): String;
        function Getnamespace(): String;
        function Getrequired(): Boolean;
        function Getsummary(): String;
        function Getnotnull(): Boolean;
        function Getformat(): String;

      public

        constructor create(
          const a_nome: String;
          const a_controlType: String;
          const a_tamanho: String;
          const a_namespace: String;
          const a_required: Boolean;
          const a_summary: String;
          const a_notnull: Boolean;
          const a_format: String
        );


        property nome: String read Getnome;
        property controlType: String read GetcontrolType;
        property tamanho: String read Gettamanho;
        property namespace: String read Getnamespace;
        property required: Boolean read Getrequired;
        property summary: String read Getsummary;
        property notnull: Boolean read Getnotnull;
        property format: String read Getformat;

    end;

  {$ENDREGION}

  {$REGION '<< TNodeClasseModelo >>'}

    TNodeClasseModelo = class

      private

        var m_fields: TObjectList<TNodeField>;
        var m_nome: String;
        var m_summary: String;

        function Getfields(): TObjectList<TNodeField>;
        function Getnome(): String;
        function Getsummary(): String;

      public

        constructor create(
          const a_nome: String;
          const a_summary: String
        ); overload;
        destructor destroy(); override;

        property nome: String read Getnome;
        property summary: String read Getsummary;

        property fields: TObjectList<TNodeField> read Getfields;

    end;

  {$ENDREGION}

  {$REGION '<< TAPI >>'}

    TAPI = class

      private

        var m_imports: TObjectList<TNodeImport>;
        var m_modelo: TObjectList<TNodeClasseModelo>;
        var m_nomeModulo: String;
        var m_nomeSistema: String;

        function GetnomeModulo(): String;
        function GetnomeSistema(): String;
        function Getmodelos(): TObjectList<TNodeClasseModelo>;
        function Getimports(): TObjectList<TNodeImport>;

      public

        destructor destroy(); override;

        function loadFromFile(
          const a_File: String
        ): TMDAErro;

        function existeImport(
          const a_nome: String
        ): Boolean;

        property nomeModulo: String read GetnomeModulo;
        property nomeSistema: String read GetnomeSistema;

        property modelos: TObjectList<TNodeClasseModelo> read Getmodelos;
        property imports: TObjectList<TNodeImport> read Getimports;

    end;

  {$ENDREGION}

implementation

{$REGION '<< TNodeImport >>'}

constructor TNodeImport.create(
  const a_nome: String
);
begin
  Self.m_nome := a_nome;
  inherited Create();
end;

function TNodeImport.Getnome: String;
begin
  Result := Self.m_nome;
end;

{$ENDREGION}

{$REGION '<< TNodeField >>'}


function TNodeField.Getnamespace: String;
begin
  Result := Self.m_namespace;
end;

function TNodeField.Getnome: String;
begin
  Result := Self.m_nome;
end;

function TNodeField.Getnotnull: Boolean;
begin
   Result := Self.m_notnull;
end;

function TNodeField.Getrequired: Boolean;
begin
  Result := Self.m_required;
end;

function TNodeField.Getsummary: String;
begin
  Result := Self.m_summary;
end;

function TNodeField.Gettamanho: String;
begin
  Result := Self.m_tamanho;
end;

constructor TNodeField.create(
  const a_nome: String;
  const a_controlType: String;
  const a_tamanho: String;
  const a_namespace: String;
  const a_required: Boolean;
  const a_summary: String;
  const a_notnull: Boolean;
  const a_format: String
);
begin
  Self.m_nome := a_nome;
  Self.m_controlType := a_controlType;
  Self.m_tamanho := a_tamanho;
  Self.m_namespace := a_namespace;
  Self.m_required := a_required;
  Self.m_summary := a_summary;
  Self.m_notnull := a_notnull;
  Self.m_format := a_format;
  inherited Create();
end;

function TNodeField.GetcontrolType: String;
begin
  Result := Self.m_controlType;
end;

function TNodeField.Getformat: String;
begin
  Result := Self.m_format;
end;

{$ENDREGION}

{$REGION '<< TNodeClasseModelo >>'}

constructor TNodeClasseModelo.create(
  const a_nome: String;
  const a_summary: String
);
begin
  Self.m_nome := a_nome;
  Self.m_summary := a_summary;
  inherited Create();
end;

destructor TNodeClasseModelo.destroy;
begin
  Self.Getfields().Free();
  inherited Destroy();
end;

function TNodeClasseModelo.Getfields: TObjectList<TNodeField>;
begin
  if not Assigned(Self.m_fields)
    then Self.m_fields := TObjectList<TNodeField>.Create();
  Result := Self.m_fields;
end;

function TNodeClasseModelo.Getnome: String;
begin
  Result := Self.m_nome;
end;

function TNodeClasseModelo.Getsummary: String;
begin
  Result := Self.m_summary;
end;

{$ENDREGION}

{$REGION '<< TAPI >>'}

destructor TAPI.destroy;
begin
  Self.Getmodelos().Free();
  Self.Getimports().Free();
  inherited;
end;

function TAPI.existeImport(const a_nome: String): Boolean;

  var t_Indice: Integer;

begin
  Result := False;
  for t_Indice := 0 to Self.imports.Count - 1
    do begin
      Result := Self.imports.Items[t_Indice].nome = a_nome;
      if Result
        then Break;
    end;
end;

function TAPI.Getimports: TObjectList<TNodeImport>;
begin
  if not Assigned(Self.m_imports)
    then Self.m_imports := TObjectList<TNodeImport>.Create();
  Result := Self.m_imports;
end;

function TAPI.Getmodelos: TObjectList<TNodeClasseModelo>;
begin
  if not Assigned(Self.m_modelo)
    then Self.m_modelo := TObjectList<TNodeClasseModelo>.Create();
  Result := Self.m_modelo;
end;

function TAPI.GetnomeModulo: String;
begin
  Result := Self.m_nomeModulo;
end;

function TAPI.GetnomeSistema: String;
begin
  Result := Self.m_nomeSistema;
end;

function TAPI.loadFromFile(const a_File: String): TMDAErro;

  var t_iXMLDoc: TXMLDocument;
  var t_Indice: Integer;
  var t_Indice_Modelos: Integer;
  var t_API: TAPI;

begin
  Result.init();
  t_iXMLDoc := TXMLDocument.Create(nil);
  try
    try
      t_iXMLDoc.LoadFromFile(a_File);
      with mda.xmlbinding.GetRoot(t_iXMLDoc).Models
        do begin
          Self.m_nomeModulo := Modulo;
          Self.m_nomeSistema := Sistema;

          // Imports
          for t_Indice := 0 to Import.Count -1
            do Self.imports.Add(
                  TNodeImport.create(
                    Import.Items[t_Indice].Nome
                  )
            );

          // Models
          for t_Indice_Modelos := 0 to Model.Count - 1
            do begin
              Self.Getmodelos().Add(
                TNodeClasseModelo.Create(
                  Model.Items[t_Indice_Modelos].Nome,
                  Model.Items[t_Indice_Modelos].Summary
                )
              );

              // fields
              for t_Indice := 0 to Model.Items[t_Indice_Modelos].Field.Count - 1
                do begin
                  Self.Getmodelos().Last.fields.Add(
                      TNodeField.create(
                        Model.Items[t_Indice_Modelos].Field.Items[t_Indice].Nome,
                        Model.Items[t_Indice_Modelos].Field.Items[t_Indice].ControlType,
                        Model.Items[t_Indice_Modelos].Field.Items[t_Indice].Tamanho,
                        Model.Items[t_Indice_Modelos].Field.Items[t_Indice].namespace,
                        (Model.Items[t_Indice_Modelos].Field.Items[t_Indice].Required = 'True') or (Model.Items[t_Indice_Modelos].Field.Items[t_Indice].Required.IsEmpty()),
                        Model.Items[t_Indice_Modelos].Field.Items[t_Indice].Summary,
                        (Model.Items[t_Indice_Modelos].Field.Items[t_Indice].NotNull = 'True'),
                        Model.Items[t_Indice_Modelos].Field.Items[t_Indice].Format
                      )
                  );
                end;
            end;
        end;
    except on E: Exception
      do begin
        Result.comErro := True;
        Result.mensagem := 'XML no formato inválido: ' + a_File;
      end;
    end;
  finally
    t_iXMLDoc := nil;
  end;
end;

{$ENDREGION}

end.
