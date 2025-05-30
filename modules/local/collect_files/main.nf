process collect_files {

  label "process_single"

  container "ubuntu"

  input:
    path '*.txt'

  output:
    path '*.txt'

  when:
    
    task.ext.when == null || task.ext.when

  script:
    """
    cat *.txt > Sample_Final.txt
    """
}
