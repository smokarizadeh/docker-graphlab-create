NAME := ml/graphlab
CONTAINER_NAME := ipython-notebook

build:
	docker build --rm -t $(NAME) .

run:
	docker run -d -v notebooks:/notebooks --name $(CONTAINER_NAME) -p 8888:8888 $(NAME)

.PHONY: build
