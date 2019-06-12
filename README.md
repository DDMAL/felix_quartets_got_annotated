# felix_quartets_got_annotated
This dataset consists of the encoding and annotation of the 6 string quartets composed by Felix Mendelssohn.

## Contributors
This dataset is the collective effort of several contributors:
- Laurent Feisthauer
- Ichiro Fujinaga
- Sam Howes
- Yaolong Ju
- Sylvain Margot
- Nestor Napoles Lopez
- Tim de Reuse

## Content
The dataset contains encodings and annotations for the following pieces:

- String Quartet in Eb Major, Op.12
  1. Adagio non troppo - Allegro con tardante
  2. Canzonetta. Allegretto
  3. Andante espressivo
  4. Molto allegro e vivace
- String Quartet in A Major, Op.13
  1. Adagio - Allegro vivace
  2. Adagio non lento
  3. Intermezzo ; Allegretto con moto - Allegro di molto
  4. Presto
- String Quartet in D Major, Op.44 No.1
  1. Molto allegro vivace
  2. Menuetto - Un poco Allegretto
  3. Andante espressivo ma con moto
  4. Presto con brio
- String Quartet in E Minor, Op.44 No.2
  1. Allegro assai appasionato
  2. Scherzo - Allegro di molto
  3. Andante
  4. Presto agitato
- String Quartet in Eb Major, Op.44 No.3
  1. Allegro vivace
  2. Scherzo ; Assai leggiero vivace
  3. Adagio non troppo
  4. Molto allegro con fuoco
- String Quartet in F Minor, Op.80
  1. Allegro vivace assai
  2. Allegro assai
  3. Adagio
  4. Finale ; Allegro molto
  
## Workflow for encoding

We started by passing a set of public-domain scores through commercial OMR software to get an initial MusicXML file of the scores.

After that, we corrected the encodings using MuseScore v2.3.2, adopting the following workflow:
1. Correct the pitch and duration of the notes, according to the original pdf
2. Match the beaming and slurs/ties of the original pdfs. Be sure that a tie is not a slur and vice versa. 
> Nestor: The layout of the slurs/ties is not matched to the original pdf, but the `start` and `end` notes of the slur/tie are correctly encoded.
3. Add fermatas
4. Ignore dynamics/articulations/ornaments that are correct, remove the ones that are wrong, and do not encode the ones that are missing (for the sake of time)
5. Remove all the machine-generated tempo changes in the MuseScore community one
6. When all the notes should be encoded in one layer (voice) but the OMR software has (wrongfully) detected several voices, make sure to remove all of the additional voices in the music notation editor and encode the notes in a single, main, layer 