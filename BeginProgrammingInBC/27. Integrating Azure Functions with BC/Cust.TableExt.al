tableextension 50143 CustExt extends Customer
{
    internal procedure CallAzFnReverseName()
    var
        AzureFnAuth: Codeunit "Azure Functions Authentication";
        Response: Codeunit "Azure Functions Response";
        AzureFunctions: Codeunit "Azure Functions";
        AzureFunAuthInterf: Interface "Azure Functions Authentication";
        DictFn: Dictionary of [Text, Text];
        ResultTxt: Text;
    begin
        AzureFunAuthInterf := AzureFnAuth.CreateCodeAuth('https://dorinnewfnapp.azurewebsites.net/api/reversename', 't0Q7BuR_9_Fj2cK07Pdvw8lQ6gXQRDkgCyqsxxAaLPwHAzFuLfkiAQ==');
        DictFn.Add('name', Rec.Name);
        Response := AzureFunctions.SendGetRequest(AzureFunAuthInterf, DictFn);
        Response.GetResultAsText(ResultTxt);
        Message(ResultTxt);
    end;

}