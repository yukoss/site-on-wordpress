<aside class="col_right" data-same-height="blog-info">

    <?php echo do_shortcode(''); ?>

    <?php if(!dynamic_sidebar('sidebar')): ?>
        <section class="info">
            <h3>Brand 66: Exploring Design</h3>
            <p>
                One small step for step for design blogs. Brand66 is on a mission to uncover design trends and examples of
                brilliant thinking, be they in distant lands or closer to home.
            </p>
        </section>
        <div class="subscribe">
            <h3>Subscribe</h3>
            <p>
                Brand66 delivered fresh to your inbox
            </p>
            <form action="#" method="get">
                <div class="form_field">
                    <input type="email" name="email" placeholder="Email address" />
                    <input class="subscribe_submit" type="submit" value="" />
                </div>
            </form>
            <ul class="subscribe_list">
                <li>
                    <a class="rss" href="#">RSS</a>
                </li>
                <li>
                    <a class="sub_in" href="#">In</a>
                </li>
                <li>
                    <a class="sub_twitter" href="#">Twitter</a>
                </li>
            </ul>
        </div>
        <section class="article_list">
            <h3>Recent</h3>
            <ul>
                <li>
                    <a href="#">Wooden performance</a>
                </li>
                <li>
                    <a href="#">Jack Crossing</a>
                </li>
                <li>
                    <a href="#">The world’s hippest sculptures</a>
                </li>
                <li>
                    <a href="#">Pint-sized food trucks</a>
                </li>
                <li>
                    <a href="#">HUSH The Series</a>
                </li>
                <li>
                    <a href="#">Packaging in quarter notes</a>
                </li>
                <li>
                    <a href="#">The other Facetime</a>
                </li>
                <li>
                    <a href="#">Toronto Film Festival poster</a>
                </li>
                <li>
                    <a href="#">Water</a>
                </li>
                <li>
                    <a href="#">Just a Pinch</a>
                </li>
                <li>
                    <a href="#">Neon leaves the pool hall</a>
                </li>
                <li>
                    <a href="#">A novel vase</a>
                </li>
                <li>
                    <a href="#">MRI goes organic</a>
                </li>
                <li>
                    <a href="#">Big Data walks the red carpet</a>
                </li>
                <li>
                    <a href="#">Chromatic Typewriter</a>
                </li>
                <li>
                    <a href="#">Tattoo illusion</a>
                </li>
                <li>
                    <a href="#">Nike window display madness</a>
                </li>
                <li>
                    <a href="#">3 Ways Apple Innovates</a>
                </li>
                <li>
                    <a href="#">H2 oh my</a>
                </li>
                <li>
                    <a href="#">More GIF fun</a>
                </li>
                <li>
                    <a href="#">Pentagram’s romantic side</a>
                </li>
                <li>
                    <a href="#">Skullboard</a>
                </li>
                <li>
                    <a href="#">Gummy luminescence</a>
                </li>
                <li>
                    <a href="#">Minimalist castles</a>
                </li>
                <li>
                    <a href="#">Rocking Knit</a>
                </li>
                <li>
                    <a href="#">Reinventing a not-so-fab logo</a>
                </li>
                <li>
                    <a href="#">Green Automobiles</a>
                </li>
                <li>
                    <a href="#">Moonrise GIF</a>
                </li>
                <li>
                    <a href="#">Electronic shoes</a>
                </li>
                <li>
                    <a href="#">007</a>
                </li>
            </ul>
        </section>
        <div class="search_field">
            <form  action="<?php echo home_url("/"); ?>" method="">
                <label for="search">Search</label>
                <div class="form_field">
                    <input type="search" name="s" id="search" />
                    <input class="search_submit" type="submit" value="" />
                </div>
            </form>
        </div>
    <?php endif; ?>

    <?php the_widget( WP_Widget_Search, $instance, array(
        'before_widget'=> '<div class="search_field">',
        'after_widget' => '</div>',
        ) );
    ?>

</aside>