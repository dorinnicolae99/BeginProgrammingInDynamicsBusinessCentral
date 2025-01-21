page 50109 CarAPI
{
    PageType = API;
    Caption = 'CarAPI';
    APIPublisher = 'Dorin';
    APIGroup = 'MyAPIGroup';
    APIVersion = 'v1.0';
    EntityName = 'Car';
    EntitySetName = 'Cars';
    SourceTable = Car;
    DelayedInsert = true;
    ODataKeyFields = SystemId;
    //InsertAllowed = false;
    //ModifyAllowed
    //DeleteAllowed


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(SysId; Rec.SystemId)
                {
                    Caption = 'SysId';
                }
                field(Car; Rec.Car)
                {
                    Caption = 'Car';
                }
                field(CarDescription; Rec.Description)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}