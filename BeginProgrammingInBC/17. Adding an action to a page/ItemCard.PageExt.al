pageextension 50108 "Item Card Ext" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(CalculateCountingPeriod)
        {
            action(NewAction)
            {
                ApplicationArea = All;
                Caption = 'My New Action';
                Image = NewProperties;

                trigger OnAction()
                begin
                    Message('Hello from the custom action');
                    /*
                    here you can add other code to invoke functions from page, source record, codeunits or run other reports and pages with custom behavior and so on
                    */
                end;
            }
        }
        addfirst(navigation)
        {
            action(ItemSalesLines)
            {
                ApplicationArea = All;
                Caption = 'Item Sales Lines';
                Image = AllLines;
                RunObject = Page "Sales Lines";
                RunPageLink = "No." = field("No."), Type = const(Item);
            }
        }
    }
}