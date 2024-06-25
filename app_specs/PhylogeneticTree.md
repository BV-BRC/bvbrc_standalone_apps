
# Application specification: PhylogeneticTree

This is the application specification for service with identifier PhylogeneticTree.

The backend script implementing the application is [App-PhylogeneticTree.pl](../service-scripts/App-PhylogeneticTree.pl).

The raw JSON file for this specification is [PhylogeneticTree.json](PhylogeneticTree.json).

This service performs the following task:   Computes a phylogenetic tree given a set of in-group and out-group genomes

It takes the following parameters:

| id | label | type | required | default value |
| -- | ----- | ---- | :------: | ------------ |
| output_path | Output Folder | folder  | :heavy_check_mark: |  |
| output_file | File Basename | wsid  | :heavy_check_mark: |  |
| in_genome_ids | In-group genomes | list  | :heavy_check_mark: | ARRAY(0x55a7dbaa0098) |
| out_genome_ids | Out-group genomes | list  | :heavy_check_mark: | ARRAY(0x55a7dbd51550) |
| full_tree_method | Full tree method | string  |  | ml |
| refinement | Automated progressive refinement | string  |  | yes |

