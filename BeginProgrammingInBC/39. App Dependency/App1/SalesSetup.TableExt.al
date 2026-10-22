
namespace DefaultPublisher.App1;
using Microsoft.Sales.Setup;

tableextension 50101 SalesSetup extends "Sales & Receivables Setup"
{
    fields
    {
        field(50101; "Show HW Message"; Boolean)
        {
            Caption = 'Show HW Message';
            DataClassification = ToBeClassified;
        }
    }
}
