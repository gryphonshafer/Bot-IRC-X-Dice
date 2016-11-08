# NAME

Bot::IRC::X::Dice - Bot::IRC plugin for dice rolling

# VERSION

version 1.01

# SYNOPSIS

# DESCRIPTION

This [Bot::IRC](https://metacpan.org/pod/Bot::IRC) plugin provides the means for the bot to perform simulated
dice rolls.

## SEE ALSO

[Bot::IRC](https://metacpan.org/pod/Bot::IRC)

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['Dice'],
    )->run;

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Gryphon Shafer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
