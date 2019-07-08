t_coffee -dpa -dpa_method mafft_msa \
         -dpa_tree ${guide_tree} \
         -seq ${seqs} \
         -n_core=1 \
         -reg_thread=1 \
         -dpa_nseq ${bucket_size} \
         -outfile ${id}.dpa_${bucket_size}.${align_method}.with.${tree_method}.tree.aln
