
use strict;
use warnings;
use 5.010;

use YAML::XS;
use Data::Dumper qw(Dumper);

my @documents = YAML::XS::LoadFile( $ARGV[0] // 'sample.yml' );
print Dumper @documents;

