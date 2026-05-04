# Nexora Authentication System - Setup Guide

## Overview
A complete user authentication system has been implemented for the Nexora application with secure password hashing, session management, and access control.

## Changes Made

### 1. **Dependencies Added** (`pom.xml`)
- **BCrypt**: `at.favre.lib:bcrypt:0.10.2` - For secure password hashing
- **MySQL Connector**: `com.mysql:mysql-connector-j:9.1.0` - Already present, verified

### 2. **New Model Classes** (`src/com/projectname/model/`)
- **User.java** - User data model with fields:
  - id, username, email, password
  - firstName, lastName
  - role (user/admin/moderator)
  - isActive, createdAt

### 3. **New DAO Classes** (`src/com/projectname/dao/`)
- **UserDAO.java** - Database operations for users:
  - `register(User)` - Create new user with hashed password
  - `authenticate(username, password)` - Verify credentials
  - `getUserById(userId)` - Retrieve user by ID
  - `usernameExists(username)` - Check username availability
  - `emailExists(email)` - Check email availability
  - `updateUser(User)` - Update user information
  - `deleteUser(userId)` - Soft delete user

### 4. **New Servlet Controllers** (`src/com/projectname/controller/`)
- **LoginServlet.java**
  - Handles user login via POST
  - Validates credentials using UserDAO
  - Creates HTTP session on successful login
  - Redirects to admin/dashboard.jsp or user/dashboard.jsp based on role

- **RegisterServlet.java**
  - Handles user registration via POST
  - Validates all input fields
  - Checks password strength (minimum 6 characters)
  - Validates email format
  - Prevents duplicate usernames/emails
  - Hashes password before storage

- **LogoutServlet.java**
  - Destroys HTTP session
  - Redirects to login page

### 5. **New Filter** (`src/com/projectname/filter/`)
- **AuthenticationFilter.java**
  - Intercepts all requests
  - Checks for valid session and userId
  - Allows public pages: /login, /register, /index, static files
  - Redirects unauthenticated users to /login
  - Protects all other routes automatically

### 6. **New JSP Pages** (`webapp/`)
- **login.jsp**
  - Modern responsive login form
  - Username and password fields
  - Error/success message display
  - Link to registration page
  - Gradient styling

- **register.jsp**
  - Comprehensive registration form
  - Fields: firstName, lastName, username, email, password, confirmPassword
  - Client-side validation
  - Password confirmation check
  - Link to login page
  - Same styling as login page

### 7. **Updated Configuration** (`webapp/WEB-INF/web.xml`)
- Added AuthenticationFilter mapping (catches all routes)
- Added LoginServlet (URL pattern: `/login`)
- Added RegisterServlet (URL pattern: `/register`)
- Added LogoutServlet (URL pattern: `/logout`)
- Existing servlets remain unchanged

### 8. **Database Schema** (`database-schema.sql`)
SQL script to create the `users` table with:
- Proper indexing on username and email
- Timestamp tracking (created_at, updated_at)
- Role-based access (user, admin, moderator)
- Active status for soft deletes
- Sample admin and test user accounts

## Setup Instructions

### 1. **Database Setup**
Execute the SQL script in your MySQL database:

```bash
mysql -u root -p nexora < database-schema.sql
```

Or copy-paste the content of `database-schema.sql` into MySQL Workbench.

### 2. **Maven Build**
Rebuild the project to download new dependencies:

```bash
mvn clean install
```

### 3. **Deploy and Run**
```bash
mvn tomcat7:run
```

The application will start at: `http://localhost:8081/`

## Usage

### User Flow

1. **Registration**
   - Navigate to: `http://localhost:8081/register`
   - Fill in registration form
   - Click "Create Account"
   - Redirected to login page on success

2. **Login**
   - Navigate to: `http://localhost:8081/login`
   - Enter username and password
   - Successful authentication creates session
   - Redirected to user dashboard

3. **Logout**
   - Access via: `http://localhost:8081/logout`
   - Session is destroyed
   - Redirected to login page

### Sample Test Accounts

**Admin Account:**
- Username: `admin`
- Password: `admin123`
- Role: admin

**Regular User:**
- Username: `testuser`
- Password: `user123`
- Role: user

## Session Management

- Session timeout: 30 minutes of inactivity
- Session attributes stored:
  - userId
  - username
  - email
  - firstName
  - lastName
  - role

## Security Features

1. **Password Security**
   - Passwords hashed with BCrypt (cost 12)
   - Never stored in plain text
   - Automatically salted

2. **Access Control**
   - AuthenticationFilter enforces login for protected pages
   - Role-based redirection (admin vs user)
   - Session validation on every request

3. **Input Validation**
   - Username: Required, unique
   - Email: Format validation, unique
   - Password: Minimum 6 characters, must match confirmation
   - All fields trimmed and validated server-side

4. **SQL Injection Protection**
   - Prepared statements used for all database queries
   - No string concatenation in SQL

## Customization

### Change Login Redirect
Edit `LoginServlet.java` lines 45-50 to customize redirect behavior

### Modify Protected Routes
Edit `AuthenticationFilter.java` lines 25-33 to add/remove public pages

### Adjust Session Timeout
Edit `LoginServlet.java` line 44:
```java
session.setMaxInactiveInterval(30 * 60); // Change 30 to desired minutes
```

### Add More User Roles
1. Add to AuthenticationFilter for role checks
2. Update database and redirects accordingly
3. Create role-specific dashboards

## Troubleshooting

**Issue**: "Table 'users' doesn't exist"
- **Solution**: Run the database-schema.sql script

**Issue**: BCrypt dependency not found
- **Solution**: Run `mvn clean install` to download dependencies

**Issue**: Login always fails
- **Solution**: Verify MySQL connection in DBConnection.java

**Issue**: Session not persisting
- **Solution**: Check browser cookie settings, clear cache

## File Structure
```
project/
├── src/com/projectname/
│   ├── controller/
│   │   ├── LoginServlet.java
│   │   ├── RegisterServlet.java
│   │   ├── LogoutServlet.java
│   │   └── [existing servlets]
│   ├── dao/
│   │   ├── UserDAO.java
│   │   └── [existing DAOs]
│   ├── model/
│   │   ├── User.java
│   │   └── [existing models]
│   └── filter/
│       └── AuthenticationFilter.java
├── webapp/
│   ├── login.jsp
│   ├── register.jsp
│   └── WEB-INF/web.xml
├── pom.xml
└── database-schema.sql
```

## Next Steps

1. ✅ Run database setup script
2. ✅ Build project with Maven
3. ✅ Deploy to Tomcat
4. ✅ Test login/register flows
5. Create user dashboards (user/dashboard.jsp, admin/dashboard.jsp)
6. Link existing servlets to authentication system
7. Add role-based checks to existing operations

## Support

For issues or questions about the authentication system, verify:
- Database connectivity
- All new files are in correct packages
- web.xml is properly configured
- pom.xml dependencies are downloaded
