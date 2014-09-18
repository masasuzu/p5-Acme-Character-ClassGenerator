# NAME

Acme::Character::ClassGenerator - generate class dinamically.

# SYNOPSIS

    use Acme::Character::ClassGenerator;
    Acme::Character::ClassGenerator::generate(
        name => 'Foo',
        rgb_color => 'rgb344',
    );

    my $foo = Acme::Character::Foo->instance;
    $foo->say('hogehoge');

# DESCRIPTION

Acme::Character::ClassGenerator is Character class generator dinimically.

# LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

SUZUKI Masashi <m15.suzuki.masashi@gmail.com>
