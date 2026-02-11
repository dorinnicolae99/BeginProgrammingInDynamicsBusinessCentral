// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.ALProject55;

using Microsoft.Sales.Customer;
using Microsoft.Sales.Setup;
using DefaultPublisher.CustomerTools;

pageextension 50100 CustomerListExt extends "Customer List"
{
    var
        SalesSetup: Record "Sales & Receivables Setup";
        CustMgt: Codeunit "Cust Mgt.";

    trigger OnOpenPage();
    begin
        SalesSetup.Get();
        CustMgt.DoSomeCustomerLogic();
        Message('App published: Hello world');
    end;
}