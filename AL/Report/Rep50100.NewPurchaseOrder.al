report 50100 "New Purchase - Order"
{
    Caption = 'New Purchase - Order';
    dataset
    {
        dataitem("SalesHeader"; "Sales Header")
        {
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
