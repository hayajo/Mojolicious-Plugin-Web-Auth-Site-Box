# NAME

Mojolicious::Plugin::Web::Auth::Site::Box - Box OAuth Plugin for Mojolicious::Plugin::Web::Auth

# SYNOPSIS

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

# DESCRIPTION

Mojolicious::Plugin::Web::Auth::Site::Box is an OAuth Plugin for Mojolicious::Plugin::Web::Auth

# LICENSE

Copyright (C) hayajo.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

hayajo &lt;hayato.imai@gmail.com>
