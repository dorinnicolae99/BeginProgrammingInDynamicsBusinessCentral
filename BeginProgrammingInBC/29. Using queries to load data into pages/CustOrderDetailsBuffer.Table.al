table 50109 CustOrderDetailsBuffer
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
        field(2; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
        }
        field(3; "Order Amount"; Decimal)
        {
            Caption = 'Order Amount';
        }
        field(4; "Average Amount"; Decimal)
        {
            Caption = 'Average Amount';
        }

    }

    keys
    {
        key(PK; "Customer No.")
        {
            Clustered = true;
        }
    }

}