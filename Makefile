build-images:
	docker buildx bake --print
	docker buildx bake --load

check:
	docker compose run php
