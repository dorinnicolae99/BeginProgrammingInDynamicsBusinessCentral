page 50130 "Employee Import List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Employee Import";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.") { }
                field("Employee Name"; Rec."Employee Name") { }
                field("Employee Salary"; Rec."Employee Salary") { }
                field("Employee Age"; Rec."Employee Age") { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetEmployees)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                trigger OnAction();
                var
                    EmplyMgt: Codeunit "Employee Import Mgt.";
                begin
                    EmplyMgt.GetEmployeeData();
                end;
            }
        }
    }
}