------------------------------------------------------------
-- ✅ Report Service (レポート管理)
------------------------------------------------------------
CREATE DATABASE report_service;
\c report_service;

CREATE TABLE reports (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL, -- User Service から取得
    report_month DATE NOT NULL,
    total_income DECIMAL(10,2) DEFAULT 0.00,
    total_expense DECIMAL(10,2) DEFAULT 0.00,
    savings DECIMAL(10,2) DEFAULT 0.00,
    file_path TEXT, -- レポートファイルの保存パス
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- インデックス
CREATE INDEX idx_reports_user_id ON reports(user_id);