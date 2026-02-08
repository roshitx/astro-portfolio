#!/bin/bash

# Start portfolio website on Tailscale network
# Access via: http://100.65.183.16:3000 (or your Tailscale IP)

cd /home/roshit/project

# Build first if dist doesn't exist or source changed
if [ ! -d "dist" ] || [ "src" -nt "dist" ]; then
    echo "Building portfolio..."
    npm run build
fi

# Start server on all interfaces (so Tailscale can route to it)
echo "Starting portfolio server on http://0.0.0.0:3000"
echo "Access via Tailscale: http://100.65.183.16:3000"
serve dist -l 3000 --single
