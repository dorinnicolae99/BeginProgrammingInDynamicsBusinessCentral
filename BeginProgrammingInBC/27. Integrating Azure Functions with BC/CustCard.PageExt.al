// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.ALProject41;

using Microsoft.Sales.Customer;

pageextension 50143 CustomerCardExt extends "Customer Card"
{
    actions
    {
        addlast("F&unctions")
        {
            action(CallAzFn)
            {
                ApplicationArea = All;
                Caption = 'Call Azure Function to reverse name';
                Image = LaunchWeb;
                ToolTip = 'Get reversed customer name';

                trigger OnAction()
                begin
                    Rec.CallAzFnReverseName();
                end;
            }
        }
    }
}