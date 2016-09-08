IMAGE=visanalyticskit/vakserver_couchbase
TAG=1.5.0
CONTAINER=vak_cb

.PHONY: build

build:
	docker build -t $(IMAGE):$(TAG) --rm .

run:
	docker run --name $(CONTAINER) -d -p 8091-8093:8091-8093 -p 11207:11207 -p 11210-11211:11210-11211 -p 18091-18092:18091-18092 $(NAME):$(TAG)

rebuild:
	docker stop $(CONTAINER) && docker rm $(CONTAINER) && docker rmi $(IMAGE):$(TAG) && \
	$(MAKE) build && $(MAKE) run