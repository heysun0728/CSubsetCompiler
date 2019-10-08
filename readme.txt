----------------------
檔案內容
----------------------
myCompiler.g
myCompiler_test.java
readme.txt
test1.c
test2.c
test3.c
test1.j
test2.j
test3.j
makefile
project4.docx

----------------------
如何編譯與執行
----------------------
1. 將antlr-3.5.2-complete.jar移至目前資料夾位置
2. 將jasmin.jar移至目前資料夾位置
3. 執行指令：make,會產生test1.j test2.j test3.j三個檔案,並按照test1>test2>test3順序直接執行

----------------------
編譯與執行後將會產生的檔案
----------------------
myCompilerLexer.class
myCompilerLexer.java
myCompilerParser.class
myCompilerParser.java
myCompiler.tokens
myCompiler_test.class
test1.j
test2.j
test3.j

----------------------
Makefile內容
-----------------------
1.  編譯 myCompiler.g => 產生
    myCompilerLexer.class
    myCompilerLexer.java
    myCompilerParser.class
    myCompilerParser.java
    myCompiler.tokens
	java -cp ./antlr-3.5.2-complete.jar org.antlr.Tool myCompiler.g
2.  編譯 myCompiler_test.java => 產生myCompiler_test.class
	javac -cp ./antlr-3.5.2-complete.jar:. myCompiler_test.java
3.  對test1c.產生jasmin assembly code => 產生test1.j
    java -cp ./antlr-3.5.2-complete.jar:. myCompiler_test test1.c > test1.j
4.  對test2.c,test3.c執行皆如上述

------------------------
myCompiler.g特別內容
-------------------------
word檔內容中被熒光筆標注之處
＊ 實做了while loop迴圈,並且可以多層迴圈 
＊ 宣告同時可以給予初值
＊ 實做++ -- >> <<運算
* printf參數數量無限制
