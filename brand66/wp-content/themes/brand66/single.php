<?php get_header(); ?>

<section class="content" data-same-height="blog-info">

	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
		<article>
	        <header>
	            <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
	            <span class="time"><?php the_time('j F Y'); ?></span>
	        </header>
	        <?php the_content(); ?>
	         <div class="social_frame">
	            <div class="twitter_frame">
	                <a href="https://twitter.com/share" class="twitter-share-button">Tweet</a>
	                <script>!function(d,s,id){
	                    var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';
	                        if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';
	                            fjs.parentNode.insertBefore(js,fjs);
	                        }}(document, 'script', 'twitter-wjs');
	                </script>
	            </div>
	            <div class="facebook_frame">
	                <iframe src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;width&amp;layout=button&amp;action=like&amp;show_faces=true&amp;share=true&amp;height=80"
	                        scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:20px;"
	                        allowTransparency="true"></iframe>
	            </div>
	        </div>
    	</article>
	<?php endwhile; ?>
	<!-- post navigation -->
	<?php else: ?>
	<!-- no posts found -->
	<?php endif; ?>
    
</section>

<?php get_sidebar(); ?>

<?php get_footer(); ?>