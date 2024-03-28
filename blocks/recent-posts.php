<?php

$fields = $args['fields'];

$args = array(
    'posts_per_page' => 3,
    'post_status' => 'publish',
    'order' => 'DESC',
    'orderby' => 'date'
);

$recent_posts = get_posts($args);
?>

<?php if (!empty($fields)) : ?>

    <section class="recent-posts">
        <div class="site-container">

            <?php if (!empty($fields['title'])) : ?>
                <h2 class="recent-posts__title">
                    <?= $fields['title'] ?>
                </h2>
            <?php endif ?>

            <?php if (!empty($fields['text'])) : ?>
                <div class="recent-posts__text">
                    <p><?= $fields['text'] ?></p>
                </div>
            <?php endif ?>

            <?php if (!empty($recent_posts)) : ?>
                <div class="recent-posts__wrapper">

                    <?php foreach ($recent_posts as $post) : setup_postdata($post); ?>

                        <a href="<?php the_permalink(); ?>" class="recent-posts__block">

                            <?php if (has_post_thumbnail($post->ID)) : ?>
                                <div class="recent-posts__block-image">
                                    <?php echo get_the_post_thumbnail($post->ID, 'full'); ?>
                                </div>
                            <?php endif ?>

                            <div class="recent-posts__block-content">

                                <?php
                                $categories = get_the_category($post->ID);
                                if (!empty($categories)) : ?>
                                    <?php $category = $categories[0]; ?>
                                    <div class="recent-posts__block-category">
                                        <p><?php echo $category->name ?></p>
                                    </div>
                                <?php endif ?>

                                <h2 class="recent-posts__block-title">
                                    <?php the_title(); ?>
                                </h2>

                                <?php if (has_excerpt()) : ?>
                                    <div class="recent-posts__block-description">
                                        <?php the_excerpt(); ?>
                                    </div>
                                <?php endif ?>

                            </div>
                        </a>

                    <?php
                    endforeach;
                    wp_reset_postdata();
                    ?>

                </div>
            <?php endif ?>

        </div>
    </section>

<?php endif ?>