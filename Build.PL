use strict;
use warnings;

use Module::Build;

Module::Build->new(
    module_name        => 'Bundle::DBD::PO',
    license            => 'perl',
    dist_abstract      => 'Bundle::DBD::PO - A bundle to install all DBD::PO related modules',
    dist_author        => 'Steffen Winkler <steffenw@cpan.org>',
    dist_version_from  => 'lib/Bundle/DBD/PO.pm',
    requires           => {
        DBI       => 0,
        'DBD::PO' => '0.03',
    },
    build_requires => {
        'Test::Simple' => 0, # for Test::More
    },
    create_makefile_pl   => 'traditional',
    recursive_test_files => 1,
    add_to_cleanup       => [ qw(
        META.yml *.bak *.gz Makefile.PL
    ) ],
)->create_build_script();
