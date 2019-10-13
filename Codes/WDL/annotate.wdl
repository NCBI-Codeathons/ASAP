version 1.0


# basic task to call into the AnnotSV program for default annotations on input VCF
# open to future improvements via, e.g.
#  1. custom parameters
#  2. custom annotation data bases
task Annotate {

    input {
        File svvcf
        String output_tsv
        String public_annotsv_docker
    }

    Int disk_size = ceil(size(svvcf, "GB")) + 10

    command <<<
        set -eu

        /usr/local/bin/AnnotSV/AnnotSV.tcl \
          -SVinputFile ~{svvcf} \
          -outputFile ~{output_tsv}
    >>>

    output {
        File annotated_tsv = "~{output_tsv}"
    }


    runtime {
        cpu:            2
        memory:         "8 GiB"
        disks:          "local-disk ~{disk_size} HDD"
        bootDiskSizeGb: 30
        preemptible:    1
        maxRetries:     1
        docker:         "~{public_annotsv_docker}"
    }
}
