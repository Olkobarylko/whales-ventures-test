<?php

/**
 * Enqueue scripts and styles.
 */
function wordpress_project_scripts()
{
    wp_enqueue_style('wordpress-project-styles-rewrite', get_template_directory_uri() . '/style.css', array());
    wp_enqueue_style('wordpress-project-styles', get_template_directory_uri() . '/dist/css/main.css', array('wordpress-project-styles-rewrite'));
    wp_enqueue_script('wordpress-project-scripts', get_template_directory_uri() . '/dist/js/bundle.js', array('jquery'), null, true);
}
add_action('wp_enqueue_scripts', 'wordpress_project_scripts');


function my_enqueue_assets() {
    wp_enqueue_script('ajax-filter', get_template_directory_uri() . '/src/js/ajax.js', array('jquery'), null, true);
    wp_localize_script('ajax-filter', 'ajaxfilter', array('ajaxurl' => admin_url('admin-ajax.php')));
}
add_action('wp_enqueue_scripts', 'my_enqueue_assets');

/**
 * Add svg support
 */
function sr_mime_types($mimes)
{
    // Enqueue theme stylesheet.
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'sr_mime_types');

/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
add_theme_support('post-thumbnails');

if (function_exists('acf_add_options_page')) {
    acf_add_options_page(array(
        'page_title'    => 'Theme options',
        'menu_title'    => 'Theme options',
        'menu_slug'     => 'theme-general-settings',
        'capability'    => 'edit_posts',
        'redirect'      => false
    ));
}
