</div>
<div class="pre_footer">
    <ul>
        <li>
            <a class="in" href="#">In</a>
        </li>
        <li>
            <a class="twitter" href="#">Twitter</a>
        </li>
        <li>
            <a class="email" href="#">Email</a>
        </li>
    </ul>
</div>
<footer class="page_footer">
    <nav class="footer_nav">
        <?php wp_nav_menu(array('theme_location'=>'menu', 'container'=>false)); ?>
    </nav>
    <p class="copyright">
        &copy; <?php the_date('Y '); ?>
        <span><?php echo get_theme_mod('footer_copyright'); ?></span>
    </p>
</footer>
<?php wp_footer(); ?>
</body>
</html>