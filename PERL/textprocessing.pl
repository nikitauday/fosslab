#!/user/bin/perl-w
print "I AM NIKITA UDAY";
print	 	"Whitespaces and tabs don't matter\n";
$a = 10;
print "Variables don't have specifiable datatypes, only Scalars Arrays Hashes\n";
print "a = $a\n";
$a="10";
print "a=$a\n";
print "Escape characters \" \' \$ \\ \n";

@array = (1,2,3,4);
print "Full array : @array\n";
print "Elements one by one : $array[0]      $array[1]      $array[2]      $array[3]\n";

%hash = ('z',21,'w',3);
print "Hash elements printing one by one : $hash{'z'} $hash{'w'}";
$add = 21 + 3;
$sub = 21 - 3;
$mul = 21 * 3;
$div = 21 / 3;
print "\nVarious operations : Addition:$add  Subtraction:$sub Multiplication:$mul  Division:$div\n";

$str = "pqrs"."xyz";
print "Concatenated strings of pqrs, xyz : $str\n";


$multiline = "HELLO
WORLD
HEY";
print "Perl has multiline strings : $multiline \n";

print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";
