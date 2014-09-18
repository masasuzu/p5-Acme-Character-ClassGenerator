package Acme::Character::ClassGenerator;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

use Term::ANSIColor qw(colored);

sub generate {
    my (%args) = @_;
    my $name = delete $args{name};

    {
        no strict 'refs';

        my $class = "Acme::Character::$name";
        @{"${class}::ISA"} = qw(
            Acme::Character
        );
        for my $attribute (keys %args) {
            *{"${class}::${attribute}"} = sub { $args{$attribute}  };
        }
        if (exists $args{rgb_color}) {
            *{"${class}::say"} = sub {
                my ($self, $target) = @_;
                print(colored($target, $self->rgb_color) . "\n");
            };
        }
    }
}

package Acme::Character;
{
    my %_instance;
    sub instance {
        my ($class, %args) = @_;
        return $_instance{$class} if exists $_instance{$class};

        my $package = __PACKAGE__;
        die 'abstract class' if $package eq $class;

        return $_instance{$class} ||= bless \%args, $class;
    }
}


1;
__END__

=encoding utf-8

=head1 NAME

Acme::Character::ClassGenerator - generate class dinamically.

=head1 SYNOPSIS

    use Acme::Character::ClassGenerator;
    Acme::Character::ClassGenerator::generate(
        name => 'Foo',
        rgb_color => 'rgb344',
    );

    my $foo = Acme::Character::Foo->instance;
    $foo->say('hogehoge');

=head1 DESCRIPTION

Acme::Character::ClassGenerator is Character class generator dinimically.

=head1 LICENSE

Copyright (C) SUZUKI Masashi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

SUZUKI Masashi E<lt>m15.suzuki.masashi@gmail.comE<gt>

=cut

