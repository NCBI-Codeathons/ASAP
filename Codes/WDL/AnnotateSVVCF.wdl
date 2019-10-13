version 1.0

import "annotate.wdl" as ant
import "postprocess.wdl" as pp

# master workflow for carrying out annotating SV VCF using the program AnnotSV
workflow AnnotateSV {
    input {
        File svvcf
        String output_tsv
        String public_annotsv_docker

        String post_processed_vcf
        String postprocessing_docker
    }

    call ant.Annotate as Annotate {
    	input:
    	  svvcf = svvcf,
    	  output_tsv = output_tsv,
    	  public_annotsv_docker = public_annotsv_docker
    }

    call pp.StandarizeToVCF as StandarizeToVCF {
    	input:
    	  original_vcf = svvcf,
    	  annotated_tsv = Annotate.annotated_tsv,
    	  post_processed_vcf = post_processed_vcf,
    	  postprocessing_docker = postprocessing_docker
    }

    output {
    	File annotated_vcf = StandarizeToVCF.standarized_vcf
    }
}

