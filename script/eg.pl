#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use lib './lib';
binmode STDOUT => ":utf8";

use Acme::Character::ClassGenerator;

Acme::Character::ClassGenerator::generate(
    name      => '絢瀬絵里',
    cv        => '南條愛乃',
    phrase    => 'ハラショー',
    rgb_color => 'rgb344',
);

Acme::Character::ClassGenerator::generate(
    name      => '園田海未',
    cv        => '三森すずこ',
    phrase    => 'みんなのハート打ち抜くぞ',
    rgb_color => 'rgb123'
);


my $園田海未 = Acme::Character::園田海未->instance;
$園田海未->say('お断りします');
$園田海未->say($園田海未->phrase);


my $絢瀬絵里 = Acme::Character::絢瀬絵里->instance;
$絢瀬絵里->say('はらしょー');
$絢瀬絵里->say($絢瀬絵里->cv);
$絢瀬絵里->say($絢瀬絵里->phrase);


