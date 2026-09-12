#!/usr/bin/env python3

from argparse import ArgumentParser
import json


def parse_fasta(fa):
    seqs = {}
    name = None
    
    with open(fa, 'r') as f:
        for l in f:
            l = l.strip()
            if not l:
                continue
            if l.startswith('>'):
                name = l[1:]
                seqs[name] = ''
            elif name:
                seqs[name] += l
                
    return seqs


def count_kmers(seq, k):
    kmers = {}
    
    for i in range(len(seq)-k+1):
        kmer = seq[i:i+k]
        kmers[kmer] = kmers.get(kmer, 0) + 1
        
    return kmers


parser = ArgumentParser(
            prog='k-mer count',
            description='Counts k-mers for the fasta file')
parser.add_argument('-f', '--fa')
parser.add_argument('-o', '--out')
# parser.add_argument('-k')
args = parser.parse_args()
fa = args.fa
# outf = args.out
outf = "out.json"
# k = args.k
k = 4

dct = {}
with open(fa, 'r') as inp:
    seqs = parse_fasta(fa)
    for name, seq in seqs.items():
        dct[name] = count_kmers(seq, k)

with open(outf, 'w') as f:
    json.dump(dct, f, indent=2)