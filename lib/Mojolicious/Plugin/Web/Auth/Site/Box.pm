package Mojolicious::Plugin::Web::Auth::Site::Box;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

use Mojo::Base qw/Mojolicious::Plugin::Web::Auth::OAuth2/;

has user_info        => 1;
has authorize_url    => 'https://app.box.com/api/oauth2/authorize';
has access_token_url => 'https://app.box.com/api/oauth2/token';
has user_info_url    => 'https://api.box.com/2.0/users/me';
has response_type    => 'code';

sub moniker {'box'};

1;
__END__

=encoding utf-8

=head1 NAME

Mojolicious::Plugin::Web::Auth::Site::Box - Box OAuth Plugin for Mojolicious::Plugin::Web::Auth

=head1 SYNOPSIS

    use Mojolicious::Plugin::Web::Auth::Site::Box;

    # Mojolicious
    $self->plugin('Web::Auth',
        module      => 'Box',
        key         => 'Box consumer key',
        secret      => 'Box consumer secret',
        on_finished => sub {
            my ( $c, $access_token, $access_secret ) = @_;
            ...
        },
    );
    
    # Mojolicious::Lite
    plugin 'Web::Auth',
        module      => 'Box',
        key         => 'Box consumer key',
        secret      => 'Box consumer secret',
        on_finished => sub {
            my ( $c, $access_token, $access_secret ) = @_;
            ...
        };
    
    # default authentication endpoint: /auth/box/authenticate
    # default callback endpoint: /auth/box/callback

=head1 DESCRIPTION

Mojolicious::Plugin::Web::Auth::Site::Box is an OAuth Plugin for Mojolicious::Plugin::Web::Auth

=head1 LICENSE

Copyright (C) hayajo.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

hayajo E<lt>hayato.imai@gmail.comE<gt>

=cut

