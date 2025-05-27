page 50109 CustOrderDetails
{
    Caption = 'Customer Order Details';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = CustOrderDetailsBuffer;
    SourceTableTemporary = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Customer No."; Rec."Customer No.")
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field("Order Amount"; Rec."Order Amount")
                {
                }
                field("Average Amount"; Rec."Average Amount")
                {
                }

            }
        }
    }

    trigger OnOpenPage()
    var
        CustSalesOrder: Query CustSalesOrder;
    begin
        if not CustSalesOrder.Open() then
            exit;

        while CustSalesOrder.Read() do begin
            Rec.Init();
            Rec."Customer No." := CustSalesOrder.CustomerNo;
            Rec."Customer Name" := CustSalesOrder.CustomerName;
            Rec."Order Amount" := CustSalesOrder.OrderAmount;
            Rec."Average Amount" := CustSalesOrder.OrderAverageAmount;
            Rec.Insert();
        end;

        CustSalesOrder.Close();
    end;
}