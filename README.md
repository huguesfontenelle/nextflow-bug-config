## Bug report

Scope `params` is over-written when called a second time?!?

### Expected behavior and actual behavior

I'm defining some params defaults in two config files.

### Steps to reproduce the problem

```
nextflow run huguesfontenelle/nextflow-bug-config --genome smallGRCh37
```

### Program output

```
N E X T F L O W  ~  version 19.01.0
Launching `huguesfontenelle/nextflow-bug-config` [sick_wozniak] - revision: 88fad15780 [master]
WARN: Access to undefined parameter `genomes` -- Initialise it to a default value eg. `params.genomes = some_value`
ERROR ~ Genome smallGRCh37 not found in configuration

 -- Check '.nextflow.log' file for details
```

### Environment

* Nextflow version: 19.01.0
* Java version: 11.0.2
* Operating system: macOS

### Additional context

(Add any other context about the problem here)
