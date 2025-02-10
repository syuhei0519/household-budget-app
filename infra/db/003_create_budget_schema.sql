------------------------------------------------------------
-- ✅ Budget Service (予算管理)
------------------------------------------------------------
CREATE DATABASE budget_service;
\c budget_service;

CREATE TABLE budgets (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL, -- User Service から取得
    category_id INT NOT NULL, -- Transaction Service から取得
    amount DECIMAL(10,2) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- インデックス
CREATE INDEX idx_budgets_user_id ON budgets(user_id);
CREATE INDEX idx_budgets_category_id ON budgets(category_id);