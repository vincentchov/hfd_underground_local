<?php
/**
 * The right sidebar containing the main widget area.
 *
 * @package understrap
 */

if ( ! is_active_sidebar( 'right-sidebar' ) ) {
	return;
}

// when both sidebars turned on reduce col size to 3 from 4.
$sidebar_pos = get_theme_mod( 'understrap_sidebar_position' );
?>

<?php if ( 'both' === $sidebar_pos ) : ?>
<div class="col-md-3 widget-area" id="right-sidebar" role="complementary">
<div class="col-md-12" id="right-sidebar">
	<?php else : ?>
<div class="col-md-4 widget-area" id="right-sidebar" role="complementary">
<div class="col-md-12" id="right-sidebar-content">
	<?php endif; ?>
<?php dynamic_sidebar( 'right-sidebar' ); ?>
</div>
</div><!-- #secondary -->
