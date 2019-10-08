# CSubsetCompiler

支援功能
---
1.	迴圈與判斷式：if … else, while loop, for loop 
({ }不可省略, 可以有多層迴圈或判斷)
2.	資料型態：int, float 
(任何運算只能同類別進行處理,否則會輸出型態錯誤訊息)
3.	宣告型態：一行只能宣告一個變數,宣告時可同時給初值(ex. int i=0;)
4.	特別的函式：main, printf(參數數量無限制) 
5.	註解：/**/, //
6.	比較運算：==, <, >, <=, >=, !=
7.	++,--：只處理此符號放在前置的情況
8.	數理運算：*, /, %,+, -, <<,>> (此順序即為運算子優先順序)
9.	邏輯運算：&&, ||
10.	特殊字元：{ } [ ] ; \n \r \t 
11.	基本定義：string,十進位數, ID, float, letter, digit, escape
12.	執行方式：只有一個main function


如何編譯與執行
----------------------
1. 將antlr-3.5.2-complete.jar移至目前資料夾位置
2. 將jasmin.jar移至目前資料夾位置
3. 執行指令：make,會產生test1.j test2.j test3.j三個檔案,並按照test1>test2>test3順序直接執行


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


