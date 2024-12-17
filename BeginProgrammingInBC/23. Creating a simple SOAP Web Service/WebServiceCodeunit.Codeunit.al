codeunit 50102 CheckCustomerWS
{
    procedure CallCustomerWS(CustNo: Text[50]) ReturnValue: Text[50]
    var
        Customer: Record Customer;
    begin
        if Customer.GET(CustNo) then
            ReturnValue := StrSubstNo('Customer %1 has the name %2', CustNo, Customer.Name)
        else
            ReturnValue := StrSubstNo('The customer %1 does not exist in our database', CustNo);
    end;
}