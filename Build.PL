use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Tree::MultiNode',
    author              => 'Kyle R. Burton <krburton@cpan.org>'
    dist_version_from   => 'lib/Tree/MultiNode.pm',
    abstract_from       => 'lib/Tree/MultiNode.pm',
    license             => 'perl',
    build_requires      => {
	'Test::More'    => '0.40', 
	'Module::Build' => '0.3603',
    },
    add_to_cleanup      => ['Tree-MultiNode-*' ],
    create_makefile_pl  => 'traditional',
);

$builder->create_build_script;
