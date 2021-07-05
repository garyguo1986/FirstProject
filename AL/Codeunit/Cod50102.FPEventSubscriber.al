codeunit 50102 "FP Event Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', true, true)]
    local procedure CUReportManagement_OnAfterSubstituteReport_Sub(ReportId: Integer; RunMode: Option Normal,ParametersOnly,Execute,Print,SaveAs,RunModal; RequestPageXml: Text; RecordRef: RecordRef; var NewReportId: Integer)
    begin
        if ReportId = Report::"Standard Purchase - Order" then begin
            Message(StrSubstNo('Run Mode %1', RunMode));
            NewReportId := Report::"New Purchase - Order";
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', true, true)]
    local procedure TestSubscriber()
    var
        SalesOrderL: Page "Sales Order";
    begin
    end;

    local procedure Test()
    var
        PurchaseHeaderL: Record "Purchase Header";
        PurchaseOrderL: Page "Purchase Order";
        ReportPurchaseOrderL: Report "Standard Purchase - Order";
    begin
    end;
}
