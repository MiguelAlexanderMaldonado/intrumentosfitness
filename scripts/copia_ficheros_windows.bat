:loop

	echo off
	echo Empieza la copia WEB %time%
	echo -------------------------------------------------------------------------
	del "C:\Users\migue\Documents\GitHub\web\*" /S /F /Q
	pause
	xcopy C:\Users\migue\Documents\GitHub\intrumentosfitness C:\Users\migue\Documents\GitHub\web /s /c /k /y
	echo Copia WEB completada %time%
	pause
	
goto loop


