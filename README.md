# Digital_Library_Management
The Library Management System is a Java-based web application that enables librarians to efficiently manage library resources. It supports functionalities like adding, updating, deleting, and viewing books, along with a search feature to find books by ID or title. Built with JSP, Servlets, JSTL, and MySQL, and deployed on the Glass Fish Server.
Library Management System
Setup Instructions
Step 1: Prerequisites
Make sure you have the following installed and configured:
Java JDK: Version 8 or higher.
GlassFish Server: Version 5 or higher.
MySQL Database: Installed and running locally or on a server.
MySQL JDBC Driver: Add mysql-connector-java.jar to your project libraries in the IDE.
Step 2: Database Configuration
Create a MySQL database named test.
Run the following SQL command to create the books table:
sql
CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    author VARCHAR(255),
    genre VARCHAR(255),
    status VARCHAR(50)
);
Optionally, insert some sample data for testing:
sql
INSERT INTO books (title, author, genre, status)
VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'Available');
Step 3: Project Setup
Clone or download the project files to your local machine.
Import the project into your preferred IDE as a Java Web Application.
Configure the GlassFish Server in your IDE.
Step 4: Update Database Configuration
Locate the code in your JSP files or Servlets where the database is connected.
Update the JDBC connection details as per your local MySQL setup:
java
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "yourpassword");
Step 5: Build and Deploy the Project
Clean and build the project to generate the .war file.
Deploy the .war file to the GlassFish Server using the admin console or directly from the IDE.
Run Instructions
Start the GlassFish Server.
Open a web browser and navigate to:
http://localhost:8080/LibraryManagementSystem
Workflow:
The application starts at the index.html page.
From index.html, navigate to login.html where the librarian logs in.
After a successful login, the user is directed to details.html, which provides the following options:
Add Book:
Redirects to addbook.jsp, where the librarian can fill out and save book details.
Upon successful addition, the librarian can return to display.jsp to view the updated book list.
View Books:
Redirects to display.jsp, where all book records are displayed.
The user can use the search bar to filter books by ID or title.
On the View Books page (display.jsp), two actions are available:
Update Book:
Clicking "Update" redirects to a page to edit book details, such as the title, author, genre, or status (e.g., Available, Checked Out).
After updating, the changes are saved and reflected in the database.
Delete Book:
Clicking "Delete" triggers a confirmation pop-up.
Upon confirmation, the book record is deleted, and the user can return to display.jsp to view the updated list.
Exit System:
On details.html, there is an "Exit System" button that redirects to logout.jsp.
The logout.jsp page invalidates the user session and provides a message confirming successful logout.
