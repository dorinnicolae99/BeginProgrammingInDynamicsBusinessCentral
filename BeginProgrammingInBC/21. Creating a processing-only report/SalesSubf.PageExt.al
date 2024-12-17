pageextension 50106 "Sales Subf Ext" extends "Sales Order Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field(MarkedLine; Rec."Marked Line")
            {
                ApplicationArea = All;
            }
        }
    }
}