# Makefile.PL for Tree::MultiNode
#
# created: Wed Oct 28 09:50:31 EST 1998 Kyle R. Burton
#
#
use ExtUtils::MakeMaker;

@OBJ    = ();
@PREREQ = ();
@FLAGS  = ();

WriteMakefile(
  NAME            => 'Tree::MultiNode',
	# PREREQ_PM       => { },
	# EXE_FILES       => ,
	# OPTIMIZE          => ,
	VERSION_FROM    => 'MultiNode.pm',
	PM              => {
										   'MultiNode.pm' => '$(INST_LIBDIR)/MultiNode.pm'
	                   },
  dist            => { COMPRESS=>'gzip -9f', SUFFIX=>'gz'},
);
