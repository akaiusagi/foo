package Foo;
use Moo;

use Foo::Bar;

our $VERSION = '0.0.1';

has param1 => (is => 'rw', defailt => sub { [] });

1;

__END__

=encoding utf-8

=head1 NAME

Foo - It's new foo

=head1 SYNOPSIS

    use Foo;

=head1 DESCRIPTION

Foo is ...

=head1 LICENSE

Copyright (C) ilya.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ilya E<lt>npbi@mail.ruE<gt>

=cut