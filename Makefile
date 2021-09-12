build-pi:
	docker build -t do360now/todo-app:pi .

start-container:
	docker stop todo_app
	docker rm todo_app
	docker run --name todo_app -dp 3000:3000 do360now/todo-app:pi
	docker ps
	


