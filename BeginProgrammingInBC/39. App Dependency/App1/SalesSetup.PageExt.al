namespace DefaultPublisher.App1;
using Microsoft.Sales.Setup;

pageextension 50101 SalesSetup extends "Sales & Receivables Setup"
{
    layout
    {
        addfirst(General)
        {
            field("Show HW Message"; Rec."Show HW Message")
            {
                ApplicationArea = All;
            }

        }
    }
}