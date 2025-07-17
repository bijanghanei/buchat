AI-Powered Telegram Chatbot
This project implements an AI-powered Telegram chatbot using Ollama for local language model inference, LangChain for conversational capabilities, and Docker for deployment. The bot responds to user messages with context-aware responses powered by a local LLM (e.g., LLaMA 3).
Features

Responds to text messages and the /start command.
Uses LangChain's ConversationChain with memory to maintain conversation context.
Runs a local Ollama instance for LLM inference.
Deployed using Docker and Docker Compose for easy setup.

Prerequisites

Docker and Docker Compose installed.
A Telegram Bot Token (obtained from BotFather).

Project Structure

telegram_bot.py: Main bot script handling Telegram interactions and LangChain integration.
Dockerfile: Defines the Docker image for the bot.
requirements.txt: Lists Python dependencies.
docker-compose.yml: Orchestrates the bot and Ollama services.

Setup Instructions

Clone the Repository (or create the files manually):
git clone <repository-url>
cd <repository-directory>


Get a Telegram Bot Token:

Open Telegram, search for @BotFather, and send /start.
Send /newbot, follow the prompts to create a bot, and copy the provided token.


Set Up Environment:

Create a .env file in the project root:TELEGRAM_TOKEN=your_bot_token_here


Replace your_bot_token_here with the token from BotFather.


Pull an Ollama Model:

Start the services to initialize the Ollama container:docker-compose up -d


Pull a model (e.g., llama3):docker exec -it <ollama_container_name> ollama pull llama3


Find the <ollama_container_name> with docker ps (e.g., <project_name>_ollama_1).


Run the Bot:

Build and start the services:docker-compose up --build


The bot will connect to Telegram, and the Ollama service will run the LLM.


Interact with the Bot:

Open Telegram, search for your bot by its name, and send /start or any text message.
The bot will respond using the Ollama LLM via LangChain.



Configuration

Ollama Model: The bot uses llama3 by default (set in telegram_bot.py). Change to another model (e.g., mistral) by updating the model parameter in telegram_bot.py and ensuring the model is pulled in Ollama.
Environment Variables:
TELEGRAM_TOKEN: Required for Telegram API access.


Docker Network: The bot and Ollama services communicate over a chatbot-network Docker network. Ollama is accessible at http://ollama:11434 within the network.

Troubleshooting

Bot Not Responding: Check Docker logs with docker-compose logs bot.
Ollama Issues: Verify the Ollama service is running and the model is pulled (docker exec -it <ollama_container_name> ollama list).
Token Errors: Ensure the TELEGRAM_TOKEN is correct in the .env file.
Dependency Issues: Confirm requirements.txt dependencies are compatible. Update versions if needed.

Extending the Bot

Add new commands by extending the CommandHandler in telegram_bot.py.
Customize the LangChain conversation chain (e.g., add custom prompts or tools) in telegram_bot.py.
Modify the Docker setup in docker-compose.yml for additional services or configurations.

License
This project is licensed under the MIT License.