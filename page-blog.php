<?php
/* Template Name: Blog */
?>

<?php $args = array(
    'post_type' => 'post',
    'posts_per_page' => 3,
    'post_status' => 'publish',
    'paged' => $paged,
);

$the_query = new WP_Query($args); ?>

<?php get_header(); ?>

<main>
    <section class="blog">
        <div class="site-container">
            <?php $cat_args = [
                'exclude' => [1],
                'option_all' => 'All'
            ];

            $categories = get_categories($cat_args); ?>

            <div class="blog__filter">
                <?php
                foreach ($categories as $cat) : ?>
                    <label class="blog__filter-item" for="category_<?= $cat->term_id ?>"><?= $cat->name ?>
                        <input id="category_<?= $cat->term_id ?>" type="checkbox" name="category[]" value="<?= $cat->term_id ?>">
                    </label>
                <?php endforeach; ?>
            </div>


            <div class="blog__wrapper">
                <?php foreach ($the_query->posts as $post) : setup_postdata($post); ?>
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
                <?php endforeach ?>
                <?php wp_reset_postdata(); ?>
            </div>
        </div>
    </section>
</main>

<?php
get_footer();
