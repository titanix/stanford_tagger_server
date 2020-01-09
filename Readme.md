# Stanford Tagger Server

Contains the necessary files to create a Docker conainter for the Stanford NLP tagger. It include only the English file.

Server listen to port 2020. Launch command is `java -mx300m -cp stanford-postagger.jar edu.stanford.nlp.tagger.maxent.MaxentTaggerServer -model english-left3words-distsim.tagger -port 2020 -outputFormat tsv`.