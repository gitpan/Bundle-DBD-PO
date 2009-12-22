use strict;
use warnings;

use Module::Build;

my $is_ppm = eval 'require ActivePerl::PPM::Package';

Module::Build->new(
    module_name        => 'Bundle::DBD::PO',
    license            => 'perl',
    dist_abstract      => 'Bundle::DBD::PO - A bundle to install all DBD::PO related modules',
    dist_author        => 'Steffen Winkler <steffenw at cpan.org>',
    dist_version_from  => 'lib/Bundle/DBD/PO.pm',
    requires           => {
        perl      => 5.006,
        DBI       => 0,
        'DBD::PO' => '2.08',
    },
    build_requires => {
        $is_ppm
        ? (
            'Test::Simple' => 0,
        )
        : (
            Cwd          => 0, # perl dist
            'Test::More' => 0, # dist Test::Simple
        )
    },
    recommends => {
        # build
        'Test::Pod'           => '1.14',
        'Test::Pod::Coverage' => '1.04',
    },
    create_makefile_pl   => 'traditional',
    recursive_test_files => 1,
    add_to_cleanup       => [ qw(
        META.yml *.bak *.gz Makefile.PL
    ) ],
)->create_build_script();