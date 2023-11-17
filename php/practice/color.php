<?php
$arr1=["red"=>"red color","blue"=>"blue color","black"=>"black color","yellow"=>"yellow color","greens"=>"green color","green"=>'43443'];
$i=1;
foreach ($arr1 as $a=> $value) {
    if($a=="green")
{
    echo "$i=$a=$value <br>";
  
}
$i++;  
}

if(isset($arr1['green']) && !empty($arr1['green']))
{
    echo 'IN';
    echo $arr1['green'];
}


