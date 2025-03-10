pageextension 50120 VendorPageExt extends "Vendor Card"
{
    layout
    {
        addlast(General)
        {
            field(TotalPO; TotalPos)
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        TaskParameters: Dictionary of [Text, Text];
    begin
        TaskParameters.Add('Vendor', Format(Rec."No."));
        CurrPage.EnqueueBackgroundTask(BkTaskId, Codeunit::PageBackgroundTask, TaskParameters, 60000, PageBackgroundTaskErrorLevel::Error);

    end;

    trigger OnPageBackgroundTaskCompleted(TaskId: Integer; Results: Dictionary of [Text, Text])
    begin
        if TaskId = BkTaskId then
            TotalPos := Results.Get('Total');
    end;

    trigger OnPageBackgroundTaskError(TaskId: Integer; ErrorCode: Text; ErrorText: Text; ErrorCallStack: Text; var IsHandled: Boolean)
    begin
        TotalPos := 'Error ' + ErrorText;
    end;

    var
        TotalPos: Text;
        BkTaskId: Integer;
}
