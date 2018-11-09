unit mda.helpers;

interface

uses
  mda.types,

  Classes,
  System.SysUtils;

type
  TMDAErroMsg = record helper for TMDAErro
    procedure init();
  end;

type
  TStringHelper = record helper for String
    function RetirarAspas(): String;
    function IsEmpty(): Boolean;
    function Lower(): String;
    function Upper(): String;
    function Quoted(): String;
  end;

type
  TStringListHelper = class helper for TStringList
    procedure insertAndInc(
      var a_Index: Integer;
      const a_Text: String
    );

    procedure searchReplace(
      const a_old: String;
      const a_new: String;
      const a_keepingQuoteChar: Boolean = False
    );

    function getIndex(
      const a_Text: String
    ): Integer;
  end;

implementation

{ TMDAErroMsg }

procedure TMDAErroMsg.init;
begin
  Self.comErro := False;
  Self.mensagem := '';
end;

{ TStringHelper }

function TStringHelper.IsEmpty: Boolean;
begin
  Result := Self = EmptyStr;
end;

function TStringHelper.Lower: String;
begin
  Result := LowerCase(Self);
end;

function TStringHelper.Quoted: String;
begin
  Result := QuotedStr(Self);
end;

function TStringHelper.RetirarAspas: String;
begin
  Result := StringReplace(Self, '''', '', [rfReplaceAll]);
end;

function TStringHelper.Upper: String;
begin
  Result := UpperCase(Self);
end;

{ TStringListHelper }

function TStringListHelper.getIndex(const a_Text: String): Integer;

  var t_Key: Integer;

begin
  Result := - 1;
  for t_Key := 0 to Self.Count - 1
    do begin
      if Pos(a_Text, Self.Strings[t_Key]) > 0
        then begin
          Result := t_Key;
          Break;
        end;
    end;
end;

procedure TStringListHelper.insertAndInc(
  var a_Index: Integer;
  const a_Text: String
);
begin
  Self.Insert(a_Index, a_Text);
  Inc(a_Index);
end;

procedure TStringListHelper.searchReplace(const a_old, a_new: String; const a_keepingQuoteChar: Boolean);

  var t_Key: Integer;

begin
  for t_Key := 0 to Self.Count - 1
    do begin
      if Pos(a_old, Self.Strings[t_Key]) > 0
        then begin
          if not a_keepingQuoteChar
            then Self.Strings[t_Key] := StringReplace(StringReplace(Self.Strings[t_Key], a_old, a_new, [rfReplaceAll]), '''', '', [rfReplaceAll])
            else Self.Strings[t_Key] := StringReplace(Self.Strings[t_Key], a_old, a_new, [rfReplaceAll]);
        end;
    end;
end;

end.
