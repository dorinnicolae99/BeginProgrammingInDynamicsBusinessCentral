pageextension 50120 VendorCard extends "Vendor Card"
{
    layout
    {
        addlast(General)
        {
            field(TotalPOs; TotalPOs)
            {
                ApplicationArea = All;
                Caption = 'Total POs';
                Editable = false;
                ToolTip = 'Shows the number of Purchase Orders that exist for the current Vendor. In case an error happens, it will display the error message instead.';
            }

        }
    }

    var
        TotalPOs: Text;
        BkgTaskId: Integer;

    trigger OnAfterGetRecord()
    var
        VendorBkgTsk: Codeunit VendorBkgTsk;
        TaskParameters: Dictionary of [Text, Text];
    begin
        TaskParameters.Add(VendorBkgTsk.GetBkgParameterName(), Format(Rec."No."));
        CurrPage.EnqueueBackgroundTask(BkgTaskId, Codeunit::VendorBkgTsk, TaskParameters, 60000, PageBackgroundTaskErrorLevel::Error);
    end;

    trigger OnPageBackgroundTaskCompleted(TaskId: Integer; Results: Dictionary of [Text, Text])
    var
        VendorBkgTsk: Codeunit VendorBkgTsk;
    begin
        if TaskId = BkgTaskId then
            TotalPOs := Results.Get(VendorBkgTsk.GetBkgParameterResultsName());
    end;

    trigger OnPageBackgroundTaskError(TaskId: Integer; ErrorCode: Text; ErrorText: Text; ErrorCallStack: Text; var IsHandled: Boolean)
    begin
        IsHandled := true;
        TotalPOs := 'Error: ' + ErrorText;
    end;
}