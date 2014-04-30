package Sah::Schema::Rinci;

use 5.010001;
use strict;
use warnings;

our $VERSION = '1.1.46'; # VERSION
our $DATE = '2014-04-30'; # DATE

our %SCHEMAS;

$SCHEMAS{rinci} = [hash => {
    # tmp
    _prop => {
        # from defhash
        v => {},
        defhash_v => {},
        name => {},
        summary => {},
        description => {},
        tags => {},
        default_lang => {},
        x => {},

        entity_v => {},
        links => {
            _elem_prop => {
                # from defhash
                v => {},
                defhash_v => {},
                name => {},
                summary => {},
                description => {},
                tags => {},
                default_lang => {},
                x => {},

                uri => {},
                title => {},
            },
        },
    },
}];

$SCHEMAS{rinci_function} = [hash => {
    # tmp
    _prop => {
        # from defhash
        v => {},
        defhash_v => {},
        name => {},
        summary => {},
        description => {},
        tags => {},
        default_lang => {},
        x => {},

        # from common rinci metadata
        entity_v => {},
        links => {},

        is_func => {},
        is_meth => {},
        is_class_meth => {},
        args => {
            _value_prop => {
                # from defhash
                summary => {},
                description => {},
                tags => {},
                x => {},

                schema => {},
                default => {},
                req => {},
                pos => {},
                greedy => {},
                cmdline_aliases => {
                    _value_prop => {
                        summary => {},
                        description => {},
                        schema => {},
                        code => {},
                    },
                },
                cmdline_on_getopt => {},
                completion => {},
                element_completion => {},
                cmdline_src => {},
            },
        },
        args_as => {},
        result => {
            _prop => {
                # from defhash
                summary => {},
                description => {},
                tags => {},
                x => {},

                schema => {},
                statuses => {
                    _value_prop => {
                        # from defhash
                        summary => {},
                        description => {},

                        schema => {},
                    },
                },
            },
        },
        result_naked => {},
        examples => {
            _elem_prop => {
                # from defhash
                summary => {},
                description => {},
                tags => {},
                x => {},

                args => {},
                argv => {},
                src => {},
                src_plang => {},
                status => {},
                result => {},
                test => {},
            },
        },
        features => {
            _keys => {
                reverse => {},
                tx => {},
                dry_run => {},
                pure => {},
                immutable => {},
                idempotent => {},
            },
        },
        deps => {
            _keys => {
                all => {},
                any => {},
                none => {},
                env => {},
                prog => {},
                code => {},
                tmp_dir => {},
                trash_dir => {},
            },
        },
    },
}];

# rinci_package
# rinci_variable
# rinci_result

1;
# ABSTRACT: Sah schemas for Rinci metadata

__END__

=pod

=encoding UTF-8

=head1 NAME

Sah::Schema::Rinci - Sah schemas for Rinci metadata

=head1 VERSION

This document describes version 1.1.46 of Sah::Schema::Rinci (from Perl distribution Rinci), released on 2014-04-30.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Rinci>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Rinci>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Rinci>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
