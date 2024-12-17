report 50104 CustomerListWord
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = 'CustomerListWord.docx';

    dataset
    {
        dataitem(CustomerDataItem; Customer)
        {
            column(CustomerName; Name) { }
            column(CustomerLocation; "Location Code") { }
            column(CustomerBalance; Balance) { }
        }
    }

}