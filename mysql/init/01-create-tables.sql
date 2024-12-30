-- Create the test_table
CREATE TABLE IF NOT EXISTS test_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data VARCHAR(100),
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert initial data
INSERT INTO test_table (data) VALUES ('Initial Data');

-- Create a dedicated user for Sling Data
CREATE USER IF NOT EXISTS 'sling'@'%' IDENTIFIED BY 'slingpassword';

-- Grant the sling user necessary privileges on the testdb database
GRANT ALL PRIVILEGES ON testdb.* TO 'sling'@'%' WITH GRANT OPTION;

-- Apply the changes
FLUSH PRIVILEGES;
