pageextension 50100 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Car Code"; Rec."Car Code")
            {
                ApplicationArea = All;
                ToolTip = 'Code of the car associated with the customer';
            }
            field("Car Description"; Rec."Car Description")
            {
                ApplicationArea = All;
                ToolTip = 'Description of the car associated with the customer';
            }
        }
    }
}