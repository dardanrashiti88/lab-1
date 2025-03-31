#!/bin/bash

echo "Cleaning up Docker resources..."
docker system prune -af
echo "Cleanup completed!"
