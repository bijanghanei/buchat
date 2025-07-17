AI-Powered Telegram Chatbot 🤖


A Telegram chatbot powered by Ollama for local LLM inference, LangChain for conversational AI, and Docker for easy deployment. Engage in context-aware conversations with a local language model like LLaMA 3.

🚀 Features

📩 Responds to text messages and /start command
🧠 Maintains conversation context with LangChain's ConversationChain
🖥️ Runs a local Ollama instance for LLM inference
🐳 Deployed via Docker and Docker Compose
🔒 Securely handles Telegram API tokens via environment variables


📋 Prerequisites

Docker and Docker Compose
A Telegram Bot Token from BotFather


📂 Project Structure



File
Description



telegram_bot.py
Main bot script with Telegram and LangChain integration


Dockerfile
Docker image configuration for the bot


requirements.txt
Python dependencies


docker-compose.yml
Orchestrates bot and Ollama services


.gitignore
Ignores sensitive and temporary files


.env
Stores environment variables (not tracked)



🛠️ Setup Instructions

Clone the Repository:
```bash
git https://github.com/bijanghanei/uchat-.git
cd uchat-
```


Get a Telegram Bot Token:

Open Telegram, search for @BotFather, and send /start.
Use /newbot to create a bot and copy the token.


Set Up Environment:

Create a .env file in the project root:
TELEGRAM_BOT_TOKEN: your_bot_token_here




Pull an Ollama Model:

Start the services to initialize the Ollama container:docker-compose up -d


Pull the llama3 model (or another model):
```bash
curl -X POST http://localhost:11434/pull \
  -H "Content-Type: application/json" \
  -d '{"name": "llama3"}'
```



Chat with the Bot:

Open Telegram, find your bot, and send /start or any message.
Enjoy AI-powered responses! 🎉




⚙️ Configuration

Ollama Model: Defaults to llama3 in telegram_bot.py. Change to another model (e.g., mistral) by updating:
llm = Ollama(model="mistral", base_url="http://ollama:11434")

Ensure the model is pulled in Ollama.

Environment Variables:

TELEGRAM_TOKEN: Required for Telegram API.


Docker Network: Bot and Ollama communicate via chatbot-network at http://ollama:11434.



🔧 Extending the Bot

Add Commands: Extend CommandHandler in telegram_bot.py.
Customize AI: Modify LangChain's ConversationChain for custom prompts or tools.
Scale Deployment: Adjust docker-compose.yml for additional services.


📜 License
This project is licensed under the MIT License.