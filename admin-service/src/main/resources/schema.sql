CREATE TABLE IF NOT EXISTS chat_metrics (
    id UUID NOT NULL,
    ai_response TEXT,
    ai_tokens INTEGER,
    created_at TIMESTAMP(6),
    total_tokens INTEGER,
    user_input TEXT,
    user_tokens INTEGER,
    PRIMARY KEY (id)
);