codeunit 50010 MyCustomCodeunit
{
    trigger OnRun()
    var
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyDemoCodeunit, 'OnBeforeCalculateValues', '', true, true)]
    local procedure Add2(var ValueA: Decimal; var ValueB: Decimal)
    begin
        Message('We will add 2 to each Value');
        ValueA += 2;
        ValueB += 2;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyDemoCodeunit, 'OnAfterCalculateValues', '', true, true)]
    local procedure MyProcedure(var Result: Decimal)
    begin
        Message('Original Result was %1 and will be divided by 2', Result);
        Result := Result / 2;
    end;

}
