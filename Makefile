.PHONY: dev stop

PORT ?= 8765

dev:
	@echo "→ http://localhost:$(PORT)/"
	@npx --yes live-server --port=$(PORT) --no-browser --watch=index.html &
	@sleep 2 && open http://localhost:$(PORT)/

stop:
	@lsof -ti:$(PORT) | xargs kill 2>/dev/null || true
