REPORT z_expense_alv.

TYPE-POOLS: slis.

* Structure for expense data
TYPES: BEGIN OF ty_expense,
        emp_id     TYPE string,
        emp_name   TYPE string,
        dept       TYPE string,
        amount     TYPE i,
        date       TYPE sy-datum,
       END OF ty_expense.

DATA: gt_expense TYPE TABLE OF ty_expense,
      gs_expense TYPE ty_expense.

DATA: gt_fieldcat TYPE slis_t_fieldcat_alv,
      gs_fieldcat TYPE slis_fieldcat_alv.

* Selection Screen
PARAMETERS: p_dept TYPE string DEFAULT 'IT'.

START-OF-SELECTION.

* Sample Data
gs_expense-emp_id = 'E101'.
gs_expense-emp_name = 'Rahul'.
gs_expense-dept = 'IT'.
gs_expense-amount = 5000.
gs_expense-date = sy-datum.
APPEND gs_expense TO gt_expense.

gs_expense-emp_id = 'E102'.
gs_expense-emp_name = 'Anita'.
gs_expense-dept = 'HR'.
gs_expense-amount = 7000.
gs_expense-date = sy-datum.
APPEND gs_expense TO gt_expense.

gs_expense-emp_id = 'E103'.
gs_expense-emp_name = 'Raj'.
gs_expense-dept = 'IT'.
gs_expense-amount = 12000.
gs_expense-date = sy-datum.
APPEND gs_expense TO gt_expense.

* Filter by department
DELETE gt_expense WHERE dept <> p_dept.

* Field Catalog
PERFORM build_fieldcat.

* Display ALV
CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    it_fieldcat = gt_fieldcat
  TABLES
    t_outtab    = gt_expense.

*---------------------------------------------------------------------*
FORM build_fieldcat.

  PERFORM add_field USING 'EMP_ID' 'Employee ID'.
  PERFORM add_field USING 'EMP_NAME' 'Employee Name'.
  PERFORM add_field USING 'DEPT' 'Department'.
  PERFORM add_field USING 'AMOUNT' 'Expense Amount'.
  PERFORM add_field USING 'DATE' 'Date'.

ENDFORM.

*---------------------------------------------------------------------*
FORM add_field USING p_field p_text.

  CLEAR gs_fieldcat.
  gs_fieldcat-fieldname = p_field.
  gs_fieldcat-seltext_m = p_text.
  APPEND gs_fieldcat TO gt_fieldcat.

ENDFORM.
