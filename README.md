# CSA14 Compiler Design – Remaining Experiments

Prepared for the remaining experiments from the supplied 40-experiment list.

Included:
09, 10, 15, 19–40.

File naming:
- `.c` = C program
- `.l` = LEX/FLEX specification

Typical LEX/FLEX compilation:
    flex program.l
    gcc lex.yy.c -o program
    ./program inputfile

For interactive LEX programs, run:
    ./program

Note: Experiment 9 and 10 display the transformed grammar directly because the supplied question gives a fixed grammar. Experiments 21 and 30 are C implementations of the requested counting algorithms.
