#!/usr/bin/perl
use strict;
use warnings;

sub search_file {
    my ($filename, $term) = @_;

    open(my $fh, "<", $filename) or die "Cannot open file: $!";

    while (my $line = <$fh>) {
        print $line if $line =~ /$term/;
    }

    close($fh);
}

search_file("test.txt", "hello");

