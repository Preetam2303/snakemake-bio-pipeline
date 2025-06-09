rule all:
    input:
        "results/message.txt"

rule say_hello:
    output:
        "results/hello.txt"
    shell:
        "echo 'Hello' > {output}"

rule say_world:
    input:
        "results/hello.txt"
    output:
        "results/message.txt"
    shell:
        "echo 'World' >> {output}"
