// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.App2;
using Microsoft.Sales.Customer;
using Microsoft.Sales.Setup;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        SalesSetup: Record "Sales & Receivables Setup";
    begin
        if not SalesSetup.Get() then
            exit;

        if SalesSetup."Show HW Message" then
            Message('App published: Hello world');
    end;
}