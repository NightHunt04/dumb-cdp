# Use official Node image for minimal Node + Playwright support
FROM mcr.microsoft.com/playwright:node18-jammy

# Set working directory
WORKDIR /app

# Expose the port for Playwright WS server
EXPOSE 8000

# Launch Playwright run-server on container start
CMD ["npx", "playwright", "run-server", "--host", "0.0.0.0", "--port", "8000"]
