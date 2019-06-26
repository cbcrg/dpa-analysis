export DUMP_ALN_BUCKETS=1
t_coffee -dpa -dpa_method upp_msa \
         -dpa_tree ${guide_tree} \
         -seq ${seqs} \
         -n_core=1 \
         -reg_thread=1 \
         -dpa_nseq ${bucket_size} \
         -outfile ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.aln

if test -f "alndump..1.aln_bucket"; then
  mv alndump..1.aln_bucket ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.parent.aln
fi
