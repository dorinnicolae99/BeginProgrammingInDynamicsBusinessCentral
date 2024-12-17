report 50106 "Update SL"
{
    Caption = 'Update SL';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            RequestFilterFields = "No.";
            DataItemTableView = sorting("Document Type", "No.") where(Status = const(Open));
            dataitem(SalesLine; "Sales Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");

                trigger OnAfterGetRecord()
                begin
                    "Marked Line" := true;
                    Modify();
                end;
            }

            trigger OnPostDataItem()
            begin
                Message('Processing is finished.')
            end;
        }
    }
}