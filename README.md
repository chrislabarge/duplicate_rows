# (SpreadSheet) Row Duplicator

This is a simple script I wrote to duplicate some rows for spreadsheets. I just needed a program to quickly make file for mocking purposesa.

## Usage

`ruby duplicate_rows.rb YOUR_SPREADSHEET.xlsx NEW_SPREADSHEET_FILE.xlsx`

The program takes 2 arguments. The first argument is the file path of the initial speadsheet you want to duplicate.  The second argument is the file path of tje resulting file that contains the duplicated data.

`ruby duplicate_rows.rb -l 1000 YOUR_SPREADSHEET.xlsx NEW_SPREADSHEET_FILE.xlsx`

Say you have a giant file and you only want to duplicate 1000 rows.  Set the LIMIT option flag to a number less than the total number of rows in the file.

You can also use the flag format `--limit`

`ruby duplicate_rows.rb -limit 1000 YOUR_SPREADSHEET.xlsx NEW_SPREADSHEET_FILE.xlsx`

