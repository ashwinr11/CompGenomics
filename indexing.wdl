workflow indexing {
    
    input {
        File GENOME
    }
    
    call indexout {
        input : GENOME = GENOME
    }
}

task indexout {
    
    input {
        File GENOME
    }
    
    command {
        bowtie2-build GENOME.fa GENOME
    }
    
    output {
        File outputs = "outputfiles"
    }
    
    runtime {
        docker: "mschatz/wga-essentials"
    }
}