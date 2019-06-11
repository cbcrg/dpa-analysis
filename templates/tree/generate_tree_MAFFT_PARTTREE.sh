export NO_MAFFT_BINARIES=1
t_coffee -other_pg seq_reformat -in ${seqs} -action +seq2dnd parttree -output newick >> ${id}.${tree_method}.dnd
