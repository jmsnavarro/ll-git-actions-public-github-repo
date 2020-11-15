KEYWORD=FIXED

run: build
	docker run --rm ll-git-actions-public-github-repo $(KEYWORD)

build:
	docker build --tag ll-git-actions-public-github-repo .

test:
	./entrypoint.sh $(KEYWORD)
