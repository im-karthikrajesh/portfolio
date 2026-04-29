.PHONY: help run test clean down shell

help:
	@echo "Available targets:"
	@echo "  make run    Start the local portfolio with Docker Compose"
	@echo "  make test   Run a clean Jekyll build inside Docker"
	@echo "  make clean  Remove generated Jekyll files and caches"
	@echo "  make down   Stop the Docker Compose stack"
	@echo "  make shell  Open a shell in the Jekyll container"

run:
	docker compose up --build

test:
	docker compose run --rm --no-deps jekyll sh -lc "bundle install && bundle exec jekyll clean && bundle exec jekyll build"

clean:
	docker compose run --rm --no-deps jekyll sh -lc "rm -rf _site .sass-cache .jekyll-cache .jekyll-metadata vendor .bundle"

down:
	docker compose down

shell:
	docker compose run --rm --no-deps jekyll sh
