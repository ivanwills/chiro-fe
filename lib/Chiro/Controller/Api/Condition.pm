package Chiro::Controller::Api::Condition;
use Moose;
use namespace::autoclean;
use Chiro::API;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Chiro::Controller::Api::Condition - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    my $condition = Chiro::API->new({ log => $c->log, schema => $c->model('DB') })->condition;
    my $json = $condition->conditions();

    $c->stash({data => $json});

    return $c->forward('View::JSON');
}



=encoding utf8

=head1 AUTHOR

Ivan Wills,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
