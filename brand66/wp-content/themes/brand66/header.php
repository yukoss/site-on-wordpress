<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title><?php bloginfo('name'); wp_title(); ?></title>
    <?php wp_head(); ?>
</head>
<body>
<div class="header_bg">
    <header class="page_header">
        <nav class="nav">
        	<?php wp_nav_menu(array('theme_location'=>'menu', 'container'=>false)); ?>
        </nav>
    </header>
    <a class="logo" href="#">Brand 66</a>
</div>
<div class="wrapper_content">