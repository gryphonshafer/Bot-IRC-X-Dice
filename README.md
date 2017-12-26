# NAME

Bot::IRC::X::Dice - Bot::IRC plugin for dice rolling

# VERSION

version 1.04

[![Build Status](https://travis-ci.org/gryphonshafer/Bot-IRC-X-Dice.svg)](https://travis-ci.org/gryphonshafer/Bot-IRC-X-Dice)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/Bot-IRC-X-Dice/badge.png)](https://coveralls.io/r/gryphonshafer/Bot-IRC-X-Dice)

# SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['Dice'],
    )->run;

# DESCRIPTION

This [Bot::IRC](https://metacpan.org/pod/Bot::IRC) plugin provides the means for the bot to perform simulated
dice rolls.

    roll <dice expression like "2d6+2">

# SEE ALSO

You can look for additional information at:

- [Bot::IRC](https://metacpan.org/pod/Bot::IRC)
- [GitHub](https://github.com/gryphonshafer/Bot-IRC-X-Dice)
- [CPAN](http://search.cpan.org/dist/Bot-IRC-X-Dice)
- [MetaCPAN](https://metacpan.org/pod/Bot::IRC::X::Dice)
- [AnnoCPAN](http://annocpan.org/dist/Bot-IRC-X-Dice)
- [Travis CI](https://travis-ci.org/gryphonshafer/Bot-IRC-X-Dice)
- [Coveralls](https://coveralls.io/r/gryphonshafer/Bot-IRC-X-Dice)
- [CPANTS](http://cpants.cpanauthors.org/dist/Bot-IRC-X-Dice)
- [CPAN Testers](http://www.cpantesters.org/distro/T/Bot-IRC-X-Dice.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2018 by Gryphon Shafer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
