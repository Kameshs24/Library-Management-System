# Library-Management-System
To design and implement a library management system using MySQL, focusing on database design, setting constraints, stored procedures, triggers, and reporting using joins.

# Library Management System

## Overview

The **Library Management System** is a MySQL-based project designed to manage book rentals, member registrations, and overdue penalties. The system includes stored procedures and triggers to handle key operations efficiently.

## Features

- **Member Registration**: Ensures unique email validation before adding a new member.
- **Book Rental System**: Allows members to rent books if available and ensures one book per rental.
- **Book Return & Stock Update**: Updates return date and restores book availability upon return.
- **Penalty Calculation**: Calculates fines for overdue books at Rs. 5 per day.
- **Reports & Queries**:
  - Overdue books report
  - Books never rented
  - Member rental history
  - Penalty report

## Database Schema

### **Tables**

1. **Members**

   - Member\_ID (INT, PRIMARY KEY, AUTO\_INCREMENT)
   - Name (VARCHAR(100))
   - Email (VARCHAR(100), UNIQUE)

2. **Book**

   - Book\_ID (INT, PRIMARY KEY, AUTO\_INCREMENT)
   - Title (VARCHAR(255))
   - Copies\_Available (INT)

3. **Rental**

   - Rental\_ID (INT, PRIMARY KEY, AUTO\_INCREMENT)
   - Member\_ID (INT, FOREIGN KEY REFERENCES Member(MemberID))
   - Book\_ID (INT, FOREIGN KEY REFERENCES Book(BookID))
   - Rental\_Date (DATE)
   - Return\_Date (DATE DEFAULT NULL)

## Stored Procedures

### **1. AddNewMember**

```sql
CALL AddNewMember('user@example.com', 'John Doe');
```

- Adds a new member if the email is unique.

### **2. RentBook**

```sql
CALL RentBook(1, 101);
```

- Checks book availability and assigns a rental if eligible.

### **3. ReturnBook**

```sql
CALL ReturnBook(1, '2024-02-01');
```

- Updates return date and restores book stock.

### **4. GetOverdueBooksReport**

```sql
CALL GetOverdueBooksReport();
```

- Retrieves overdue books and penalty amounts.

### **5. GetUnborrowedBooks**

```sql
CALL GetUnborrowedBooks();
```

- Lists books never rented before.

### **6. GetMemberActivityReport**

```sql
CALL GetMemberActivityReport();
```

- Displays each member’s rental history.

### **7. GetPenaltyChargesReport**

```sql
CALL GetPenaltyChargesReport();
```

- Shows penalty details for overdue/unreturned books.

## Triggers

### **1. after\_book\_return**

- Updates book availability after a return.
- Ensures rental records are correctly updated.

## How to Run

1. **Set up MySQL Database**
2. **Create the tables** using the schema above.
3. **Execute the stored procedures and triggers.**
4. **Run test queries** to verify functionality.

## Future Enhancements

- Implement a **web interface** using React.
- Add **email notifications** for overdue books.
- Develop **admin/member roles** for better access control.


