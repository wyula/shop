<?php

function buildRandomString($type = 1, $length = 4)
{
    if ($type == 1) {
        $str = join("", range(0, 9));
    } elseif ($type == 2) {
        $str = join("", array_merge(range('a', 'z'), range('A', 'Z')));
    } elseif ($type == 3) {
        $str = join("", array_merge(range('a', 'z'), range('A', 'Z'), range(0, 9)));
    } else {
        exit("参数错误！");
    }
    if ($length > strlen($str)) {
        exit("验证码长度太长！");
    }
    // 生成随机字符串
    $str = str_shuffle($str);
    // 返回指定长度字符串
    return substr($str, 0, $length);
}