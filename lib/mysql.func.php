<?php

function connect()
{
    $link = mysql_connect(HOST . ':' . PORT, USER, PASSWORD) or die('数据库连接失败！');
}

function dbClose()
{}
