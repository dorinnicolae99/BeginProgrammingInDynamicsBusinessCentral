tableextension 50108 CustomerExt extends Customer
{
    internal procedure GetSalesOrderAmount()
    var
        CustSalesOrder: Query CustSalesOrder;
    begin
        CustSalesOrder.SetRange(CustomerNo, Rec."No.");
        CustSalesOrder.Open();
        while CustSalesOrder.Read() do
            Message(StrSubstNo('The customer %1 %2 has a %3 total amount and a %4 average amount on sales orders.',
            CustSalesOrder.CustomerNo, CustSalesOrder.CustomerName, CustSalesOrder.OrderAmount, CustSalesOrder.OrderAverageAmount));
    end;
}