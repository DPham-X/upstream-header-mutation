run:
	docker-compose up --build -d

stop:
	docker-compose down

restart: stop run
