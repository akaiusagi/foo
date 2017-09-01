#!/usr/bin/perl
use warnings;
use strict;

use FindBin;
use lib "$FindBin::Bin/../lib";

use Test::More;

use Foo; #comment this line to make tests pass
use Foo::Bar; #or change this line with prev

my $bar = Foo::Bar->new(
	param1 => 1, #param from Foo package
	param2 => 2, #param from Foo::Bar package
);

ok(defined $bar && ref $bar eq 'Foo::Bar', 'object should be created');
ok(defined $bar->param2 && $bar->param2 == 2, 'Foo::Bar param2 parameter shoud be setted');

#this test will fail
ok(defined $bar->param1 && $bar->param1 == 1, 'Foo inherited param1 parameter shoud be setted');

done_testing();
