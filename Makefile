.PHONY: up down logs clean restart status

# Start the application
up:
	docker-compose up -d

# Stop the application
down:
	docker-compose down

# View logs
logs:
	docker-compose logs -f

# Clean everything
clean:
	docker-compose down -v --remove-orphans
	docker system prune -f

# Restart the application
restart:
	docker-compose restart

# Check status
status:
	docker-compose ps