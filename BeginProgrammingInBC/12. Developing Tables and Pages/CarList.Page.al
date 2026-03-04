page 50100 "Car List"
{
    Caption = 'Car List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Car;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Code of the car';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description of the car';
                }
            }
        }
    }
}