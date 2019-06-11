export DUMP_ALN_BUCKETS=1
t_coffee -dpa -dpa_method upp_msa \
         -dpa_tree ${guide_tree} \
         -seq ${seqs} \
         -dpa_nseq ${bucket_size} \
         -outfile ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.aln \
         -n_core=1

if test -f "alndump..1.aln_bucket"; then
  mv alndump..1.aln_bucket ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.parent.aln
fi
