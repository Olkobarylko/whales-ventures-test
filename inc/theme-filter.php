<?php
function my_filter_function()
{
    $category_ids = $_POST['category'];

    $args = array(
        'post_type' => 'post',
        'posts_per_page' => 3,
        'category__in' => $category_ids,
        'post_status' => 'publish',
    );

    $query = new WP_Query($args);

    if ($query->have_posts()) :
        while ($query->have_posts()) : $query->the_post(); ?>
            <a href="<?php the_permalink(); ?>" class="blog__post">
                <div class="blog__post-image">
                    <?php the_post_thumbnail() ?>
                </div>
                <div class="blog__post-info">
                    <div class="blog__post-meta">
                        <p class="blog__post-category">
                            <?= get_the_category()[0]->name ?>
                        </p>
                        <p class="blog__post-time">
                            <?php setlocale(LC_TIME, 'fr_FR.UTF-8', 'fr_FR', 'fr', 'fra', 'french'); ?>
                            <?= get_the_date('j F Y'); ?>
                        </p>
                    </div>
                    <h2 class="blog__post-title">
                        <?php the_title(); ?>
                    </h2>
                    <div class="blog__post-description">
                        <?php the_excerpt(); ?>
                    </div>
                </div>
            </a>
<? endwhile;
    endif;

    die();
}

add_action('wp_ajax_filter', 'my_filter_function');
add_action('wp_ajax_nopriv_filter', 'my_filter_function');
