<?php 

if(!function_exists('trim_characters'))
{
	/**
	 * Trims a string of words to a specified number of characters, gracefully stopping at white spaces.
	 * Also strips HTML tags, to prevent breaking in the middle of a tag.
	 *
	 * @param	string $text  The string of words to be trimmed.
	 * @param	int $length  Maximum number of characters; defaults to 45.
	 * @param	string $append  String to append to end, when trimmed; defaults to ellipsis.
	 *
	 * @return	String of words trimmed at specified character length.
	 *
	 * @author c.bavota
	 */
	function trim_characters( $text, $length = 50, $append = '&hellip;' ) {

		$length = (int) $length;
		$text = trim( strip_tags( $text ) );

		if ( strlen( $text ) > $length ) {
			$text = substr( $text, 0, $length + 1 );
			$words = preg_split( "/[\s]|&nbsp;/", $text, -1, PREG_SPLIT_NO_EMPTY );
			preg_match( "/[\s]|&nbsp;/", $text, $lastchar, 0, $length );
			if ( empty( $lastchar ) )
				array_pop( $words );

			$text = implode( ' ', $words ) . $append;
		}

		return $text;
	}
}