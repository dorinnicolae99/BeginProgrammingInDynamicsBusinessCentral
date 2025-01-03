tableextension 50131 CustomerExt extends Customer
{
    fields
    {
        field(50130; Car; Code[10])
        {
            Caption = 'Customer Car';
            TableRelation = Car.Car;
        }
    }
}