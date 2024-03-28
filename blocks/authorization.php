<section class="authorization">
    <div class="site-container">
        <h2 class="authorization__title">Authorization</h2>
        <div class="authorization__wrapper">
            <a class="authorization__login" href="<?php echo wp_login_url(get_permalink()); ?>">Log In</a>
            <a class="authorization__signup" href="<?php echo wp_registration_url(); ?>">Sign Up</a>
        </div>
    </div>
</section>