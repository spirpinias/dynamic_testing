## Usage 

```
nextflow \
run \
main.nf \
-c tiledb.config
-params-file pipeline_params.yml \
-work-dir s3://stephen-pirpinias-dev/Work-Files \
-output-dir s3://stephen-pirpinias-dev
```