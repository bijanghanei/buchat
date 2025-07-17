# 🤖 AI-Powered Telegram Chatbot

Bring conversational AI to Telegram — right from your local machine! This chatbot leverages **Ollama** for local LLM inference, **LangChain** for context-aware dialogue, and **Docker** for streamlined deployment. Say hello to private, intelligent, real-time conversations powered by models like **LLaMA 3** — all without the cloud.

---

## 🚀 Features

✨ **Conversational Memory** — Uses LangChain's `ConversationChain` for smart, context-aware replies
📨 **Instant Responses** — Reacts to `/start` and regular text messages
🧠 **Local AI Inference** — Powered by Ollama running your favorite LLM (e.g., `llama3`)
🐳 **One-Command Deployment** — Easily spin up the bot using Docker and Docker Compose
🔐 **Secure Setup** — Environment variables keep your Telegram token safe

---

## 📋 Prerequisites

You'll need the following before getting started:

* ✅ [Docker](https://www.docker.com/)
* ✅ [Docker Compose](https://docs.docker.com/compose/)
* ✅ A Telegram bot token from [@BotFather](https://t.me/BotFather)

---

## 📂 Project Structure

| File / Folder        | Description                                      |
| -------------------- | ------------------------------------------------ |
| `telegram_bot.py`    | Main bot logic (Telegram + LangChain)            |
| `Dockerfile`         | Docker image config                              |
| `requirements.txt`   | Python dependencies                              |
| `docker-compose.yml` | Spins up both the bot and Ollama container       |
| `.gitignore`         | Prevents sensitive/temp files from being tracked |
| `.env`               | Stores your environment variables securely       |

---

## 🛠️ Setup Instructions

### 1. Clone the Repo

```bash
git clone https://github.com/bijanghanei/buchat.git
cd buchat
```

### 2. Create a Telegram Bot

1. Open Telegram and message [@BotFather](https://t.me/BotFather)
2. Send `/start` → `/newbot` → Follow the prompts
3. Copy the **bot token**

### 3. Configure Your Environment

Create a `.env` file at the project root with your token:

```
TELEGRAM_BOT_TOKEN=your_bot_token_here
```

### 4. Start the Bot

```bash
docker-compose up -d
```

### 5. Pull a Model in Ollama

```bash
curl -X POST http://localhost:11434/pull \
  -H "Content-Type: application/json" \
  -d '{"name": "llama3"}'
```

---

## 💬 Chat with Your Bot

1. Open Telegram and find your bot
2. Send `/start` or any message
3. Enjoy rich, AI-powered conversations — all running locally! 🎉

---

## ⚙️ Configuration Options

### 🧠 Change the Language Model

The default model is `llama3`. To switch models, update this line in `telegram_bot.py`:

```python
llm = Ollama(model="mistral", base_url="http://ollama:11434")
```

Make sure the model is pulled into your Ollama instance first.

### 🌐 Networking

Bot and Ollama communicate via Docker network:
`http://ollama:11434`

---

## 🔧 Want to Extend It?

* 📎 **Add Commands**: Use `CommandHandler` to implement custom Telegram commands
* 🛠️ **Customize AI**: Tweak LangChain's prompts or chain logic
* 📈 **Scale It Up**: Modify `docker-compose.yml` for more robust setups

---

## 📜 License

This project is open-sourced under the **MIT License** — free to use, modify, and share.
