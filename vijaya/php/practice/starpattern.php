<?php
for($i=1;$i<=4;$i++)
{
    for($j=1;$j<=$i;$j++)
    {
      echo $j;       
    }
echo "<br>";
}
echo "<br>";

for($a=1;$a<=4;$a++)
{
    for($b=1;$b<=$a;$b++)
    {
      echo $a;       
    }
echo "<br>";
}
echo "<br>";
$s=1;
for($c=1;$c<=4;$c++)
{
    for($d=1;$d<=$c;$d++)
    {
      echo $s;  
      $s++;     
    }
echo "<br>";
}
echo "<br>";
for ($t= 0;$t<= 4;$t++)
{
    for($r=0;$r<=$t;$r++)
    {
        if($r%2== 0)
        {
            echo "0";
        }
        else
        {
            echo "1";
        }
    }
    echo"<br>";
}
?>