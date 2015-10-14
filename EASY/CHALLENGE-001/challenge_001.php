<?php

echo "Hello. What is your name?";
$name = chop(fgets(STDIN));
echo "How old are you?";
$age = chop(fgets(STDIN));
echo "What is your Reddit username?";
$reddit = chop(fgets(STDIN));

$text = "Your name is $name, you are $age years old, and your username is $reddit.";

$file = fopen("output_test.txt", "w");
fwrite($file, $text);
fclose($file);

echo $text;