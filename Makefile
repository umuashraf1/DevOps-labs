build:
	docker build -t devops-hello .
run:
	docker run --rm devops-hello
clean:
	docker rmi devops-hello
