codeunit 50130 "Employee Import Mgt."
{
    procedure GetEmployeeData()
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        JSONOb: JsonObject;
        JArray: JsonArray;
        JToken: JsonToken;
        LKeys: List of [JsonToken];
        TextResponse: Text;
    begin
        if client.Get('https://dummy.restapiexample.com/api/v1/employees', Response) then begin
            if Response.HttpStatusCode = 200 then begin
                Response.Content.ReadAs(TextResponse);
                message(TextResponse);

                JSONOb.ReadFrom(TextResponse);
                LKeys := JSONOb.Values;

                foreach JToken in LKeys do begin
                    if JToken.IsValue then
                        Message(JToken.AsValue().AsText());

                    if JToken.IsArray then begin
                        JArray := JToken.AsArray();
                        foreach JToken in JArray do begin
                            if JToken.IsObject then
                                ProcessJSONObj(JToken)
                            else
                                Message(JToken.AsValue().AsText());
                        end;
                    end;
                end;
            end else
                error('The http call failed')
        end;
    end;

    local procedure ProcessJSONObj(JToken: JsonToken)
    var
        JSONOb2: JsonObject;
        JSONToken2: JsonToken;
        JSONKeys: text;
        ObjectKeys: List of [Text];
        EmployeeImport: Record "Employee Import";
    begin
        JSONOb2 := JToken.AsObject();
        ObjectKeys := JSONOb2.Keys;
        foreach JSONKeys in ObjectKeys do begin
            JSONOb2.Get(JSONKeys, JSONToken2);
            if JSONToken2.IsValue then
                case JSONKeys of
                    'id':
                        begin
                            EmployeeImport.Init();
                            EmployeeImport.Insert();
                        end;
                    'employee_name':
                        EmployeeImport."Employee Name" := JSONToken2.AsValue().AsText();
                    'employee_salary':
                        Evaluate(EmployeeImport."Employee Salary", JSONToken2.AsValue().AsText());
                    'employee_age':
                        begin
                            Evaluate(EmployeeImport."Employee Age", JSONToken2.AsValue().AsText());
                            EmployeeImport.Modify();
                        end;
                       
                end;
        end;
    end;
}