<?php

function smilies_pass( $message ) {
	static $orig, $repl;

	if ( ! isset( $orig ) ) {
		$orig = $repl = array();
		$sql  = "SELECT * FROM " . SMILIES_TABLE;

		if ( ! $result = dbquery( $sql ) ) {
			message_die(
				GENERAL_ERROR,
				"Couldn't obtain smilies data",
				"",
				__LINE__,
				__FILE__,
				$sql
			);
		}

		$smilies = dbrowset( $result );

		if (count( $smilies ) ) {
			usort( $smilies, 'smiley_sort' );
		}

		for ( $i = 0; $i < count( $smilies ); ++$i ) {
			$orig[] = "/(?<=.\W|\W.|^\W)" . pregquote( $smilies[ $i ]['code'], "/") . "(?=.\W|\W.|\W$)/";
			$repl[] = '<img class="forum-news-smilies" src="modules/Forums/images/smiles/' . $smilies[ $i ]['smile_url'] . '" alt="' . $smilies[$i]['emoticon'] . '" />';
		}
	}

	if ( count( $orig ) ) {
		$message = preg_replace( $orig, $repl, ' ' . $message . ' ' );
		$message = substr( $message, 1, -1 );
	}

	return $message;
}

function smiley_sort( $a, $b ) {
	if ( strlen( $a['code'] ) == strlen( $b['code'] ) ) {
		return 0;
	}

	return ( strlen( $a['code'] ) > strlen( $b['code'] ) ) ? -1 : 1;
}

function pregquote( $str, $delimiter ) {
   $txt      = preg_quote( $str );
   $txt      = str_replace( $delimiter, '\\' . $delimiter, $txt );
   $hometext = $txt;

   return $hometext;
}

function make_clickable( $text ) {
	$ret = ' ' . $text;

	$ret = preg_replace(
		"#([\t\r\n ])([a-z0-9]+?){1}://([\w\-]+\.([\w\-]+\.)*[\w]+(:[0-9]+)?(/[^ \"\n\r\t<]*)?)#i",
		'\1<a href="\2://\3" target="_blank">\2://\3</a>',
		$ret
	);

	$ret = preg_replace(
		"#([\t\r\n ])(www|ftp)\.(([\w\-]+\.)*[\w]+(:[0-9]+)?(/[^ \"\n\r\t<]*)?)#i",
		'\1<a href="http://\2.\3" target="_blank">\2.\3</a>',
		$ret
	);

	$ret = preg_replace(
		"#(^|[\n ])([a-z0-9&\-_.]+?)@([a-z0-9&\-_.]+)\.([a-z]+)#i",
		"\\1<a href=\"javascript:phpbbmail('\\3.\\4','\\2');\">\\2 [at] \\3 [dot] \\4</a>",
		$ret
	);

	$ret = substr( $ret, 1 );

	return $ret;
}
