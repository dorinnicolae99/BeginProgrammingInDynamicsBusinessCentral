page 50106 "My New Page"
{
    Caption = 'My New Page';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "My New Table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(ItemNo; Rec."Item No.")
                {
                }
                field(CreatedAt; Rec."Created At")
                {
                }
                field(ChangedAt; Rec."Changed At")
                {
                }
            }
        }
    }
}