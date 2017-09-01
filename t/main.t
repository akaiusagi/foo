#!/usr/bin/perl
use warnings;
use strict;

use FindBin;
use lib "$FindBin::Bin/../lib";

use Test::More;

use Foo; #comment this line to make tests pass
use Foo::Bar;

my $bar = Foo::Bar->new(
	param1 => 1,
	param2 => 2,
);

ok(defined $bar && ref $bar eq 'Foo::Bar', 'object should be created');
ok($bar->param2 == 2, 'Foo::Bar param2 parameter shoud be setted');
ok($bar->param1 == 1, 'Foo inherited param1 parameter shoud be setted');

done_testing();
