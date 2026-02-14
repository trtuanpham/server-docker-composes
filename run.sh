#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}Select service:${NC}"
echo ""
echo "1) MongoDB"
echo "2) Redis"
echo ""
read -p "Choose [1-2]: " choice

case $choice in
    1)
        echo -e "${YELLOW}Starting MongoDB...${NC}"
        docker-compose -f docker-compose-mongodb.yml up -d
        echo -e "${GREEN}✓ MongoDB running on port 27017${NC}"
        ;;
    2)
        echo -e "${YELLOW}Starting Redis...${NC}"
        docker-compose -f docker-compose-redis.yml up -d
        echo -e "${GREEN}✓ Redis running on port 6379${NC}"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
