query 50108 CustSalesOrder
{
    QueryType = Normal;

    elements
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.")
            {
            }
            column(CustomerName; Name)
            {
            }
            dataitem(Sales_Header; "Sales Header")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";
                DataItemTableFilter = "Document Type" = const(Order);

                column(OrderAmount; Amount)
                {
                    Method = Sum;
                }
                column(OrderAverageAmount; Amount)
                {
                    Method = Average;
                }
            }
        }
    }
}