# NAME

Bot::IRC::X::Dice - Bot::IRC plugin for dice rolling

# VERSION

version 1.07

[![test](https://github.com/gryphonshafer/Bot-IRC-X-Dice/workflows/test/badge.svg)](https://github.com/gryphonshafer/Bot-IRC-X-Dice/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Dice/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Dice)

# SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['Dice'],
    )->run;

# DESCRIPTION

This [Bot::IRC](https://metacpan.org/pod/Bot%3A%3AIRC) plugin provides the means for the bot to perform simulated
dice rolls.

    roll <dice expression like "2d6+2">

# SEE ALSO

You can look for additional information at:

- [Bot::IRC](https://metacpan.org/pod/Bot%3A%3AIRC)
- [GitHub](https://github.com/gryphonshafer/Bot-IRC-X-Dice)
- [MetaCPAN](https://metacpan.org/pod/Bot::IRC::X::Dice)
- [GitHub Actions](https://github.com/gryphonshafer/Bot-IRC-X-Dice/actions)
- [Codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Dice)
- [CPANTS](http://cpants.cpanauthors.org/dist/Bot-IRC-X-Dice)
- [CPAN Testers](http://www.cpantesters.org/distro/T/Bot-IRC-X-Dice.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2016-2050 by Gryphon Shafer.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
