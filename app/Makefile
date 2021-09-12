build-pi:
	docker build -t do360now/todo-app-pi:0.0.1 .

start-container:
	docker rm -f todo_app
	docker volume create todo-db
	docker run -v todo-db:/etc/todos --name todo_app -dp 3000:3000 do360now/todo-app-pi:0.0.1
	docker ps
push-image:
	docker push do360now/todo-app-pi:0.0.1

inspect-volume:
	docker volume inspect todo-db

stop:
	docker stop todo_app
	docker ps

persistent:
	docker run --name todo-app -dp 3000:3000 -w /app -v "$(pwd):/app" arm32v7/node sh -c "yarn install && yarn run dev"

logs:
	docker logs -f cbcda

network:
	docker network create todo-app

MySQL:
	docker run -d --network todo-app --network-alias mysql -v todo-mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=todos mysql:5.7

