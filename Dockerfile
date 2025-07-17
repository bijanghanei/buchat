FROM python:3.11-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY bot/ ./bot

ENV TELEGRAM_BOT_TOKEN=your_token_here

CMD ["python", "bot/telegram_bot.py"]
