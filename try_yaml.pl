
# Try both YAML and YAML::XS

use strict;
use warnings;
use 5.010;

use YAML;
use YAML::XS;
use Data::Dumper qw(Dumper);

my $yml_filename = $ARGV[0] // 'sample.yml';

eval {
	say "--- --- -YAML- --- ---";
	my @documents = YAML::LoadFile( $yml_filename );
	print Dumper @documents;
};
print $@ if $@;

eval {
	say "--- ---YAML::XS--- ---";
	my @documents = YAML::XS::LoadFile( $yml_filename );
	print Dumper @documents;
};
print $@ if $@;

