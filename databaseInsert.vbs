Sub InsertMultipleRecordsIntoMySQL()
    ' Define variables
    Dim conn As Object
    Set conn = CreateObject("ADODB.Connection")
    Dim strSQL As String
    Dim lastRow As Long
    Dim i As Long
    
    ' Read values from Excel cells
    Dim serverName As String
    serverName = Worksheets("Sheet1").Range("A1").Value ' Change "Sheet1" to your actual worksheet name
    
    Dim dbName As String
    dbName = Worksheets("Sheet1").Range("A2").Value
    
    Dim userName As String
    userName = Worksheets("Sheet1").Range("A3").Value
    
    Dim password As String
    password = Worksheets("Sheet1").Range("A4").Value
    
    Dim tableName As String
    tableName = Worksheets("Sheet1").Range("A5").Value
    
    ' Construct the connection string
    Dim connectionString As String
    connectionString = "DRIVER={MySQL ODBC 8.0 Unicode Driver};SERVER=" & serverName & ";DATABASE=" & dbName & ";USER=" & userName & ";PASSWORD=" & password & ";OPTION=3;"
    
    ' Open the database connection
    conn.Open connectionString
    
    ' Find the last row with data in the Excel sheet (assuming data starts in row 2)
    lastRow = Worksheets("Sheet1").Cells(Worksheets("Sheet1").Rows.Count, "A").End(xlUp).Row
    
    ' Loop through the rows and insert data into the MySQL database
    For i = 2 To lastRow ' Start from row 2 assuming row 1 is for headers
        ' Read values from Excel cells for each record
        Dim value1 As String
        value1 = Worksheets("Sheet1").Cells(i, 1).Value ' Change column index as needed
        
        Dim value2 As String
        value2 = Worksheets("Sheet1").Cells(i, 2).Value ' Change column index as needed
        
        Dim value3 As String
        value3 = Worksheets("Sheet1").Cells(i, 3).Value ' Change column index as needed
        
        ' Construct the SQL insert statement
        strSQL = "INSERT INTO " & tableName & " (Column1, Column2, Column3) VALUES ('" & value1 & "', '" & value2 & "', '" & value3 & "');"
        
        ' Execute the SQL statement for this record
        conn.Execute strSQL
    Next i
    
    ' Close the database connection
    conn.Close
    
    ' Clean up
    Set conn = Nothing
    
    ' Notify the user
    MsgBox "Data inserted into MySQL database for " & (lastRow - 1) & " records!"
End Sub
