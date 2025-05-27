pageextension 50108 CustCard extends "Customer Card"
{
    actions
    {
        addfirst(processing)
        {
            action(GetAmountInfo)
            {
                ApplicationArea = All;
                Caption = 'Get Sales Order Amount Info';
                Image = NewSum;

                trigger OnAction()
                begin
                    Rec.GetSalesOrderAmount();
                end;
            }
        }
    }
}