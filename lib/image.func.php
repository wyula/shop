<?php
include_once 'string.func.php';

function buildVreifyCode($width = 80, $height = 20, $type, $length, $poitnum = 0, $linenum = 0)
{
    // 通过gd库产生验证码
    // 创建画布
    $image = imagecreatetruecolor($width, $height);
    // 创建颜色
    $white = imagecolorallocate($image, 255, 255, 255);
    // 绘制矩形图像
    imagefilledrectangle($image, 0, 0, $width, $height, $white);
    
    $str = buildRandomString($type, $length);
    
    $font = array(
        'VLADIMIR.TTF',
        'vrinda.ttf'
    );
    
    for ($i = 0; $i < strlen($str); $i ++) {
        
        $size = rand($height - 10, $height);
        $x = 5 + $i * $size;
        $angle = rand(- 30, 30);
        $y = rand($height - 6, $height - 2);
        $color = imagecolorallocate($image, rand(10, 255), rand(10, 255), rand(10, 255));
        $fontfile = "../fonts/" . $font[rand(0, 1)];
        $text = substr($str, $i, 1);
        imagettftext($image, $size, $angle, $x, $y, $color, $fontfile, $text);
    }
    for ($i = 0; $i <= $poitnum; $i ++) {
        $color = imagecolorallocate($image, rand(80, 255), rand(60, 255), rand(10, 255));
        imagesetpixel($image, rand(0, $width), rand(0, $height), $color);
    }
    for ($i = 0; $i <= $linenum; $i ++) {
        $color = imagecolorallocate($image, rand(80, 255), rand(60, 255), rand(10, 255));
        imageline($image, rand(0, $width), rand(0, $height), rand(0, $width), rand(0, $height), $color);
    }
    header("content-type:image/gif");
    imagegif($image);
    imagedestroy($image);
}