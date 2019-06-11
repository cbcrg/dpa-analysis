export DUMP_ALN_BUCKETS=1
export NO_MAFFT_BINARIES=1
t_coffee -dpa -dpa_method mafftfftns1_msa \
         -dpa_tree ${guide_tree} \
         -seq ${seqs} \
         -dpa_nseq ${bucket_size} \
         -outfile ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.aln

if test -f "alndump..1.aln_bucket"; then
  mv alndump..1.aln_bucket ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.parent.aln
fi

