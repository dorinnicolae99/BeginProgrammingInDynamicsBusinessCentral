// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.ALProject54;

using Microsoft.Sales.Customer;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        ShowMessage('App published: Hello world');
    end;

    local procedure ShowMessage(MessageText: Text[5])
    begin
        Message(MessageText);
    end;
}