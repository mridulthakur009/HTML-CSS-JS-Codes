<?php
$arr1 = [0, 1, 2, 3, 4, 5, 6];
$arr2 = ["red", "white", "yellow", "green", "blue", "black", "brown"];
echo "array 1";
echo"<br>";
echo"<br>";
print_r($arr1);
echo"<br>";
echo"<br>";
echo "array 2";
echo"<br>";
echo"<br>";
print_r($arr2);
echo"<br>";
echo"<br>";
$output = array_combine($arr1, $arr2);
echo "array after combining";
echo"<br>";
echo"<br>";
print_r($output);
echo "<br>";
echo "<br>";
for ($j = 0; $j < count($output); $j++)
{
    if ($j % 2 == 0) 
    {
         $even[$j] = $output[$j];
       
    }
     else 
    {
        $odd[$j] = $output[$j];
    }
}
echo "even values with keys";
echo "<br>";
echo "<br>";
 print_r($even);
echo "<br>";
echo "<br>";
echo "odd values with keys";
echo "<br>";
echo "<br>";
print_r($odd);
echo "<br>";
echo "<br>";
?>