clustalo -i ${seqs} --guidetree-out ${id}.temp.dnd --force
t_coffee -other_pg seq_reformat -in ${id}.temp.dnd -action +newick_randomize 1 >> ${id}.${tree_method}.dnd
