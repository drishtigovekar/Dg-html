<?php
$num=10;
$num1=5;
echo"Arithmetic Operators<br><br>";
$result=$num+$num1;
echo"Addition of 2 numbers is ".$result;
echo"<br>";
$result=$num-$num1;
echo"Subraction of 2 numbers is ".$result;
echo"<br>";
$result=$num*$num1;
echo"Multiplication of 2 numbers is ".$result;
echo"<br>";
$result=$num/$num1;
echo"Division of 2 numbers is ".$result;
echo"<br>";
$result=$num%$num1;
echo"Remainder of 2 numbers is ".$result;
echo"<br><br>";

echo"Relational Operators";
echo"<br><br>";
echo"Value of num is ".$num. "Value of num1 is ".$num1;
echo"<br>";
echo"Value of num is greater than num1".($num>$num1);
echo"<br>";
echo"Value of num is lesser than num1".($num<$num1);
echo"<br>";
echo"Value of num is greater than equal to num1".($num>=$num1);
echo"<br>";
echo"Value of num is lesser than equal to num1".($num<=$num1);
echo"<br><br>";

echo"Assignment Operators<br><br>";
echo"Value of num is ".$num. "Value of num1 is ".$num1;
$num+=$num1;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
$num-=$num1;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
$num*=$num1;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
$num/=$num1;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
$num%=$num1;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
echo"<br><br>";

echo"Unary Operator<br><br>";
echo"Value of num is ".$num. "Value of num1 is ".$num1;
$num=$num1++;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
$num=++$num1;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
$num=$num1--;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
$num=--$num1;
echo"<br>Value of num is ".$num. "Value of num1 is ".$num1;
echo"<br><br>";
 
echo"Logical Operators<br><br>";
$marks=20;
if($marks>=0 && $marks<35)
{
    echo"Fail";
}
if($marks>=35 && $marks<=100)
{
    echo"Pass";
}
if($marks<=0 || $marks>100)
{
    echo"Enter valid marks";
}
if($marks!=0)
{
    echo"<br>Marks not equal to zero";
}
echo"<br><br>";
echo"Ternary Operators<br>";
$num=10;
$num1=5;
$num2=$num>$num1 ?$num:$num1;
echo" Max is". $num2;
?>