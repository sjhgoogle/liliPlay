#!/bin/bash

# liliPlay Update & Deployment Script

echo "🚀 Starting liliPlay update..."

# 1. Latest code pull from GitHub
echo "📥 Pulling latest code from GitHub..."
git pull origin main

# 2. Install dependencies (Using local vendor/bundle to avoid permission issues)
echo "📦 Installing gems..."
bundle config set --local deployment 'true'
bundle config set --local path 'vendor/bundle'
bundle install

# 3. Precompile assets (Tailwind, etc.)
echo "🎨 Precompiling assets..."
# Use bundle exec to ensure correct rails version from vendor/bundle is used
RAILS_ENV=production bundle exec rails assets:precompile

# 4. Stop existing server on port 43000 (if any)
echo "🛑 Stopping existing server on port 43000..."
PID=$(lsof -t -i:43000)
if [ -n "$PID" ]; then
  kill -9 $PID
  echo "Killed process $PID"
fi

# 5. Start Rails server in production
echo "🌐 Starting Rails server on port 43000..."
RAILS_ENV=production bundle exec rails server -b 0.0.0.0 -p 43000 -d

echo "✅ liliPlay is now updated and running!"
echo "Check logs: tail -f log/production.log"
