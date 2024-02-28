.PHONY: build
default:
	docker compose up -d --build && \
	docker compose exec rna npm install && \
	docker compose down || \
	docker-compose up -d --build && \
	docker-compose exec rna npm install && \
	docker-compose down
install:
	docker compose up -d --build && \
	docker compose exec rna npm install && \
	docker compose down || \
	docker-compose up -d --build && \
	docker-compose exec rna npm install && \
	docker-compose down
dev:
	docker compose up -d --build && \
	docker compose exec rna npm run dev || \
	docker-compose up -d --build && \
	docker-compose exec rna npm run dev
build:
	docker compose up -d --build && \
	docker compose exec rna npm run build && \
	docker compose down || \
	docker-compose up -d --build && \
	docker-compose exec rna npm run build && \
	docker-compose down
