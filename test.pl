# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}
use Tree::MultiNode;
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

$debug = 0;
$test = 1;

if( $debug ) {
  $Tree::MultiNode::debug = 1;
}

++$test;
my $tree   = new Tree::MultiNode();
my $handle = new Tree::MultiNode::Handle($tree);
if( $tree && $handle ) {
  print "ok ", $test, "\n";
}
else {
  print "not ok ", $test, "\n";
}

++$test;
$handle->add_child("a",1);
$handle->add_child("b",1);
$handle->add_child("c",1);

$handle->remove_child(1);
my %pairs = $handle->kv_pairs();
print "[$0] Pairs: ", join(',',%pairs), "\n" if $debug;
if( !defined($pairs{"b"}) && defined($pairs{"a"}) && defined($pairs{"c"}) ) {
  print "ok ", $test, "\n";
}
else {
  print "not ok ", $test, "\n";
}

