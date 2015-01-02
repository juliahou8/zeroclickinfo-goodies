#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "is_awesome_jesuruban";
zci is_cached   => 1;

ddg_goodie_test(
    [qw(
        DDG::Goodie::IsAwesome::jesuruban
    )],
    'duckduckhack jesuruban' => test_zci('Jesu Ruban is awesome and has successfully completed the DuckDuckHack Goodie tutorial!'),
    'duckduckhack jesuruban is awesome' => undef,
);

done_testing;
