package SQL::Translator;

use strict;
use ExtUtils::MakeMaker;
use Config;

WriteMakefile(
    'NAME'         => __PACKAGE__,
    'VERSION_FROM' => "lib/SQL/Translator.pm",
    'EXE_FILES'    => [
        'bin/sql_translator.pl',
    ],
    'PREREQ_PM'    => {
        'Parse::RecDescent'  => 0,  # Is a particular version needed?
        'XML::Dumper'        => 0,
        'Pod::Usage'         => 0,
    },
    clean => {
        FILES => 'SQL-Translator-$(VERSION).tar.gz',
    },
);

