<?

echo highlight_nicknames('@storm87 сообщил нам вчера о результатах') . "<br>";
echo highlight_nicknames('Я живу в одном доме с @300spartans') . "<br>";
echo highlight_nicknames('Правильный ник: @usernick | неправильный ник: @usernick;') . "<br>";

function highlight_nicknames(string $text) {

	$pattern = "#@[^0-9][a-z]*[0-9]*[;]*(?=\s)#";

	preg_match_all($pattern, $text, $matches);
	
	$nickname = $matches[0];

	if (!empty($nickname[0])) {
		$replacement = array("<b>".$nickname[0]."</b>");
		echo preg_replace($pattern, $replacement[0], $text);
	} else {
		echo $text;
	}

}

