start:
	@docker compose up -d --build

connect:
	@docker start $(container)
	@docker exec -it $(container) /bin/bash