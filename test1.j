;.source
.class public static myResult
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 100
.limit locals 100
  ldc 5
  istore 0
  ldc 10
  istore 1
  ldc 12
  istore 2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n(test1.c)\n給三邊長判斷能不能形成三角形:\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 0
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "a="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 1
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc " b="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc " c="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  iload 0
  iload 2
  if_icmple L2
  iload 2
  istore 3
  iload 0
  istore 2
  iload 3
  istore 0
  goto L1
L2:
L1:
  iload 1
  iload 2
  if_icmple L4
  iload 2
  istore 3
  iload 1
  istore 2
  iload 3
  istore 1
  goto L3
L4:
L3:
  iload 2
  iload 0
  iload 1
  iadd
  if_icmpge L6
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "These 3 sides can form a triangle\n\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  goto L5
L6:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "These 3 sides can't form a triangle\n\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
L5:
return
.end method
