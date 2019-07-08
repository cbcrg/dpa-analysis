export DUMP_ALN_BUCKETS=1
export NO_MAFFT_BINARIES=1

replace_U.pl ${seqs} 
t_coffee -dpa -dpa_method mafftsparsecore_msa \
         -dpa_tree ${guide_tree} \
         -n_core=1 \
         -reg_thread=1 \
         -seq ${seqs} \
         -dpa_nseq ${bucket_size} \
         -outfile ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.aln

if test -f "alndump..1.aln_bucket"; then
  mv alndump..1.aln_bucket ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.parent.aln
fi
