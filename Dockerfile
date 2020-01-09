FROM openjdk:14-jdk-alpine
COPY stanford-postagger.jar /home/tagger/
COPY english-left3words-distsim.tagger /home/tagger/
WORKDIR /home/tagger/
CMD ["java", "-mx300m", "-cp", "stanford-postagger.jar", "edu.stanford.nlp.tagger.maxent.MaxentTaggerServer", "-model", "english-left3words-distsim.tagger", "-port", "2020", "-outputFormat", "tsv"]
