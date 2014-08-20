#!/usr/bin/perl

require "services.pl";

use Term::ANSIColor qw(:constants);
use Text::Table;

if($#ARGV != 0) {
	print "Usage: ./bearded-batman.pl [username]\n";
	exit;
}

my $name = $ARGV[0];

my $table = Text::Table->new();

print "fetching data...\n";

while(my ($key, $value) = each %services) {
	if($value->($name)) {
		$table->add($key, RED, "taken", RESET);
	}
	else {
		$table->add($key, GREEN, "available", RESET);
	}
}

print $table;
