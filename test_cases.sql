-- Test Cases for User Alerts Database

-- Test Case 1: Insert Valid Alert
-- Description: Insert a new user alert with valid data.
INSERT INTO user_alerts (user_id, alert_type, timestamp, alert_status) 
VALUES (1, 'slouching', CURRENT_TIMESTAMP, 'active');

-- Test Case 2: Insert Invalid Alert Type
-- Description: Attempt to insert a user alert with an invalid alert type.
-- This should fail
INSERT INTO user_alerts (user_id, alert_type, timestamp, alert_status) 
VALUES (1, 'invalid_type', CURRENT_TIMESTAMP, 'active');

-- Test Case 3: Insert Alert with Missing User ID
-- Description: Attempt to insert a user alert without a user ID.
-- This should fail
INSERT INTO user_alerts (user_id, alert_type, timestamp, alert_status) 
VALUES (NULL, 'sitting_too_long', CURRENT_TIMESTAMP, 'active');

-- Test Case 4: Query Active Alerts
-- Description: Retrieve all active alerts for a specific user.
SELECT * FROM user_alerts WHERE user_id = 1 AND alert_status = 'active';

-- Test Case 5: Update Alert Status
-- Description: Update the status of an existing alert.
UPDATE user_alerts 
SET alert_status = 'acknowledged' 
WHERE alert_id = 1;


-- Test Cases for User Login Details Database

-- Test Case 1: Insert Valid User Login
-- Description: Insert a new user login with valid data.
INSERT INTO user_logins (username, password_hash, email) 
VALUES ('testuser', 'hashedpassword', 'testuser@example.com');

-- Test Case 2: Insert Duplicate Username
-- Description: Attempt to insert a user login with a duplicate username.
-- This should fail
INSERT INTO user_logins (username, password_hash, email) 
VALUES ('testuser', 'hashedpassword', 'anotheruser@example.com');

-- Test Case 3: Insert Duplicate Email
-- Description: Attempt to insert a user login with a duplicate email.
-- This should fail
INSERT INTO user_logins (username, password_hash, email) 
VALUES ('newuser', 'hashedpassword', 'testuser@example.com');

-- Test Case 4: Query User by Username
-- Description: Retrieve user login details by username.
SELECT * FROM user_logins WHERE username = 'testuser';

-- Test Case 5: Update User Password
-- Description: Update the password for an existing user.
UPDATE user_logins 
SET password_hash = 'newhashedpassword' 
WHERE user_id = 1;
