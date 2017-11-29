run: build
	docker run -d \
	--restart=always \
	-p 127.0.0.1:5017:80 \
	-v /media/servsto/ubuntu:/ubuntu_mirror \
	ubuntu_mirror

build:
	docker build -t ubuntu_mirror .
