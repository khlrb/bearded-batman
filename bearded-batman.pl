#!/usr/bin/perl

require "services.pl";


if($#ARGV != 0) {
	print "Usage: ./bearded-batman.pl [username]\n";
	exit;
}

my $name = $ARGV[0];

while(my ($key, $value) = each %services) {
	print "$key: ";

	if($value->($name)) {
		print "taken\n";
	}
	else {
		print "available\n";
	}
}
