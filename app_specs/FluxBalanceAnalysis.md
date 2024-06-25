
# Application specification: FluxBalanceAnalysis

This is the application specification for service with identifier FluxBalanceAnalysis.

The backend script implementing the application is [App-FluxBalanceAnalysis.pl](../service-scripts/App-FluxBalanceAnalysis.pl).

The raw JSON file for this specification is [FluxBalanceAnalysis.json](FluxBalanceAnalysis.json).

This service performs the following task:   Run flux balance analysis on model.

It takes the following parameters:

| id | label | type | required | default value |
| -- | ----- | ---- | :------: | ------------ |
| model | Model object | WS: model  | :heavy_check_mark: |  |
| media | FBA media | WS: media  |  |  |
| fva | Run FVA | bool  |  | 0 |
| predict_essentiality | Predict essentiality | bool  |  | 0 |
| minimizeflux | Minimize solution flux | bool  |  | 0 |
| findminmedia | Compute minimal media | bool  |  | 0 |
| allreversible | Make all reactions reversible | bool  |  | 0 |
| thermo_const_type | Thermodynamic constraints | enum  |  |  |
| media_supplement | Media supplements | string  |  |  |
| geneko | Gene knockouts | string  |  |  |
| rxnko | Reaction knockouts | string  |  |  |
| objective_fraction | Objective fraction | float  |  | 1 |
| uptake_limit |  | group  |  |  |
| output_file | File Basename | wsid  |  |  |
| custom_bounds |  | group  |  |  |
| objective |  | group  |  |  |

