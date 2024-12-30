#!/bin/bash
# Connect to MySQL and update or insert data
mysql -u root -ppassword -h localhost testdb <<EOF
INSERT INTO test_table (data) VALUES ('Data updated at $(date)');
EOF
