colima-start:
	colima start

colima-stop:
	colima stop

build:
	docker build -t colima-docker-example .

.PHONY: build
