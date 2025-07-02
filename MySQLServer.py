#!/usr/bin/python3
import MySQLdb
import sys

try:
    # Connect to MySQL server
    db = MySQLdb.connect(
        host="localhost",       # or your DB host
        user="root",            # replace with your MySQL username
        passwd="your_password"  # replace with your MySQL password
    )

    cursor = db.cursor()

    # Create database if it doesn't exist
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
    print("Database 'alx_book_store' created successfully!")

except MySQLdb.Error as e:
    print(f"Error: Unable to connect or execute query - {e}")
    sys.exit(1)

finally:
    if cursor:
        cursor.close()
    if db:
        db.close()

