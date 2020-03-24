# test_functional-testing_robot-framework
Proyecto de estudio y practica de robot framework (Pruebas funcionales)

## Para ejecutar por linea de comandos

En la ruta del proyecto

robot -t MyFirstTestCaseLog test/Log.robot


## Etiquetas 

robot -t --settag=tagname MyFirstTestCaseLog test/log.robot

robot --include smoke test/log.robot

robot -i sanity -i smoke test/log.robot

## COMMAND LINE

robot -t testname TestSuiteName

robot -t testname1 -t testname2 TestSuiteName

