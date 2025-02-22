<?php
$marks=64;
if($marks>=35)
{
    echo"Pass";
}
else{
    echo"Fail";
}
echo"<br><br>";

echo"Multilevel decision making<br><br>";
if($marks>=0 && $marks<35)
{
    echo"Fail";
}
else if($marks>=50 && $marks<60)
{
    echo"Pass";
}
else if($marks>=60 && $marks<75)
{
    echo"First Class";
}
else if($marks>=75 && $marks<100)
{
    echo"Distinction";
}
else{
    echo"Enter valid marks";
}
?>