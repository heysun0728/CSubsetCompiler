;.source
.class public static myResult
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 100
.limit locals 100
  ldc 0
  istore 2
  ldc 1
  istore 0
L2:
  iload 0
  ldc 10
  if_icmpgt L1
  iload 2
  iload 0
  iadd
  istore 2
  ldc 1
  iload 0
  iadd
  istore 0
  goto L2
L1:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n(test2.c)\n1+2+3+..+10="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  ldc 2
  istore 1
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 1
  ldc 2
  ldc 100
  ldc 1
  isub
  imul
  iadd
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "j=2 => j+2*(100-1)="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "兩層while迴圈測試:\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  ldc 0
  istore 0
L4:
  iload 0
  ldc 1
  if_icmpgt L3
  ldc 0
  istore 1
L6:
  iload 1
  ldc 1
  if_icmpgt L5
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 0
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 1
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc " "
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  ldc 1
  iload 1
  iadd
  istore 1
  goto L6
L5:
  ldc 1
  iload 0
  iadd
  istore 0
  goto L4
L3:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "兩層for迴圈測試:\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  ldc 0
  istore 0
L8:
  iload 0
  ldc 1
  if_icmpgt L7
  ldc 0
  istore 1
L10:
  iload 1
  ldc 1
  if_icmpgt L9
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 0
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 1
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc " "
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  ldc 1
  iload 1
  iadd
  istore 1
  goto L10
L9:
  ldc 1
  iload 0
  iadd
  istore 0
  goto L8
L7:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  ldc 1
  istore 0
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload 0
  ldc 2
  ldc 2
  imul
  imul
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "1<<2="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(I)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  ldc 1.5
  fstore 3
  ldc 2.5
  fstore 4
  getstatic java/lang/System/out Ljava/io/PrintStream;
  fload 3
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "f1="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(F)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  fload 4
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc " f2="
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  invokevirtual java/io/PrintStream/print(F)V
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  fload 4
  fload 3
  fcmpl
  ifle L12
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "f2>f1\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  fload 3
  ldc 1.2
  fcmpl
  ifge L14
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "f1<1.2\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
  goto L13
L14:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "f1>1.2\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
L13:
  goto L11
L12:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  ldc "f2<f1\n"
  invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
L11:
return
.end method
