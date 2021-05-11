build:
	docker build -t hersonpc/python-api .

prod:
	docker build --no-cache -t hersonpc/python-api .
