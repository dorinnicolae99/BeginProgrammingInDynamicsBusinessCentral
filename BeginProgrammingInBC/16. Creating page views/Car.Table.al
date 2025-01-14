table 50145 Car
{
    Caption = 'Car';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Car; Code[10])
        {
            Caption = 'Car';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Blocked"; Boolean)
        {
            Caption = 'Blocked';
        }
    }

    keys
    {
        key(PK; Car)
        {
            Clustered = true;
        }
    }

}