[![Build Status](https://travis-ci.org/zoffixznet/perl6-Cat.svg)](https://travis-ci.org/zoffixznet/perl6-Cat)

# NAME

Cat - Lazy strings

# SYNOPSIS

```perl6
    use Cat;
                        # infinite list of letters, with an occasional space
    my Cat $cat .= new: { (' ', |('a'..'z')).pick } … *;

    # Lazily make two words from that list:
    say $cat.words[^2]; # OUTPUT: «("tkdkvyjhvpszbdedozbmbl", "ffwyyvdmnq")␤»

    # Lazily split the Cat on some regex:
    say $cat.split(/perl/)[^2]; # OUTPUT: «("adasz", "zffwnq")␤»

    # Lazily read off a filehandle and process string as words:
    my Cat $cat .= new: { state $fh = "large-file".IO.open; $fh.get } … *;
    .say for $cat.words;
```

# DESCRIPTION

Work with lazily-evaluated strings in Perl 6

----

#### REPOSITORY

Fork this module on GitHub:
https://github.com/zoffixznet/perl6-Cat

#### BUGS

To report bugs or request features, please use
https://github.com/zoffixznet/perl6-Cat/issues

#### AUTHOR

Zoffix Znet (https://perl6.party/)

#### LICENSE

You can use and distribute this module under the terms of the
The Artistic License 2.0. See the `LICENSE` file included in this
distribution for complete details.
