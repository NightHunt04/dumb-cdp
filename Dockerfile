# FROM mcr.microsoft.com/playwright/python:v1.50.0-noble
# FROM mcr.microsoft.com/playwright:v1.54.0-jammy
# FROM mcr.microsoft.com/playwright:v1.34.0-jammy

FROM node:18

RUN npm install -g playwright@1.54.0

RUN playwright install

EXPOSE 8000

CMD ["playwright", "run-server", "--port", "8000", "--host", "0.0.0.0", "--path", "/dumb-cdp"]
