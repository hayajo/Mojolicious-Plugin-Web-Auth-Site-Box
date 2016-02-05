requires 'perl', '5.008001';
requires 'Mojolicious::Plugin::Web::Auth', '>= 0.12';

on 'test' => sub {
    requires 'Test::More', '0.98';
};

