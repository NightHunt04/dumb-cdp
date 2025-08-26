# FROM mcr.microsoft.com/playwright/python:v1.50.0-noble
# FROM mcr.microsoft.com/playwright:v1.54.0-jammy
# FROM mcr.microsoft.com/playwright:v1.34.0-jammy

FROM node:18

# RUN apt-get update && apt-get install -y \
#   libnspr4 \
#   libnss3 \
#   libdbus-1-3 \
#   libatk1.0-0 \
#   libatk-bridge2.0-0 \
#   libcups2 \
#   libxkbcommon0 \
#   libatspi2.0-0 \
#   libxcomposite1 \
#   libxdamage1 \
#   libxfixes3 \
#   libxrandr2 \
#   libgbm1 \
#   libasound2 \
#   && apt-get clean && rm -rf /var/lib/apt/lists/*


RUN npm install -g playwright@1.54.0

RUN npx playwright install --with-deps chromium

EXPOSE 8000

CMD ["playwright", "run-server", "--port", "8000", "--host", "0.0.0.0", "--path", "/dumb-cdp"]
