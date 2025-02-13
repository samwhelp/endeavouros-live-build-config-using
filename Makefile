
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make build'
	@echo
.PHONY: help




prepare:
	@./prepare.sh
.PHONY: prepare




build:
	@./build.sh
.PHONY: build




clean:
	sudo rm -rf /opt/tmp/endeavouros
.PHONY: clean
