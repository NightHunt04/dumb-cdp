FROM mcr.microsoft.com/playwright:v1.54.0-jammy
# FROM mcr.microsoft.com/playwright:v1.34.0-jammy

# Install Playwright browsers
RUN npx playwright install

# Expose port
EXPOSE 8000

# Start server
CMD ["npx", "playwright", "run-server", "--port", "8000"]
