report 50100 "Customer Car List"
{
    Caption = 'Customer Car List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    RDLCLayout = 'CustomerCarList.rdlc';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(Customer; Customer)
        {
            CalcFields = "Car Description";

            column(No; Customer."No.")
            {

            }
            column(Name; Customer.Name)
            {

            }
            column(CarCode; Customer."Car Code")
            {

            }
            column(CarDescription; Customer."Car Description")
            {

            }
        }
    }
}