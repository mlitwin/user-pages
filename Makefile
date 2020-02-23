

.PHONY: serve
serve:
	hugo serve -D

.PHONY: deploy
deploy:
	./deploy.sh
