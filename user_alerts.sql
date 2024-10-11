CREATE TABLE user_alerts (
    alert_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT NOT NULL,
    alert_type VARCHAR(20) NOT NULL CHECK (alert_type IN ('slouching', 'sitting_too_long')),
    timestamp DATETIME NOT NULL,
    alert_status VARCHAR(20) NOT NULL CHECK (alert_status IN ('active', 'acknowledged')),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);