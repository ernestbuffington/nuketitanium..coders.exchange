<?php

defined( 'NUKE_EVO' ) || exit;

/**
 * Forum News Pagination
 *
 * @since 1.0.0
 *
 * Display the pagination links if the set variable of allowed news is over set amount.
 *
 * @param string       $text          Text to be truncated.
 * @param string       $ending        Optional. Text ellipsis.
 * @param string       $exact         Optional. If the words shouldn't be cut in the middle.
 * @param string       $considerHtml  Optional
 * @return string      Truncated text string.
 */
function truncateHtml( $text, $ending = '', $exact = false, $considerHtml = true ) {
	$length = FORUM_NEWS_POST_LENGTH;

	if ( $considerHtml ) {
		// if the plain text is shorter than the maximum length, return the whole text
		if ( strlen( preg_replace( '/<.*?>/', '', $text ) ) <= $length ) {
			return $text;
		}

		// splits all html-tags to scanable lines
		preg_match_all( '/(<.+?>)?([^<>]*)/s', $text, $lines, PREG_SET_ORDER );
		$total_length = strlen( $ending );
		$open_tags    = array();
		$truncate     = '';
		foreach ( $lines as $line_matchings ) {
			// if there is any html-tag in this line, handle it and add it (uncounted) to the output
			if ( ! empty( $line_matchings[1] ) ) {
				// if it's an "empty element" with or without xhtml-conform closing slash
				if ( preg_match( '/^<(\s*.+?\/\s*|\s*(img|br|input|hr|area|base|basefont|col|frame|isindex|link|meta|param)(\s.+?)?)>$/is', $line_matchings[1] ) ) {
					// do nothing
				// if tag is a closing tag
				} elseif ( preg_match('/^<\s*\/([^\s]+?)\s*>$/s', $line_matchings[1], $tag_matchings ) ) {
					// delete tag from $open_tags list
					$pos = array_search( $tag_matchings[1], $open_tags );
					if ( false !== $pos ) {
					unset( $open_tags[ $pos ] );
					}
				// if tag is an opening tag
				} elseif ( preg_match( '/^<\s*([^\s>!]+).*?>$/s', $line_matchings[1], $tag_matchings ) ) {
					// add tag to the beginning of $open_tags list
					array_unshift( $open_tags, strtolower( $tag_matchings[1] ) );
				}
				// add html-tag to $truncate'd text
				$truncate .= $line_matchings[1];
			}

			// calculate the length of the plain text part of the line; handle entities as one character
			$content_length = strlen( preg_replace('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|[0-9a-f]{1,6};/i', ' ', $line_matchings[2] ) );
			if ( $total_length + $content_length > $length ) {
				// the number of characters which are left
				$left            = $length - $total_length;
				$entities_length = 0;
				// search for html entities
				if ( preg_match_all( '/&[0-9a-z]{2,8};|&#[0-9]{1,7};|[0-9a-f]{1,6};/i', $line_matchings[2], $entities, PREG_OFFSET_CAPTURE ) ) {
					// calculate the real length of all entities in the legal range
					foreach ( $entities[0] as $entity ) {
						if ( $entity[1] + 1 - $entities_length <= $left ) {
							--$left;
							$entities_length += strlen( $entity[0] );
						} else {
							// no more characters left
							break;
						}
					}
				}

				$truncate .= substr( $line_matchings[2], 0, $left + $entities_length );
				// maximum lenght is reached, so get off the loop
				break;
			} else {
				$truncate .= $line_matchings[2];
				$total_length += $content_length;
			}
			// if the maximum length is reached, get off the loop
			if ( $total_length >= $length ) {
				break;
			}
		}
	} else {
		if ( strlen( $text ) <= $length ) {
			return $text;
		} else {
			$truncate = substr( $text, 0, $length - strlen( $ending ) );
		}
	}

	// if the words shouldn't be cut in the middle...
	if ( ! $exact ) {
		// ...search the last occurance of a space...
		$spacepos = strrpos( $truncate, ' ' );
		if ( isset( $spacepos ) ) {
			// ...and cut the text in this position
			$truncate = substr( $truncate, 0, $spacepos );
		}
	}

	// add the defined ending to the text
	$truncate .= $ending;
	if ( $considerHtml ) {
		// close all unclosed html-tags
		foreach ( $open_tags as $tag ) {
			$truncate .= '</' . $tag . '>';
		}
	}
	return $truncate;
}

/**
 * Forum News Pagination
 *
 * @since 1.0.0
 *
 * Display the pagination links if the set variable of allowed news is over set amount.
 *
 * @param string       $reload     URL to be navigated to.
 * @param string       $page       Current page number.
 * @param string       $tpages     Total amount of pages.
 * @return void
 */
