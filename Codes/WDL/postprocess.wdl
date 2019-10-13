version 1.0

# Standarize the TSV output by AnnotSV into a valid VCF
task StandarizeToVCF {

    input {
        File original_vcf
        File annotated_tsv

        String post_processed_vcf
        String postprocessing_docker
    }

    Int disk_size = ceil(size(original_vcf, "GB")) + ceil(size(annotated_tsv, "GB")) + 10

    command <<<
        set -eu

        echo
    >>>

    output {
        File standarized_vcf = "~{post_processed_vcf}"
    }


    runtime {
        cpu:            2
        memory:         "8 GiB"
        disks:          "local-disk ~{disk_size} HDD"
        bootDiskSizeGb: 30
        preemptible:    1
        maxRetries:     1
        docker:         "~{postprocessing_docker}"
    }
}
