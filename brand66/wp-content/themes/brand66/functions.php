<?php

/**
* Load scripts and style
*/

	function load_script() {
		wp_enqueue_style('hover', get_template_directory_uri() . '/css/hover-min.css');
		wp_enqueue_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css');
		wp_enqueue_style('style', get_stylesheet_uri() );
		wp_enqueue_script('jquery', get_template_directory_uri() . '/js/lib/jquery-2.1.3.min.js', array(), false, true);
		wp_enqueue_script('main', get_template_directory_uri() . '/js/main.js', array(), false, true);
	}
	add_action('wp_enqueue_scripts', 'load_script');

/**
* Register navigation menu
*/
	
	register_nav_menu('menu', 'Menu');

/**
* Widget zone
*/

	register_sidebar(array(
		'name' => __('Widgets', 'brand66'),
		'id' => 'sidebar',
		'description' => 'Widgets of sidebar',
		'before_widget' => '<section class="article_list">',
		'after_widget' => '</section>',
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	) );

/**
* Add thumbnails
*/

	add_theme_support('post-thumbnails', array('post', 'movie'));

/**
* Register custom post type 
*/

	add_action("init", "news");

	function news(){
	    register_post_type('news', array(
	        'public' => true,
	        'supports' => array('title', 'thumbnail', 'editor', 'page-attributes', 'custom-fields'),
	        'labels' => array(
	        	'name' => __('News', 'brand66'),
	         	'add_new' => __('Add news', 'brand66'),
	         	),
	        'menu_icon' => 'dashicons-align-right',
	    ));
	}

/******************************Theme customize**********************************/
	
	function brand_customize_register($wp_customize) {

   		$wp_customize->add_setting('header_color' , array(
    		'default'     => '',
    		'transport'   => 'refresh',
		));

   		$wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'link_color', array(
			'label'      => __('Header Color', 'brand66'),
			'section'    => 'nav',
			'settings'   => 'header_color',
		)));


   		/**
   		* Change of background image in header
   		*/
		$wp_customize->add_setting('change_bg_image', array(
			'default' 	=> 'http://localhost/brand66/wp-content/uploads/2015/04/header_bg.jpg',
			'transport' => 'refresh',
		));

		$wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'logo', array(
               'label'      => __('Upload new logo', 'brand66'),
               'section'    => 'title_tagline',
               'settings'   => 'change_bg_image',
        )));

		/**
		*	Change to text of copyright
		*/

		$wp_customize->add_section('text_copyright', array(
			'title'    => __('Change to text of copyright', 'brand66'),
			'priority' => 30,
		));

		$wp_customize->add_setting('footer_copyright', array(
			'default'   => 'Rylander Design',
			'transport' => 'postMessage',
		));

		$wp_customize->add_control('footer_copyright', array(
			'section'  => 'text_copyright',
			'label'    => __('Copyright', 'brand66'),
			'type'     => 'text'
		));

		/**
		* Change of background color
		*/

		$wp_customize->add_section('background_color', array(
			'title'    => __('Change of background', 'brand66'),
			'priority' => 30,
		));

		$wp_customize->add_setting('color_site', array(
			'default'   => '#ffffff',
			'transport' => 'postMessage',
		));

		$wp_customize->add_control(new WP_Customize_Color_Control( $wp_customize, 'color_site', array(
			'label'    => __('Background', 'brand66'),
			'section'  => 'background_color',
			'setting'  => 'color_site',
		)));

		/**
		* Change of background color sidebar
		*/

		$wp_customize->add_setting('color_sidebar', array(
			'default'   => '#f6f6f6',
			'transport' => 'postMessage',
		));

		$wp_customize->add_control(new WP_Customize_Color_Control( $wp_customize, 'color_sidebar', array(
			'label'    => __('Background sidebar', 'brand66'),
			'section'  => 'background_color',
			'setting'  => 'color_sidebar',
		)));

		/**
		* Change of background color pre-footer
		*/

		$wp_customize->add_setting('color_prefooter', array(
			'default'   => '#00a2f2',
			'transport' => 'postMessage',
		));

		$wp_customize->add_control(new WP_Customize_Color_Control( $wp_customize, 'color_prefooter', array(
			'label'    => __('Background pre-footer', 'brand66'),
			'section'  => 'background_color',
			'setting'  => 'color_prefooter',
		)));
		
		/**
		* Change of background color footer
		*/

		$wp_customize->add_setting('color_footer', array(
			'default'   => '#018dd2',
			'transport' => 'postMessage',
		));

		$wp_customize->add_control(new WP_Customize_Color_Control( $wp_customize, 'color_footer', array(
			'label'    => __('Background footer', 'brand66'),
			'section'  => 'background_color',
			'setting'  => 'color_footer',
		)));


	}

	add_action('customize_register', 'brand_customize_register');

	/**
	* 
	*/

	function brand_customize_css() {
		?> 
			<style type="text/css">
				body { background-color: <?php echo get_theme_mod('color_site'); ?>; }
				.header_bg { background: url(<?php echo get_theme_mod('change_bg_image'); ?>) no-repeat 50% 50%;
                             background-size: cover;
                             margin: auto;
                             max-width: 100%;
                             max-height: 100%;
                             width: auto;
                             height: 365px;}
            	.page_header .nav a { color:<?php echo get_theme_mod('header_color'); ?>; }
            	.col_right { background-color: <?php echo get_theme_mod('color_sidebar'); ?>; }
            	.pre_footer { background-color: <?php echo get_theme_mod('color_prefooter'); ?>; }
            	.page_footer { background-color: <?php echo get_theme_mod('color_footer'); ?>; }
         	</style>
        <?php 
	}
	add_action('wp_head', 'brand_customize_css');

	function brand_customizer_live_preview() {
		wp_enqueue_script('brand-themecustomizer', get_template_directory_uri().'/js/theme-customizer.js',
			  array('jquery','customize-preview'),
			  '',
			  true
		);
	}
	add_action('customize_preview_init', 'brand_customizer_live_preview');

	

	function brand66_setup() {
		load_theme_textdomain('brand66', get_template_directory_uri() . '/languages');
	}
	add_action('after_setup_theme', 'brand66_setup');