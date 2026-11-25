from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    openai_api_key: str
    openai_base_url: str | None = None
    openai_model: str = "deepseek-chat"
    database_url: str = "postgresql://postgres:radar@localhost:5432/radar"
    redis_url: str = "redis://localhost:6379/0"
    hh_query: str = "стажер python"
    hh_area: int = 1
    resume_path: str = "resume.md"
    model_config = {"env_file": ".env"}

settings = Settings()