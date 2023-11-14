build-images:
	docker compose config
	docker compose build

check:
	docker compose run php
