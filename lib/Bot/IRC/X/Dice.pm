package Bot::IRC::X::Dice;
# ABSTRACT: Bot::IRC plugin for dice rolling

use 5.014;
use exact;

use Games::Dice 'roll';

# VERSION

sub init {
    my ($bot) = @_;

    $bot->hook(
        {
            command => 'PRIVMSG',
            text    => qr/^roll\s+(?<expr>\d*d[\d%]+(?:[+\-*\/]\d+)?)/,
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

=begin :badges

=for markdown
[![test](https://github.com/gryphonshafer/Bot-IRC-X-Dice/workflows/test/badge.svg)](https://github.com/gryphonshafer/Bot-IRC-X-Dice/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Dice/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Dice)

=end :badges

=head1 SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['Dice'],
    )->run;


=head1 DESCRIPTION

This L<Bot::IRC> plugin provides the means for the bot to perform simulated
dice rolls.

    roll <dice expression like "2d6+2">

=head1 SEE ALSO

You can look for additional information at:

=for :list
* L<Bot::IRC>
* L<GitHub|https://github.com/gryphonshafer/Bot-IRC-X-Dice>
* L<MetaCPAN|https://metacpan.org/pod/Bot::IRC::X::Dice>
* L<GitHub Actions|https://github.com/gryphonshafer/Bot-IRC-X-Dice/actions>
* L<Codecov|https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Dice>
* L<CPANTS|http://cpants.cpanauthors.org/dist/Bot-IRC-X-Dice>
* L<CPAN Testers|http://www.cpantesters.org/distro/T/Bot-IRC-X-Dice.html>

=for Pod::Coverage init

=cut
