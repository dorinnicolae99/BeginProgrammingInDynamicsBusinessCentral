codeunit 50120 VendorBkgTsk
{
    trigger OnRun()
    var
        PurchHeader: Record "Purchase Header";
        Results: Dictionary of [Text, Text];
        VendorNo: Text;
    begin
        Evaluate(VendorNo, Page.GetBackgroundParameters().Get(GetBkgParameterName()));

        PurchHeader.SetRange("Document Type", PurchHeader."Document Type"::Order);
        PurchHeader.SetRange("Buy-from Vendor No.", VendorNo);

        Results.Add(GetBkgParameterResultsName(), Format(PurchHeader.Count()));
        Page.SetBackgroundTaskResult(Results);
    end;


    internal procedure GetBkgParameterName(): Text
    begin
        exit('VendorNo');
    end;

    internal procedure GetBkgParameterResultsName(): Text
    begin
        exit('Total');
    end;
}