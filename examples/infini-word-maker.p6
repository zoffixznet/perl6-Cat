use lib <lib ../lib>;

use Cat;

my Cat $cat .= new: { (' ', |('a'..'z')).pick } … *;
.say for $cat.words;
