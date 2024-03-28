<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <title><?php echo wp_get_document_title(); ?></title>
    <?php wp_head(); ?>
</head>

<body>
    <header class="header">
        <div class="site-container">
            <nav class="header__navigation">
                <?php wp_nav_menu(array(
                    'theme_location' => 'menu',
                    'container' => '',
                )) ?>
            </nav>
        </div>
    </header>