echo off
docker run --rm my-apache-server
pause
docker run -d --name my-apache-server -p 8080:80 httpd:2.4
pause
echo Servidor creado
pause

:loop


	docker exec my-apache-server rm -rf /usr/local/apache2/htdocs/web
	echo Ficheros borrados
	pause
	echo Empieza la copia DOCKER %time%
	docker cp C:\Users/migue/Documents/GitHub/web my-apache-server:/usr/local/apache2/htdocs/web
	echo Copia DOCKER completada %time%
	echo --------------------------------------------------------------------------
	docker restart my-apache-server
	pause
	
goto loop