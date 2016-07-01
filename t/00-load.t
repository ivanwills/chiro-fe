#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

BEGIN {
    use_ok( 'Chiro' );
}

diag( "Testing Chiro $Chiro::VERSION, Perl $], $^X" );
done_testing();