function paginate( $reload, $page, $tpages ) {
	$prevlabel = "Prev";
	$nextlabel = "Next";

	$adjacents = FORUM_NEWS_ADJACENTS;

	// Check where we are and change the query symbol accordingly.
	if ( defined( 'HOME_FILE' ) ) {
		$query    = '?';
	} else {
		$query    = '&';
	}

	$out = '<div class="forum-news-pagination">';

	// previous
	if ( $page == 1 ) {
		$out.= '<span class="forum-news-pagination-label is-disabled">' . $prevlabel . '</span>';
	} elseif ( $page == 2 ) {
		$out .= '<a href="' . $reload . '">' . $prevlabel . '</a>';
	} else {
		$out .= '<a href="' . $reload . $query . 'page=' . ( $page - 1 ) . '">' . $prevlabel . '</a>';
	}

	// first
	if ( $page > ( $adjacents + 1 ) ) {
		$out .= '<a href="' . $reload . '">1</a>';
	}

	// interval
	if ( $page > ( $adjacents + 2 ) ) {
		$out .= '...';
	}

	// pages
	$pmin = ( $page > $adjacents) ? ( $page - $adjacents ) : 1;
	$pmax = ( $page < ( $tpages - $adjacents ) ) ? ( $page + $adjacents ) : $tpages;

	for ( $i = $pmin; $i <= $pmax; ++$i ) {
		if ( $i == $page ) {
			$out .= '<span class="current">' . $i . '</span>';
		} elseif( $i == 1 ) {
			$out .= '<a href="' . $reload . '">' . $i . '</a>';
		} else {
			$out .= '<a href="' . $reload . $query . 'page=' . $i . '">' . $i . '</a>';
		}
	}

	// interval
	if ( $page < ( $tpages - $adjacents - 1 ) ) {
		$out .= '...';
	}

	// last
	if ( $page < ( $tpages - $adjacents ) ) {
		$out .= '<a href="' . $reload . $query . 'page=' . $tpages . '">' . $tpages . '</a>';
	}

	// next
	if ( $page < $tpages ) {
		$out .= '<a href="' . $reload . $query . 'page=' . ( $page + 1 ) . '">' . $nextlabel . '</a>';
	} else {
		$out .= '<span class="forum-news-pagination-label is-disabled">' . $nextlabel . '</span>';
	}

	$out .= '</div>';

	if ( $tpages >= 2 ) {
		return $out;
	}
	return;
}

/**
 * Pagination template
 *
 * @since 2.1.1
 *
 * Display the pagination links, helps to keep our code D.R.Y.
 *
 * @param string $total_pages  Total number of pages.
 * @return void
 */
function paginate_template( $total_pages ) {
	if ( $total_pages >= 2 ) {
		OpenTable();
		$page   = get_query_var( 'page', 'get', 'int', 1 );

		if ( defined( 'HOME_FILE' ) ) {
			$reload = 'index.php';
		} else {
			$reload = 'modules.php?name=Forum_News';
		}

		// call pagination function.
		echo paginate( $reload, $page, $total_pages );
		CloseTable();
	}
}

if ( ! function_exists( 'forum_news_article' ) ) {
	/**
	 * Forum news article
	 *
	 * @since 2.1.1
	 *
	 * Display the forum news article.
	 *
	 * @param array $args  Arguments passed from the news article.
	 * @return void
	 */
	function forum_news_article( $args ) {
		opentable();
		?>
		<div class="forum-news-container">
			<h3 class="forum-news-article-title">
				<?php
				if ( 0 != $args['icon'] ) { ?>
					<img class="forum-news-icon" src="modules/Forums/images/icon/icon<?php echo $args['icon']; ?>.png" />
				<?php
				}
				?>
				<a href="modules.php?name=Forums&file=viewtopic&t=<?php echo $args['id']; ?>"><?php echo $args['title']; ?></a>
			</h3>
			<hr>
			<p class="posttext">
				<?php echo $args['article']; ?>
				<?php
				if ( $args['article_length'] > FORUM_NEWS_POST_LENGTH ) {
					?>
					<a class="forum-news-read-more" href="modules.php?name=Forums&file=viewtopic&t=<?php echo $args['id']; ?>">Read more...</a>
					<?php
				}
				?>
			</p>
			<hr>
			<span style="float:right">
				Posted by
				<a href="modules.php?name=Profile&mode=viewprofile&u=<?php echo $args['author_id']; ?>">
					<?php echo UsernameColor( $args['author_username'] ); ?>
				</a>
				<?php echo $args['time']; ?>
				<a href="modules.php?name=Forums&file=viewtopic&t=<?php echo $args['id']; ?>">Comments [<?php echo $args['comments']; ?>]</a>
			</span>
		</div>
		<?php
		closetable();
	}
}
