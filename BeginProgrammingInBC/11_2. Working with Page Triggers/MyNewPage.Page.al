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
                    Visible = IsVisible;
                }
            }
        }
    }

    var
        IsVisible: Boolean;

    trigger OnOpenPage()
    begin
        Message('OnOpenPage');
        IsVisible := false;
    end;

    trigger OnAfterGetRecord()
    begin
        Message('OnAfterGetRecord ' + Rec.Code);
    end;

    trigger OnAfterGetCurrRecord()
    begin
        Message('OnAfterGetCurrRecord ' + Rec.Code);
        if Rec.Description = '' then
            Rec.Description := 'sample description';
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if Confirm('Do you want to close the page?', true) then
            exit(true);
        exit(false);
    end;

    trigger OnClosePage()
    begin
        Message('Page was closed');
    end;
}