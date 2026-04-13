#!/usr/bin/perl
use strict;
use warnings;

use File::Find;

find(sub {
    print $File::Find::name . "\n" if /\.conf$/;
}, '/');