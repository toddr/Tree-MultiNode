use Tree::MultiNode;

my $tree = new Tree::MultiNode;
my $handle = new Tree::MultiNode::Handle($tree);

$handle->set_key("Record");
$handle->set_value("Person");
$handle->add_child("First Name","Kyle");
$handle->add_child("Middle Name","Richards");
$handle->add_child("Last Name","Burton");

  $handle->add_child("Record","Contact Information");
  $handle->last();
  $handle->down();

    $handle->add_child("Record","Phone Numbers");
    $handle->last();
    $handle->down();
      $handle->add_child("Work Number","215.555.1212");
      $handle->add_child("Home Number","215.555.1234");
    $handle->up();
  
    $handle->add_child("Record","Address Information");
    $handle->last();
    $handle->down();
      $handle->add_child("Work Address","2401 Walnut St.\nPhiladelphia, Pa 19103");
      $handle->add_child("Home Address","123 Some St. Apt F00\nDevon, Pa 19333");
    $handle->up();

  $handle->up();

$handle->top();
&dump_tree($handle);

sub dump_tree
{
  ++$depth;
  my $handle = shift;
  my $lead = ' ' x ($depth*2);
  my($key,$val);

  $key = $handle->get_key();
  $val = $handle->get_value();

  $val =~ s/\n/\\n/g;
  print $lead, "key:   $key\n";
  print $lead, "val:   $val\n";
  print $lead, "depth: $depth\n";
  
  my $i;
  for( $i = 0; $i < scalar($handle->children); ++$i ) {
    $handle->position($i);
    $handle->down();
    &dump_tree($handle);
    $handle->up();
  }
  --$depth;
}



