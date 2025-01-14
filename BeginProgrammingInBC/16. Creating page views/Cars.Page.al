page 50130 Cars
{
    Caption = 'Cars';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Car;

    layout
    {
        area(Content)
        {
            repeater(repeater1)
            {
                field(Car; Rec.Car)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car code';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car description';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    views
    {
        view(ActiveCars)
        {
            Caption = 'Active Cars';
            Filters = where(Blocked = const(false));
        }
        view(BlockedCars)
        {
            Caption = 'Blocked Cars';
            Filters = where(Blocked = const(true));
        }
    }
}