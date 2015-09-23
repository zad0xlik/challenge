#!/usr/bin/perl

use strict;
use warnings;

#create string to store sentence
my $string = 'The quick brown fox jumped over the lazy dog and then the lazy dog cried for about an hour.';

#push each character into array
my @array = ( $string =~ m/./g );

#create hash of arrays to store counts and corresponding characters
my %count;

	#loop through array to store character as keys and counter++ in a hash
	foreach ( @array ) {
		$count{$_}++;
	}

	#loop through hash to print keys and their counts
	foreach (sort keys %count) {
		printf "%-1s %s\n", $_, $count{$_};

	}
