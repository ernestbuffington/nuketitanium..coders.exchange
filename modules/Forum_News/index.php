<?php
/**
 * Forum News
 *
 * News module which pulls news articles from the forums.
 *
 * @author    Noto       clan-themes.com
 * @author    Lonestar   lonestar-modules.com
 * @copyright ? - 2023 lonestar-modules.com
 * @version   2.1.0
 */

defined( 'MODULE_FILE' ) || exit;

define( 'FORUM_NEWS_MODULE_NAME', basename( __DIR__ ) );
define( 'FORUM_NEWS_POST_LENGTH', 210 );
// define( 'FORUM_NEWS_SOCIAL_BUTTONS', false );
define( 'FORUM_NEWS_ADJACENTS', 3 );
define( 'FORUM_NEWS_PER_PAGE', 2 );
define( 'FORUM_NEWS_PAGINATION_LOCATION', 'bottom' );
define( 'FORUM_NEWS_DOMAIN', trailingslashit( $GLOBALS['nukeurl'] ) );
define( 'FORUM_NEWS_DATE_FORMAT', 'F d, Y' );

get_lang( FORUM_NEWS_MODULE_NAME );

// CONFIG
$forum_ids = array( 1, 2 );
$forum_ids = implode( ', ', $forum_ids );

add_css_to_head( 'modules/' . FORUM_NEWS_MODULE_NAME . '/style.css' );

include_once NUKE_BASE_DIR . 'header.php';

require NUKE_MODULES_DIR . FORUM_NEWS_MODULE_NAME . DIRECTORY_SEPARATOR . 'evo_bbcode.php';
require NUKE_MODULES_DIR . FORUM_NEWS_MODULE_NAME . DIRECTORY_SEPARATOR . 'functions.php';

// Number of results per page
$currentPage = get_query_var( 'page', 'get', 'int', 1 );

// Total results
$total_topic_count = dbunumrows( "SELECT topic_id FROM " . $prefix . "_bbtopics WHERE forum_id IN ($forum_ids)" );

// Round up total pages from total results
$total_pages = ceil( $total_topic_count / FORUM_NEWS_PER_PAGE );

// Limit
$limitQ = 'LIMIT ' . ( $currentPage - 1 ) * FORUM_NEWS_PER_PAGE . ', ' . FORUM_NEWS_PER_PAGE;

// Pagination top location display.
if ( ( 'top' == FORUM_NEWS_PAGINATION_LOCATION ) || ( 'both' == FORUM_NEWS_PAGINATION_LOCATION ) ) {
	paginate_template( $total_pages );
}

$result = dbquery( "SELECT bbt.forum_id, bbt.topic_id, bbt.topic_title, bbt.topic_replies, bbt.topic_poster,
	bbt.topic_icon, bbt.topic_time, bbt.topic_first_post_id, bbp.post_text, bbp.bbcode_uid FROM
	`" . TOPICS_TABLE . "` as bbt, " . POSTS_TEXT_TABLE . " as bbp WHERE bbt.topic_first_post_id = bbp.post_id AND bbt.forum_id IN ($forum_ids) ORDER BY topic_id DESC $limitQ" );

while( $row = dbrow( $result ) ) {
	$post_text     = $row['post_text'];
	$post_text     = str_replace( ':' . $row['bbcode_uid'], '', $post_text );
	$post_text     = decode_bbcode( set_smilies( stripslashes( $post_text ) ), 1, true );
	$post_text     = truncateHtml( $post_text );
	$post_length   = (int) strlen( $row['post_text'] );
	$topic_id      = (int) $row['topic_id'];
	$topic_title   = smilies_pass( $row['topic_title'] );
	$topic_replies = (int) $row['topic_replies'];
	$topic_time    = $row['topic_time'];
	$time          = $date = date( FORUM_NEWS_DATE_FORMAT, $topic_time );
	$poster_id     = $row['topic_poster'];
	$topic_icon    = (int) $row['topic_icon'];

	// Get the author's information.
	$author_username      = get_user_field( 'username', $poster_id );
	$author_user_color_gc = get_user_field( 'user_color_gc', $poster_id );

	$args = array(
		'id'              => $topic_id,
		'title'           => $topic_title,
		'icon'            => $topic_icon,
		'article'         => $post_text,
		'article_length'  => $post_length,
		'author_id'       => $poster_id,
		'author_username' => $author_username,
		'comments'        => $topic_replies,
		'time'            => $time
	);

	forum_news_article( $args );
}

// Pagination bottom location display.
if ( ( 'bottom' == FORUM_NEWS_PAGINATION_LOCATION ) || ( 'both' == FORUM_NEWS_PAGINATION_LOCATION ) ) {
	paginate_template( $total_pages );
}

include_once NUKE_BASE_DIR . 'footer.php';
