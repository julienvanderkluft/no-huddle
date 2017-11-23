.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## Install or update Node dependencies
	@echo "Installing Node dependencies..."
	@npm install
	@echo "Done."

build: ## Basic build project.
	@npm run build
	@echo "Take a look in your new build folder !"

dev: ## Basic build project and live watching of files modifications.
	@echo "Starting..."
	@echo "Use 'crtl + c' for stop when watcher is launched."
	@npm run dev

clean: ## Clean build folder and temporary files.
	@echo "Clean build folder and temporary files..."
	@npm run clean
	@echo "Done."

clean-hard: ## Clean build folder and installed dependencies.
	@echo "Clean build folder and installed dependencies..."
	@npm run clean:hard
	@echo "Done."
