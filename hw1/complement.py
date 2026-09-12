#!/usr/bin/env python3

from argparse import ArgumentParser


parser = ArgumentParser(
            prog='Complement',
            description='Returns the complementary sequence \
                         and GC-content of the original')
parser.add_argument('-s', '--seq')
seq = vars(parser.parse_args())['seq']

dct = {'A': 'T',
       'G': 'C',
       'T': 'A',
       'C': 'G'}
compl = "".join(dct.get(base) for base in seq[::-1])
gc_cont = (seq.count('G') + seq.count('C')) / len(seq)

print(f'{compl}\n{gc_cont:.3f}')