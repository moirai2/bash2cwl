string='Hello World'
string2='Goodbye World'
echo $string>file1.txt
echo $string2>file2.txt
cat file1.txt file2.txt | grep "Hello" > hello.txt
cat file1.txt file2.txt | grep "Goodbye" > goodbye.txt
cat hello.txt goodbye.txt | wc > count.txt
