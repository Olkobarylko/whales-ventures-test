<?php
get_header();
?>

<main class="post">
    <div class="site-container">
        <article class="article">
            <h1 class="article__title">
                <?php the_title() ?>
            </h1>
            <div class="article__image">
                <?php the_post_thumbnail() ?>
            </div>

            <div class="article__content">
                <?php the_content() ?>
            </div>

            <div class="article__comments">
                <?php
                if (comments_open() || get_comments_number()) :
                    comments_template();
                endif;
                ?>
            </div>

        </article>
    </div>
</main>

<?php
get_footer();
?>