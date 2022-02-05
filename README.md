স্প্রিং ২০২১ সেমিস্টারের কম্পাইলার ল্যাবের আমরা যেসব কোড করেছিলাম। সেগুলো গুছিয়ে গিটহাবের এই REPOতে সংরক্ষন করা হলো। ল্যাবের প্রয়োজনীয় স্লাইড এই [ফোল্ডারটিতে](https://github.com/Joy-Mojumdar/Compiler-Sessional/tree/main/LAB%20PDF) পাওয়া যাবে।

<h1 align="center">
  <br>
  <a href=""><img src="https://i.imgur.com/HDbxTHc.png" alt="COMPILER SESSIONAL"></a>
  <br>
  Compiler Sessional
  <br>
</h1>

### Contributors

1. [Novojit Das](https://github.com/novojitdas)

2. [Joy Mojumder](https://github.com/Joy-Mojumdar)

### CODES

1.  [A simple lexical analyzer](https://github.com/novojitdas/Compiler-Sessional/tree/main/1)
2.  [A simple lexical analyzer that takes input form a file called "code.c"](https://github.com/novojitdas/Compiler-Sessional/tree/main/2)
3.  [Custom Lab Task - Lexical analyzer for (Numbers ends with Even/binary numbers/vowels/custom range ip/Valid C identifiers.](https://github.com/novojitdas/Compiler-Sessional/tree/main/3)
4.  [Create regular expressions for accepting the following strings:
    ](https://github.com/novojitdas/Compiler-Sessional/tree/main/4)

- Numbers or digits i.e. 123, 999 etc.
- Any string that starts with a capital letter, e.g., And, B04, Call etc.
- Any string that has an operator somewhere in it, e.g., a+b, a++, 2--, \*b/ etc.
- Any double/float numbers, e.g., 23.343, 99.999 etc.
- Any string that starts and ends with a vowel, e.g., apostle, oscillate etc.

5.  [Create a lex program that will count the number of variables, variable types, operators and digits separately.](https://github.com/novojitdas/Compiler-Sessional/tree/main/5)
6.  [Create regular expressions for accepting the following strings:
    ](https://github.com/novojitdas/Compiler-Sessional/tree/main/6)

- Any double number from -12.02 to +5699.93
- Any alphanumeric strings that either starts with or ends with a digit.
- Valid email address
- Valid student IDs from batches 61 – 70 of CSE department.
- Valid C identifier

7.  [i) Find the character which has the highest frequency in a given paragraph that is written in code1.c file
    ii) Create a lexical analyzer that can identify the following verbs and their frequency in a paragraph written in the English language. The paragraph is written in code1.c file](https://github.com/novojitdas/Compiler-Sessional/tree/main/7)
8.  [Creating a Syntax Analyzer: For Addition and Subtraction](https://github.com/novojitdas/Compiler-Sessional/tree/main/8)
9.  [Creating a Syntax Analyzer: For Double Numbers](https://github.com/novojitdas/Compiler-Sessional/tree/main/9)
10. [Creating a Syntax Analyzer: For Integer Numbers](https://github.com/novojitdas/Compiler-Sessional/tree/main/10)
11. [An Advanced Syntax Analyzer with Symbol Table](https://github.com/novojitdas/Compiler-Sessional/tree/main/11)
12. [An Advanced Syntax Analyzer for Custom Syntax - FOR LOOP](https://github.com/novojitdas/Compiler-Sessional/tree/main/12)
13. [Create a Syntax Analyzer that can:](https://github.com/novojitdas/Compiler-Sessional/tree/main/13)

- Is the grammar ambiguous? If yes, then transform the grammar so that correct precedence and associativity is followed.
- Transform the code so that, the operations can be done on double numbers too.

14. [Creating a Syntax Analyzer that Is the grammar ambiguous and sqrt function ](https://github.com/novojitdas/Compiler-Sessional/tree/main/14)
15. [Lab Final](https://github.com/novojitdas/Compiler-Sessional/tree/main/15)
16. [Lab Assignment](https://github.com/novojitdas/Compiler-Sessional/tree/main/16)
17. [Lab Mid](https://github.com/novojitdas/Compiler-Sessional/tree/main/17)

<hr/>

<br>

## Run Instruction

### How to compile and run Lex / Yacc Program ?

- [Windows](#windows)
- [Linux](#linux)

<br>

## Windows

- Installing Softwares:

  - 1 . Download [Flex](http://gnuwin32.sourceforge.net/downlinks/flex.php)

  - 2 . Download [Bison](http://downloads.sourceforge.net/gnuwin32/bison-2.4.1-setup.exe)

  - 3 . Download [DevC++](http://sourceforge.net/projects/dev-cpp/files/Binaries/Dev-C%2B%2B%204.9.9.2/devcpp-4.9.9.2_setup.exe/download?use_mirror=switch)

  - 4 . Install Flex at“C:\GnuWin32“

  - 5 . Install Bison at “C:\GnuWin32“

  - 6 . Install DevC++ at “C:\Dev-Cpp“

  - 7 . Open Environment Variables.

  - 8 . Add “C:\GnuWin32\bin;C:\Dev-Cpp\bin;” to path.

- Compilation & Execution of your Program:

  - 1 . Open Command prompt and switch to your working directory where you have stored your lex file (“.l“) and yacc file (“.y“)

  2 . Let your lex and yacc files be “hello.l” and “hello.y“. Now, follow the preceding steps to compile and run your program.

  - A . For Compiling Lex file only:

    Command:

        flex hello.l

        gcc lex.yy.c

    <br>

  - B . For Compiling Lex & Yacc file both:

    Command:

        flex hello.l

        bison -dy hello.y

        gcc lex.yy.c y.tab.c

    <br>

  - C . For Executing the Program

    Command:

        a.exe

<br>

<br>

## Linux

I have assumed that you have a working **_Ubuntu 12.04 LTS_** version installed on your system and the computer is connected to the network.

- Installing:

  Ubuntu does not come installed with a lex and yacc compiler to do so install it first by:

  - 1 . Opening the terminal and enter this command

        sudo apt-get install flex

  - 2 . Enter your password.

  - 3 . Install Bison by entering this command

        sudo apt-get install bison

  - 4 . Enter your password.

  <br>

  Successfully Lex and Yacc have been installed on your system.

<br>

- Running a Lex and Yacc program

  - 1 . write the lex program in a file and save it as file.l (where file is the name of the file).

  - 2 . open the terminal and navigate to the directory where you have saved the file.l (e.x CD Desktop)

  - 3 . type:

        lex filename.l

  - 4 . Then type:

        cc lex.yy.c -lfl

  - 5 . Then type:

        ./a.out

  Your lex program will be running now.

- compiling lex and yacc together

  - 1 . write lex program in a file file.l and yacc in a file file.y

  - 2 . open the terminal and navigate to the directory where you have saved the files.

  - 3 . Type:

        lex filename.l

  - 4 . Type:

        yacc filename.y

  - 5 . Type:

        cc lex.yy.c y.tab.h -lfl

  - 6 . Type:

        ./a.out

  <br>
  
  The lex and yacc will run successfully now.

If you face any problem, feel free to create an Issue.
