#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${YELLOW}Select service:${NC}"
echo ""
echo "1) Start MongoDB"
echo "2) Start Redis"
echo "3) Stop MongoDB"
echo "4) Stop Redis"
echo "5) Status"
echo ""
read -p "Choose [1-5]: " choice

case $choice in
    1)
        echo -e "${YELLOW}Starting MongoDB...${NC}"
        docker compose -f docker-compose-mongodb.yml up -d
        echo -e "${GREEN}✓ MongoDB running${NC}"
        ;;
    2)
        echo -e "${YELLOW}Starting Redis...${NC}"
        docker compose -f docker-compose-redis.yml up -d
        echo -e "${GREEN}✓ Redis running${NC}"
        ;;
    3)
        docker compose -f docker-compose-mongodb.yml down
        echo -e "${RED}MongoDB stopped${NC}"
        ;;
    4)
        docker compose -f docker-compose-redis.yml down
        echo -e "${RED}Redis stopped${NC}"
        ;;
    5)
        docker ps
        ;;
    *)
        echo -e "${RED}Invalid choice${NC}"
        ;;
esac
