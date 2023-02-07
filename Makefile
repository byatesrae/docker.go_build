.PHONY: help
help: ## Display this help text
	@grep -hE '^[A-Za-z0-9_ \-]*?:.*##.*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: test_build
test_build: ## Builds image as test/go_build, just to validate it builds, the rm's it
	@./test_build.sh