pageextension 50100 "Customer Card Ext." extends "Customer Card"
{
    trigger OnOpenPage()
    var
        CompanyInfoL: Codeunit "Company Information Mgt.";
    begin
        Message(Format(CompanyInfoL.IsDemoCompany()));
    end;
}
