-- Nexora Authentication System - Database Schema
-- Execute these SQL queries in your MySQL database to set up the authentication system

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role VARCHAR(20) DEFAULT 'user' COMMENT 'user, admin, moderator',
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_username (username),
    INDEX idx_email (email),
    INDEX idx_active (is_active)
);

-- Insert sample admin user (password: admin123)
-- Note: The password below is hashed using BCrypt with cost 12
INSERT IGNORE INTO users (username, email, password, first_name, last_name, role, is_active)
VALUES (
    'admin',
    'admin@nexora.com',
    '$2a$12$GIq8MDEHzAEh3qPZRgaKdOt7QYFJSj9gZnTgzELNH.xNSg1h9V3JG',
    'Admin',
    'User',
    'admin',
    true
);

-- Insert sample regular user (password: user123)
INSERT IGNORE INTO users (username, email, password, first_name, last_name, role, is_active)
VALUES (
    'testuser',
    'testuser@nexora.com',
    '$2a$12$7HxK8qHkVqVH7T9nH8XtduQnBJJh9RVJPk1H8z3C5e5M1N4q7L5L.',
    'Test',
    'User',
    'user',
    true
);

-- Query to verify users table structure
DESC users;

-- Query to list all active users
SELECT id, username, email, first_name, last_name, role, created_at FROM users WHERE is_active = true;
