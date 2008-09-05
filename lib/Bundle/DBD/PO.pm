package Bundle::DBD::PO;

use strict;
use warnings;

our $VERSION = '0.07';

1;

__END__

=head1 NAME

Bundle::DBD::PO - A bundle to install all DBD::PO related modules

$Id: PO.pm 53 2008-07-20 12:20:22Z steffenw $

$HeadURL: https://dbd-po.svn.sourceforge.net/svnroot/dbd-po/trunk/DBD-PO/lib/DBD/PO.pm $

=head1 SYNOPSIS

    perl -MCPAN -e 'install Bundle::DBD::PO'

=head1 DESCRIPTION

This bundle includes all the modules
used by the Perl Database Interface (DBI) driver for PO-Files (DBD::PO),
assuming the use of DBI version 1.13 or later, created by Tim Bunce.

If you've not previously used the CPAN module to install any bundles,
you will be interrogated during its setup phase.
But when you've done it once, it remembers what you told it.
You could start running:

    perl -MCPAN -e 'install Bundle::CPAN'

=head1 SEE ALSO

L<Bundle::DBI>

=head1 AUTHOR

Steffen Winkler E<lt>F<STEFFENW at cpan.org>E<gt>

=head1 THANKS

This bundle was created by ripping of Bundle::libnet
created by Graham Barr E<lt>F<gbarr.ti.com>E<gt>,
and radically simplified with some information
from Jochen Wiedemann E<lt>F<joe ar ipsoft.de>E<gt>.
The template was then included in the DBI::DBD documentation
by Jonathan Leffler E<lt>F<jleffler at informix.com>E<gt>.

=cut