#!/usr/bin/perl
use warnings;
use strict;

use Text::Soundex;

my $file = '20150522-termcymru.csv';

open my $fh, '<', $file or die "Could not open $file $!.\n";
<$fh>; # headers

while(<$fh>){
    my ($en, $cy) = split /\t+/;
	next unless $cy && $en;
	next unless $cy =~ /^[[:alpha:]]+$/;
	next if $cy eq $en;
	print "$cy,$en\n"
		if soundex_nara($cy) eq soundex_nara($en);
}
