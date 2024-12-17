table 50130 "Employee Import"
{

    fields
    {
        field(1;"No."; Integer){AutoIncrement = true;}
        field(2;"Employee Name"; Text[50]){   }
        field(3;"Employee Salary"; Decimal){   }
        field(4;"Employee Age"; Integer){   }
    }
    
    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }
    
}