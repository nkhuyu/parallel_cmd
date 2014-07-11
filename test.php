<?php
echo $argv[1]. '\n';

$output = 'output'.$argv[1];
// The new person to add to the file
sleep(5);
$person = "John Smith\n";
// Write the contents to the file,
// using the FILE_APPEND flag to append the content to the end of the file
// and the LOCK_EX flag to prevent anyone else writing to the file at the same time
file_put_contents($output, $person, FILE_APPEND | LOCK_EX);
?>

