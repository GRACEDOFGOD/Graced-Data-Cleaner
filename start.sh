#!/bin/bash

# CleanPro AI Startup Script
echo "🚀 Starting CleanPro AI Application..."

# Kill any existing processes
pkill -f "tsx server/index.ts" 2>/dev/null || true
pkill -f "vite" 2>/dev/null || true

# Start backend server
echo "📊 Starting backend server on port 3001..."
tsx server/index.ts > server.log 2>&1 &
SERVER_PID=$!

# Wait for backend to start
sleep 3

# Test backend
if curl -s http://localhost:3001/api/demo-data > /dev/null; then
  echo "✅ Backend server is running successfully"
else
  echo "❌ Backend server failed to start"
  exit 1
fi

# Start frontend server
echo "🎨 Starting frontend server on port 3000..."
cd client && npx vite --port 3000 --host 0.0.0.0 > ../frontend.log 2>&1 &
FRONTEND_PID=$!
cd ..

# Wait for frontend to start
sleep 5

# Test frontend
if curl -s http://localhost:3000 > /dev/null; then
  echo "✅ Frontend server is running successfully"
else
  echo "❌ Frontend server failed to start"
  exit 1
fi

echo ""
echo "🎉 CleanPro AI is now running!"
echo "🌐 Frontend: http://localhost:3000"
echo "🔧 Backend API: http://localhost:3001/api"
echo ""
echo "📋 Available demo datasets:"
curl -s http://localhost:3001/api/demo-data | grep -o '"name":"[^"]*"' | sed 's/"name":"//g' | sed 's/"//g' | while read name; do
  echo "  - $name"
done
echo ""
echo "💡 To stop the application, run: pkill -f tsx && pkill -f vite"
echo ""

# Keep script running
wait