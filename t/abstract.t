#!/usr/bin/perl
use strict;
use warnings;

use Test::More 'no_plan';

my $class = 'Module::Release';

use_ok( $class );

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Are the subroutines defined?
{
my @subs = qw(
	check_vcs
	vcs_tag
	make_vcs_tag
	);
	
can_ok( $class, @subs );

foreach my $sub ( @subs )
	{
	my $r = eval { $class->$sub(); 1 };
	ok( ! $r, "Abstract $sub dies as it should" );
	}
}
