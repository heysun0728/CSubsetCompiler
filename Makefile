all: myCompiler.g myCompiler_test.java test1.c test2.c test3.c
	java -cp ./antlr-3.5.2-complete.jar org.antlr.Tool myCompiler.g
	javac -cp ./antlr-3.5.2-complete.jar:. myCompiler_test.java
	java -cp ./antlr-3.5.2-complete.jar:. myCompiler_test test1.c > test1.j
	java -jar jasmin.jar test1.j
	java myResult
	java -cp ./antlr-3.5.2-complete.jar:. myCompiler_test test2.c > test2.j
	java -jar jasmin.jar test2.j
	java myResult
	java -cp ./antlr-3.5.2-complete.jar:. myCompiler_test test3.c > test3.j
	java -jar jasmin.jar test3.j
	java myResult
clean:
	rm -rf *.class *.tokens myCompilerLexer.java myCompilerParser.java
