-- Ensure the 'users' table exists

CREATE TABLE IF NOT EXISTS "users" (
    id UUID PRIMARY KEY,  -- Correct primary key
    user_id UUID UNIQUE NOT NULL,                   -- Business-level ID, not PK
    email VARCHAR(255) UNIQUE NOT NULL,
    encoded_password VARCHAR(255),
    provider VARCHAR(50) NOT NULL,
    provider_user_id VARCHAR(255),
    created_at TIMESTAMP NOT NULL
);

-- Ensure the 'refresh_tokens' table exists
CREATE TABLE IF NOT EXISTS "refresh_tokens" (
    id UUID PRIMARY KEY,
    token TEXT UNIQUE NOT NULL,
    user_id UUID NOT NULL REFERENCES "users"(id),
    issued_at TIMESTAMP NOT NULL,
    expires_at TIMESTAMP NOT NULL
);