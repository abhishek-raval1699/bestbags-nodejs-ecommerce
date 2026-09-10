#!/bin/sh
set -e

# Wait for MongoDB to be ready
echo "Waiting for MongoDB to start..."
sleep 10

# Run seed scripts if database is empty
echo "Seeding database..."
node seedDB/category-seed.js || true
node seedDB/products-seed.js || true

# Start the application
echo "Starting application..."
npm start
