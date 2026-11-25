CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS vacancies (
    id TEXT PRIMARY KEY,
    title TEXT, employer TEXT, url TEXT,
    salary_from INT, salary_to INT, currency TEXT,
    description TEXT, published_at TIMESTAMPTZ,
    fetched_at TIMESTAMPTZ DEFAULT now(),
    score SMALLINT, verdict TEXT,
    matched_skills JSONB, gaps JSONB, red_flags JSONB, summary TEXT,
    feedback SMALLINT
);

CREATE TABLE IF NOT EXISTS resume_chunks (
    id SERIAL PRIMARY KEY, content TEXT, embedding vector(1536)
);