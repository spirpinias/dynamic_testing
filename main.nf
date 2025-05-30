#!/usr/bin/env nextflow

nextflow.preview.output = true

include { make_files } from './modules/local/make_files'
include { collect_files } from './modules/local/collect_files'


workflow {

    main:
        digits = Channel
            .from(1..params.num_files)
    publish:
        final_file = make_files(digits) | collect | collect_files
}

output {
    final_file {
        path 'files'
    }
}
