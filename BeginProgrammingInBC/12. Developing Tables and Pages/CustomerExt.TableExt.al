tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        field(50100; "Car Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Car.Code;

            trigger OnValidate()
            begin
                Rec.CalcFields("Car Description");
            end;
        }
        field(50101; "Car Description"; Text[100])
        {
            Caption = 'Car Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Car.Description where(Code = field("Car Code")));
        }
    }
}