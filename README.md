# ABAP Custom ALV Report - Expense Management System

## Project Overview
This is a real-world SAP ABAP development project implementing a **Custom ALV (Advanced List Viewer) Report** for expense management. The report displays employee expenses filtered by department with a professional ALV grid interface.

## Tech Stack
- **Language**: ABAP (Advanced Business Application Programming)
- **SAP Module**: SD/FI (Sales & Distribution / Financial)
- **Frontend**: ALV Grid Display (REUSE_ALV_GRID_DISPLAY)
- **Database**: SAP Internal Tables
- **Platform**: SAP NetWeaver / SAP ERP

## Features
✓ Employee expense data management  
✓ Department-based filtering  
✓ Professional ALV grid display with column headers  
✓ Date tracking for each transaction  
✓ Dynamic field catalog configuration  
✓ Selection screen for user input  

## Problem Statement
Organizations need to track and manage employee expenses effectively. The solution must:
- Display expense records in a professional, searchable format
- Filter expenses by department
- Provide an intuitive UI for finance teams
- Support future enhancements like sorting, export, and calculations

## Solution Highlights
- **ALV Implementation**: Uses SAP's standard REUSE_ALV_GRID_DISPLAY function
- **Modular Design**: Separate FORM routines for field catalog and data building
- **Type-Safe Code**: Uses custom types for data structures
- **Scalable**: Easy to add more fields or filters
- **Best Practices**: Follows SAP ABAP coding standards

## Installation & Deployment
1. Open SAP GUI / SE80 (Object Navigator)
2. Create new Report: **z_expense_alv**
3. Copy code from `src/z_expense_alv.abap`
4. Activate (Ctrl+S, then Ctrl+F3)
5. Execute (F8)

## Usage
1. Run report from SE80 or transaction code
2. Select department from selection screen (Default: 'IT')
3. Click "Execute" to view filtered expense records
4. Use ALV features: Sort, Filter, Export, Print

## Sample Data
- Employee 1: Rahul | IT | ₹5,000
- Employee 2: Anita | HR | ₹7,000
- Employee 3: Raj | IT | ₹12,000

## Future Enhancements
- [ ] Database integration (SELECT from EKPO/VBRK)
- [ ] Additional filters (Date range, Amount range, Employee)
- [ ] Drill-down functionality to detail documents
- [ ] PDF/Excel export capability
- [ ] Summary calculations (Total, Average, Count)
- [ ] Email notification on high expenses
- [ ] Approval workflow integration
- [ ] Audit trail logging

## File Structure
```
ABAP_Expense_ALV_Report/
├── src/
│   └── z_expense_alv.abap       # Main ABAP Report
├── docs/
│   └── TECHNICAL_DOCUMENTATION.md  # Technical details
└── README.md                     # Project overview
```

## Author
Kritika Ghosh 
Roll: 23051024


