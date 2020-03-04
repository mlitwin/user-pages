

.PHONY: serve
serve:
	hugo serve -D

.PHONY: deploy
deploy:
	rm -rf ./public/*
	./deploy.sh
