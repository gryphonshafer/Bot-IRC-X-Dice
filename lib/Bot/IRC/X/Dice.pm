package Bot::IRC::X::Dice;
# ABSTRACT: Bot::IRC plugin for dice rolling

use strict;
use warnings;

use Games::Dice 'roll';

# VERSION

sub init {
    my ($bot) = @_;
    my $expr = Math::Expression->new( PrintErrFunc => sub {} );

    $bot->hook(
        {
            command => 'PRIVMSG',
            text    => qr/roll\s+(?<expr>\d*d[\d%]+(?:[+\-*\/]\d+)?)/,
        },
        sub {
            my ( $bot, $in, $m ) = @_;
            $bot->reply( roll( $m->{expr} ) );
        },
    );

    $bot->helps( dice => 'Simulated dice rolls. Usage: roll <dice expression like "2d6+2">.' );
}

1;
__END__
=pod

=head1 SYNOPSIS

=for test_synopsis BEGIN { die "SKIP: Bot::IRC may or may not be available." }

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['Dice'],
    )->run;

=head1 DESCRIPTION

This L<Bot::IRC> plugin provides the means for the bot to perform simulated
dice rolls.

=head2 SEE ALSO

L<Bot::IRC>

=for Pod::Coverage init

=cut
