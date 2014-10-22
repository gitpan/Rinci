package Sah::Schema::Rinci;

use 5.010001;
use strict;
use warnings;

our $VERSION = '1.1.60'; # VERSION
our $DATE = '2014-10-22'; # DATE

our %SCHEMAS;

my %dh_props = (
    v => {},
    defhash_v => {},
    name => {},
    caption => {},
    summary => {},
    description => {},
    tags => {},
    default_lang => {},
    x => {},
);

$SCHEMAS{rinci} = [hash => {
    # tmp
    _ver => 1.1, # this has the effect of version checking
    _prop => {
        %dh_props,

        entity_v => {},
        entity_date => {},
        links => {
            _elem_prop => {
                %dh_props,

                uri => {},
                title => {},
            },
        },
    },
}];

$SCHEMAS{rinci_function} = [hash => {
    # tmp
    _ver => 1.1,
    _prop => {
        %dh_props,

        # from common rinci metadata
        entity_v => {},
        entity_date => {},
        links => {},

        is_func => {},
        is_meth => {},
        is_class_meth => {},
        args => {
            _value_prop => {
                %dh_props,

                schema => {},
                default => {},
                req => {},
                pos => {},
                greedy => {},
                is_password => {},
                encoding => {},
                cmdline_aliases => {
                    _value_prop => {
                        summary => {},
                        description => {},
                        schema => {},
                        code => {},
                        is_flag => {},
                    },
                },
                cmdline_on_getopt => {},
                cmdline_prompt => {},
                completion => {},
                element_completion => {},
                cmdline_src => {},
                meta => 'fix',
                element_meta => 'fix',
            },
        },
        args_as => {},
        result => {
            _prop => {
                %dh_props,

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
                %dh_props,

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
                check_arg => {},
            },
        },
        deps => {
            _keys => {
                all => {},
                any => {},
                none => {},
                env => {},
                prog => {},
                pkg => {},
                func => {},
                code => {},
                tmp_dir => {},
                trash_dir => {},
            },
        },
    },
}];
$SCHEMAS{rinci_function}[1]{_prop}{args}{_value_prop}{meta} =
    $SCHEMAS{rinci_function}[1];
$SCHEMAS{rinci_function}[1]{_prop}{args}{_value_prop}{element_meta} =
    $SCHEMAS{rinci_function}[1];

# rinci_package
# rinci_variable
# rinci_result
# list of known special arguments: -dry_run, -action, -tx_action

1;
# ABSTRACT: Sah schemas for Rinci metadata

__END__

=pod

=encoding UTF-8

=head1 NAME

Sah::Schema::Rinci - Sah schemas for Rinci metadata

=head1 VERSION

This document describes version 1.1.60 of Sah::Schema::Rinci (from Perl distribution Rinci), released on 2014-10-22.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Rinci>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-Rinci>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Rinci>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
