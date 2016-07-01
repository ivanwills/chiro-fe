package Chiro::Schema::Result::Activity;

# Created on: 2016-01-18 13:46:01
# Create by:  Ivan Wills
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use strict;
use warnings;
use version;
use Moose;
use MooseX::NonMoose;
use utf8;
extends 'DBIx::Class::Core';

our $VERSION = version->new('0.0.1');

__PACKAGE__->table('activity');

__PACKAGE__->add_columns(
    activity_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
        is_nullable       => 0,
        sequence          => 'groups_id_seq',
    },
    activity => {
        data_type   => 'varchar',
        is_nullable => 0,
        size        => 1024,
    },
    created => {
        data_type     => 'timestamp with time zone',
        default_value => \'current_timestamp',
        is_nullable   => 0,
        original      => {
            default_value => \'now()'
        },
    },
    modified => {
        data_type     => 'timestamp with time zone',
        default_value => \'current_timestamp',
        is_nullable   => 0,
        original      => {
            default_value => \'now()'
        },
    },
);

__PACKAGE__->set_primary_key('activity_id');

__PACKAGE__->add_unique_constraint(
    group_name => ['activity']
);

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Chiro::Schema::Result::Activity - <One-line description of module's purpose>

=head1 VERSION

This documentation refers to Chiro::Schema::Result::Activity version 0.0.1


=head1 SYNOPSIS

   use Chiro::Schema::Result::Activity;

   # Brief but working code example(s) here showing the most common usage(s)
   # This section will be as far as many users bother reading, so make it as
   # educational and exemplary as possible.


=head1 DESCRIPTION

A full description of the module and its features.

May include numerous subsections (i.e., =head2, =head3, etc.).


=head2 TABLE: C<data>

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 1024

=head2 created

  data_type: 'timestamp with time zone'
  default_value: current_timestamp
  is_nullable: 0
  original: {default_value => \'now()'}

=head2 modified

  data_type: 'timestamp with time zone'
  default_value: current_timestamp
  is_nullable: 0
  original: {default_value => \'now()'}

=head1 SUBROUTINES/METHODS

A separate section listing the public components of the module's interface.

These normally consist of either subroutines that may be exported, or methods
that may be called on objects belonging to the classes that the module
provides.

Name the section accordingly.

In an object-oriented module, this section should begin with a sentence (of the
form 'An object of this class represents ...') to give the reader a high-level
context to help them understand the methods that are subsequently described.


=head3 C<new ( $search, )>

Param: C<$search> - type (detail) - description

Return: Chiro::Schema::Result::Activity -

Description:

=head1 PRIMARY KEY

=over 4

=item * L</name>

=back

=head1 DIAGNOSTICS

A list of every error and warning message that the module can generate (even
the ones that will 'never happen'), with a full explanation of each problem,
one or more likely causes, and any suggested remedies.

=head1 CONFIGURATION AND ENVIRONMENT

A full explanation of any configuration system(s) used by the module, including
the names and locations of any configuration files, and the meaning of any
environment variables or properties that can be set. These descriptions must
also include details of any configuration language used.

=head1 DEPENDENCIES

A list of all of the other modules that this module relies upon, including any
restrictions on versions, and an indication of whether these required modules
are part of the standard Perl distribution, part of the module's distribution,
or must be installed separately.

=head1 INCOMPATIBILITIES

A list of any modules that this module cannot be used in conjunction with.
This may be due to name conflicts in the interface, or competition for system
or program resources, or due to internal limitations of Perl (for example, many
modules that use source code filters are mutually incompatible).

=head1 BUGS AND LIMITATIONS

A list of known problems with the module, together with some indication of
whether they are likely to be fixed in an upcoming release.

Also, a list of restrictions on the features the module does provide: data types
that cannot be handled, performance issues and the circumstances in which they
may arise, practical limitations on the size of data sets, special cases that
are not (yet) handled, etc.

The initial template usually just has:

There are no known bugs in this module.

Please report problems to Ivan Wills (ivan.wills@gmail.com).

Patches are welcome.

=head1 AUTHOR

Ivan Wills - (ivan.wills@gmail.com)

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2016 Ivan Wills (14 Mullion Close, Hornsby Heights, NSW Australia 2077).
All rights reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.  This program is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

=cut
