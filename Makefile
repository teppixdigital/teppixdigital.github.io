.PHONY: new-post

# Usage: make new-post title="My Post Title"
new-post:
	@if [ -z "$(title)" ]; then \
		echo "Error: title is required. Usage: make new-post title=\"My Post Title\""; \
		exit 1; \
	fi
	@DATE=$$(date +%Y-%m-%d); \
	YEAR=$$(date +%Y); \
	MONTH=$$(date +%m); \
	DAY=$$(date +%d); \
	SLUG=$$(echo "$(title)" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//;s/-$$//'); \
	FILE="_posts/$$YEAR/$$MONTH/$$DAY/$$DATE-$$SLUG.md"; \
	mkdir -p "_posts/$$YEAR/$$MONTH/$$DAY"; \
	mkdir -p "assets/posts/$$YEAR/$$MONTH/$$DAY/images"; \
	mkdir -p "assets/posts/$$YEAR/$$MONTH/$$DAY/files"; \
	printf -- '---\nlayout: post\ntitle: "%s"\ndate: %s 10:00:00 +0000\n---\n\nWrite your post content here.\n' "$(TITLE)" "$$DATE" > "$$FILE"; \
	echo "Created post: $$FILE"; \
	echo "Media folders: assets/posts/$$YEAR/$$MONTH/$$DAY/{images,files}"
