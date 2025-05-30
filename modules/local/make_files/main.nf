process make_files {

  //label "process_baby"

  container "ubuntu"

  input:
    val x

  output:
    path '*.txt'

  when:
    
    task.ext.when == null || task.ext.when

  script:
    """
    fallocate -l 2147483648 Sample${x}.txt
    """
}