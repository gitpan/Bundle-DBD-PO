use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    module_name        => 'Bundle::DBD::PO',
    license            => 'perl',
    dist_author        => 'Steffen Winkler <steffenw@cpan.org>',
    dist_version_from  => 'lib/Bundle/DBD/PO.pm',
    requires           => {
        DBI       => 0,
        'DBD::PO' => '0.01',
    },
    build_requires => {
        'Test::Simple' => 0, # for Test::More
    },
    create_makefile_pl   => 'traditional',
    recursive_test_files => 1,
    add_to_cleanup       => [
        'META.yml', '*.bak', '*.gz', 'Makefile.PL',
    ],
);

$build->create_build_script();
