codeunit 50120 PageBackgroundTask
{
    trigger OnRun()
    begin
        if not Evaluate(pNo, Page.GetBackgroundParameters.Get('Vendor')) then
            Error('There is no Vendor No.');

        Clear(PurchaseOrders);
        PurchaseOrders.SetRange("Buy-from Vendor No.", pNo);
        PurchaseOrders.SetRange("Document Type", PurchaseOrders."Document Type"::Order);
        if PurchaseOrders.FindSet() then
            repeat
                sleep(2000); // Only for testing purpose
                Count := Count + 1;
            Until PurchaseORders.Next() = 0;

        Result.Add('Total', Format(Count));
        Page.SetBackgroundTaskResult(Result);
    end;


    var
        PurchaseOrders: Record "Purchase Header";
        Count: Integer;
        Result: Dictionary of [Text, Text];
        pNo: Text;
}