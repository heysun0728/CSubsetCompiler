;.source
.class public static myResult
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 100
.limit locals 100
  ldc 36
  istore 1
  ldc 12
  istore 2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n(test3.c)\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 1
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "gcd("
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc ","
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc ")="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  ldc 1
  istore 0
L2:
  iload 1
  iload 2
  irem
  ldc 0
  if_icmpeq L1
  iload 1
  istore 3
  iload 2
  istore 1
  iload 3
  iload 2
  irem
  istore 2
  ldc 1
  iload 0
  iadd
  istore 0
  goto L2
L1:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 2
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 0
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc ", using "
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc " division.\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
return
.end method
