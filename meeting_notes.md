# January 31, 2020
Attendees: Ich, Finn, Sylvain, Jacob, Tim, Yaolong, Nestor, and Laurent (Remotely)

> Chair: Finn, Minutes: Nestor

Checking the spreadsheet and discussing the reviewer strategies that were remained unanswered during the last session. Particularly:

- Trills: We will match them as they appear in the score. Jacob mentioned a few cases where a long, tied note with a trill didn't seem to perform the trill for the entire duration. We decided to encode the trill to match the score and not worry too much about how it is encoded. For example, the trill mark is written only once in the MusicXML so it would be up to the analysis software to figure out the continuation of the trill in a tied note, which is out of our control
- Other articulations: We decided to remove turns and other articulations, given the large amount of symbols that we would need to verify
- Grace notes: Grace notes were not considered originally in the spreadsheet. We added the grace notes as part of the things that need to be encoded.
- Number of voices: Finn presented an example of a `chord` where the lower note has a different duration than the notes on top. Finn's strategy is to encode these examples with the same duration for all notes and (visually) modify the notehead of the lower note. This creates a tag in the `musicxml` that modifies the notehead of the note. The duration, however, is the same as the other notes.
- Layout: We are not worrying about matching the layout of the score, which could be useful for OMR, but guaranteeing the quality of such layout is out of the scope of this project.

At this point, the dataset is pretty much ready for starting the annotations.

Regarding the annotation/analysis stage of the project. 

We will all work in one piece: `Op. 44 No. 1 - II`. We will provide annotations in the `.dez` file to be tested in the Dezrann interface.

Nestor is going to provide a template for generating this annotation file.


# January 24, 2020 
Attendees Ich, Nestor, Sylvain, Jacob, Suzuka, Tim, Sam, Finn, and Laurent (Remotely)

> Chair: Sylvain Margot, Minutes: Finn Upham, Transcript and Audio https://otter.ai/s/7-6LHuRGRcOJAbcCdhf8Ew

## Git Repo, how to file our corrected documents
Laurent shared a prefered nomenclature and formate for the symbolic music files in their final corrected and reviewed form. 
Where to store them?
Decision: We will place the final copies in two places: All together in a reserved root folder and in a suitably names folder within each quartet's folder. Nestor will make these changes so the nomenclature is consistent

## Reviewer Priority list
In reviewing each others corrections, it became evident that we had different priorities for what needed to be in the files. Finn started a check list of score elements for each reviewer to report what they preserved from the OMR generated symbolic files, matched to the printed page, or removed entirely. See sheet two (Review Priorties) of this google spreadsheet for each reviewers reported strategy: https://docs.google.com/spreadsheets/d/1I97esez5-ObIIOPfARn7O739Vh1QI1o1kRarzwlAedw/edit?usp=sharing

The discrepencies warranted further discussion, with the possibility of needing another round of corrections to standardize the corpus. 

A point of confusion was the purpose of the corpus: are these files to serve as ground truth for future OMR work, or are they for computational analysis on symbolic music? One requires fidelity to the printed page, the other computer readability and preservation of information for musical analyses. Nestor pointed out that making these symbolic music files suitable for OMR would involve adding a great deal of information, bounding boxes, etc. Yaolong emphasised that we should priorities the information needs for this group. What do the different analyses need to produce good quality results? 

## List of score elements to match, preserve, or remove
- Pitch values: All matched
- Courtesy Accidentals (accidentals confirming the key signature after changes in a previous measure): 
  - Nestor has found a plug in for musescore that generates courtesy accidentals if need be. These wouldn't match the printed score but should suffice if needed be human readers. 
  - Decision: Remove these from the scores.
- Rhythm elements: 
  - Ties, tremolo, fermatta, Every one matched the scores. Tuplets/triplets are sometimes not show in score if they continue for a long time. These should be matched to music but rendered invisible. 
- Stemming: Most matched, some preserved. Goal the match
- Rest groupings: Match to score
- Slurs: Matched the score by all
- Articulation symboles: (stoccato, tenuto, accent carrots) Some removed all, some removed only note accents
  - Sam (string player) explained that stocatto markings were important to keep if we also were preseving slurs. There was also agreement that articulate can be important for motive identification and structural cues. 
  - Decision: Match stoccato markings to the score as instructions. If the print document uses "similar" and doesn't show them all, add the points and make them  invisible. Accents carrots should be removed.
- Articulation text: (pizz, arco)
  - Tim suggest they are worth keeping as indicators of structural boundaries.
  - Decision: Match to score in staff text
- Ornamentation symbols: (Trills, turns)
  - Trills pose some particular problems. While often not rendered by programs reading symbolic music, they are know to be predictive of cadences, and they indicate different sounded frequencies than the held pitch alone. They also pose complications when going beyond the duration of a measure, depending on how the symbolic file is being interpreted (Jacob example).
  - One option proposed was to make them an annotation layer in Dezerin, seperate from the symbolic music files.
  - There was no final consensus on this matter
- Dynamics: There was some variation in how these were managed in the reviewed files.
  - Decision: All varieties of dynamic information are to be removed as they are difficult for computational systems to interpret and make use of.
- Expression text: to be removed by all
- Tempo, global text levels: Consensus on matched to printed score
- Tempo, local changes: Decision to Remove
- Layout elements like ends of systems and page position:
  - Practice was inconsistent, some very carefully matched, some removed.
  - Decision: Leave in present variety.
- Voices: 
  - Everyone was careful to reduce the voices in each line to the minimal number necessary, using chords or a second voice depending on the score stemming for sections with stops. Up to now the priority has been to match the printed scores.
  - However, without sufficient warning, analysis scripts may miss the notes in a second voice on a staff. Is it worth forcing these second voice passages into the first voice by breaking staggered onsets and offsets with ties? Or should all analyses be prepared to retreive information from up to two voices per staff?
  - This issue was not concluded.
- Clefs: All were matched. 

The agreement was reached on many of these score elements, and this review suggests we needed to go through the files again in order to standardise these important elements. However, no date was set for the submission of this final review, nor it was not clear who was responsible for making changes: the final reviewers or the initial correctors? These issues and the final decisions a couple of elements may be resolved over slack.

Remaining agenda items were tabled until next time. 


# January 10, 2020

Attendees: Sylvain, Finn, Néstor, Yaolong, Jacob, Tim, Sam, Suzuka

> Notes taken by Sylvain Margot

## ISMIR 2020 conflicting schedule:
Next week is the first ISMIR 2020 Planning Committee meeting, We have unanimously voted to keep our meetings on Friday 10am and skip a week when there’s a scheduling conflict.

## Mendelssohn OMR reviews:
OMR corrections should be done for January 17th. Even if we don’t meet that day, this timeline is kept. Sylvain, Tim, Sam, and Yaolong finished their assignment; Laurent, Néstor, Jacob and Finn are almost done; Suzuka should be able to meet the deadline and could ask for help from Tim and Sam.

## Slurs in double-stops:
A strange slur above double stops in Mendelssohn op.13, ii, m.56 had to be examined. After discussing the point and examining the entire score, we decide that it is a tie applied only to the top note while the bottom note is re-articulated.

## Issues with Dezrann:
Laurent warns us on a issue with Dezran: dynamics, slur, and articulation informations are not kept by the conversion from xml to lilypond through music21. Several other solutions are being examined. Sam proposes that, if the issue only comes from lilypond, maybe we should use a more robust file format.
For January 24th, Laurent will provide to each of us a profile to get to Dezrann. Néstor asked access to the code because it could be useful while generating labels for local keys and chord labels, but it might not be necessary.

## Next meeting:
Next meeting, we’ll begin with a work session on Dezrann and end with a 15-minute presentation from Néstor. Sylvain will conduct the session and Finn will take notes.




# December 6, 2019

Attendees: Yaolong, Sam, Jacob, Tim, Nestor, Finn, Sylvain

> Notes taken by Sam Howes

Deadline met: all movements corrected! Some have been cross-checked too

New repo: under DDMAL/felix_quartets_got_annotated

CTS website: Nestor to set up a gh-page

Meeting notes are to be in markdown format on GitHub

## Tools for organizing our work:
- Basic kanban for Mendelssohn String Quartets Annotated
- Must navigate to DDMAL/felix_quartets_got_annotated/projects/1
- Cards for to-dos (also in markdown)

This will be our last meeting of 2019, Sam to make a Doodle poll for meeting time next term

## Setting deadlines:
- by Jan 6th: all cross checking done (checkbox on github)
- Yaolong would like to have a clear idea of what we are doing and by when
- Finn: let's work backwards from our ISMIR submission mid-April
- For a six-page ISMIR paper, we will need all of our annotations: chords, keys, form, repeated hierarchical patterns (start with melodic motifs)

Tim to look at Dezrann (to understand what kinds of annotations are possbile) and contact Laurent if he has questions

Laurent: please create an issue on GitHub for that, so we can keep track of it all and I can show the developer of Dezrann

We will have to annotate one movement, each with our own annotations (chord labels, keys, etc.) and time ourselves to get an idea of the timeline between January and April

Nestor: We should all learn Dezrann from the beginning because this is what we will use to produce the finished product

First meeting in January will be devoted to learning Dezrann together (might take two weeks)

Before this (these) meetings, we (Yaolong and Nestor) must have some way to get their annotations out of xml and into the Dezrann format

Laurent to upload one of the Mendelssohn scores to Dezrann: op. 44 no. 2 movt. 4 (already cross checked)




# November 29, 2019

Attendees: Finn, Sylvain, Suzuka, Sam, Jacob, Nestor, Yaolong, Tim

> Notes taken by Nestor Napoles Lopez

## Discussion of the chord labeling algorithm on Op.44 No.1 - II.

- Sylvain: The output of the `DH(ML)` seems to be the best
- Yaolong: The ensemble method consists of three algorithms: The NCT + CL(ML) [Non-chord-tones + Chord labeling using machine learning], the DH(ML) [Direct Harmonic Analysis], and the NCT + CL(RB) [Non-chord-tone + Chord labeling using a rule-based system].
- (The discussion on the ouput of the algorithm for the first 13 measures continues)
- Yaolong: Forcing people to write labels for every *salami slice* is probably not a good idea, and very demanding for the annotator, we can, for example, omit slices where the chords are incomplete (2 pitch classes)
- Nestor: What about cases where those 2 pitch classes are in a place where they are *felt* like the chord you are expecting, it would be necessary to have those ones annotated
- Sam: That is given by the syntax, the machine learning model is not quite there yet
- Yaolong: All of the feedback regarding the ouput of the algorithm is great, however, we should also discuss how can we use the output of the model to facilitate our annotations of the Mendelssohn dataset, my hope is that it will save us time compared to starting annotating from scratch
- (Long discussion over whether an `F` chord, as annotated by the ensemble method, is really a double suspension, a dominant ninth, or something else)
- Everybody: For the annotation process, we can put a double exclamation mark to outputs in which the predictions of the ensemble method agree but the root of the chord label is not in the music
- Finn: How about we hear the piece in one ear and sonorize the chord labels of the algorithm in the other ear, then we should be able to spot places where the harmonies don't make any sense
- Everybody: That's a great idea, let's do that!




# November 22, 2019

Attendees: Ich, Laurent, Tim, Sylvain, Sam, Nestor, Yaolong, Jacob, Suzuka, Finn

Finn and Nestor will help with Sam's OMR work, and they will help with the third and fourth movement, respectively. The deadline is Dec. 6th.

Yaolong will commit his corrected results today (already committed).

We decide to get rid of all the dynamics expressions, because:
(1) They contain most errors from the OMR software.
(2) Dynamics can easily be attributed to editors.

We also need to justify why we comply with our current OMR correction protocol (suggested by Ich).

Plan for next week:
(1) Nestor and Yaolong will run automatic key-finding and chord labeling on both Op. 81 Fugue and Op 44.1 Movement 2, and we will take a look at the results, discussing some annotating protocols, and plans for cross-checking.
(2) Jacob will do the assignment for cross-checking, so everybody knows what to double-check.
(3) We will also try to make a timeline for the whole project, outlining the necessary steps and job assignments for everyone. 


# November 15, 2019

Attendees: Ichiro Fuginaga, Jacob deGroot-Maggetti, Yaolong Ju, Finn Upham. Absent: many with regrets

> Notes taken by Finn Upham

The meeting was a more casual conversation. Here are some points that were raised.

## Chord label beyond the 18th C abstraction

Ich brought up a concern about chord labeling that struck him during this past ISMIR: chord labeling is mostly a 18th C abstraction from score patterns. an imposed interpretation that is now taken as the gold standard that labels contrary interpretations of ambiguious passages as wrong. How do we know when the 7th on V is a chord tone or a passing note in a Bach chorale? The subsequent discussion consdiered tolerance of ambiguity in harmonic analysis by theorists and what factors resolve passages with multiple interpretations (voice leading, metrical placement, etc.) The conversation fell in favour of using probabilistic representations of harmonies, giving weightings to ii and vi beside IV and V7 with V for example, and Yaolong is close to being able to share such mappings from his current work. The idea was also floated to generate mappings organised by bass note (for figured bass) as well as mappings for chords, to consider their respective effectiveness at describing music collections such as the Bach Chorales. 

## Sharing MIR resources for comtemporary music theory research

Jacob asked about MIR resources that could help with his work on Jacob Collier's music featuring microtonallities for voice. Suggestions included Sonic Visualiser and some work presented at ISMIR looking into tuning of choirs. 

## Mendelsson project timeline

Last we talked about the Mendelsson project next steps and the timeline. If the current phase (initial OMR and review) could be completed for next Friday (Nov 22nd) we can use the meeting to plan out the work needed to get this lined up for next ISMIR (submission April 17th).


# October 18, 2019

Attendees: Sylvain Margot, Tim de Reuse, Ichiro Fujinaga, Sam Howes, Néstor Nápoles López, Jacob de Groot-Maggetti, Yaolong Ju, Laurent Feisthauer, Gianluca Micchi, Suzuka Kokubu

> Notes taken by Sylvain Margot

## Sam’s discussion on “Chord Context and Harmonic Function in Tonal Music”  

Sam proposes to do a summary of the article first, and then to ask the questions that could remain after the reading. 
3 corpora analyzed. Sam focused on Bach’s and Kostka-Payne’s corpora. According to the authors, the 3 function models  usually used in music theory are ok but each of them can be improved. With the results they got, they propose a 4-function model for Kostka-Payne and a 13-function model for Bach. The pedagogical and theoretical implications of their results are very interesting.

What can be used in our own work?
Tim: the authors used the results to propose different theoretical approaches and directly applied them to real music, to see how relevant these could be for music analysis. However, some functions in the 13-function model could be collapsed with each other, given the fact that there’s not a big difference in “coherence” between the different models they tested.
Yaolong: the study is not that much hard-data driven. There are many assumptions in their model coming from pre-conceptions of music theory. “Deceptive cadence is very unlikely”.
Sam: this weakness is also a strength. Sometimes, you have to take a step-back to really make sense of the results.
Sylvain: issues with modulation and contrapuntal events such as harmonic sequences, that multiply the number of functions needed for their models.
Sam: the models might over-model the music, but the outstanding results coming from modulation or contrapuntal events can be observed as valuable specific syntaxes. 
Yaolong: and what about non-chord tones? 
Sam: this question is only relevant if you’re interested in chord labeling, but if you focus on syntax only, this question is less important (example: 1-2-4-5 is a very common sonority as a passing sonority between I and I6, but it cannot be a chord by itself). 
Ichiro: the computer should be able to recognize this sonority in different key, leading to identification of keys.
Néstor: the context is lost in “salami-slices” approach, and therefore the reason why a chord receives a label is lost.
Sam: even if you are aggressively data-drive, the computer will get things that are not at all compatible with our theoretical models (for example: V6$ is a pre-dominant). 
Sylvain: isn’t the algorithm too goal-oriented? It doesn’t seem to take under consideration what comes before a chord to label it.
Néstor: explanation how HMM works. The model takes the entire sequence under consideration. It is not really a 2-grams approach despite the fact that the results are represented as a 2-grams network.
Sam: final thought. Are chord labels a reasonable abstraction or not? 
Tim: yes, it works in teaching music theory.
Néstor: is pursuing the data-driven approach based on our understanding of chords is that relevant?



# October 11, 2019

Attendees: Sylvain Margot, Néstor Nápoles López, Suzuka Kokubu, Finn Upham, Yaolong Ju, Sam Howes, Ichiro Fujinaga, Tim de Reuse, Laurent Feisthauer

> Notes taken by Sylvain Margot

## Yaolong and Sylvain’s proposal for CIRMMT Agile Seed Funding 

Yaolong and Sylvain present their proposal for CIRMMT Agile Seed Funding. Their project is entitled The J. S. Bach Chorales Figured Bass Project — Digitizing and Translating Figured Bass into Chord Labels in Symbolic Formats. It consists in using the figured bass, a characteristic numeral notation of the Baroque era, to retrieve harmonic informations from  Bach’s annotated chorales. A dataset of these chorales will be publicly available on GitHub.
The rest of the group makes some comments to improve the quality of the presentation, especially on the notion of harmonic rhythm that might seem quite ambiguous.

## Updates on the Mendelssohn's String Quartets project

Laurent made some corrections in the spreadsheet of the Mendelssohn’s String Quartets Project (https://docs.google.com/spreadsheets/d/1I97esez5-ObIIOPfARn7O739Vh1QI1o1kRarzwl Aedw/edit#gid=0). The rest of the members approve these changes.



# September 20, 2019

Attendees: Sylvain Margot, Néstor Nápoles López, Suzuka Kokubu, Finn Upham, Yaolong Ju, Sam Howes, Ichiro Fujinaga, Tim de Reuse, Laurent Feisthauer

> Notes taken by Sylvain Margot

## First meeting - Introduction of each member

Sylvain is a 3rd year PhD student in Music Theory. He worked during his Master degree on the evolution of cadential syntax in the medieval rondeau between 1250 and 1450 using Digital Humanities tools. He is interested in the evolution of musical languages, and therefore all the questions about tonality.
Sam is a PhD student in Music Theory. He works on the evolution of tonality and does his dissertation on the birth of tonality within Italian instrumental music of the 17th-century. He got particularly interested in this repertoire due to his violin background.
Suzuka is a 1st year PhD student in Music Tech. She has a background in applied physics and piano. She has some knowledge on music analysis. 
Tim is a 3rd year PhD student in Music Tech. He is interested in thematic repetition, large scale structure, and form in music. All these topics have many interactions with tonality.
Néstor works on key detection, modulation, and harmony (especially Roman numeral analysis). He explains that the CTS group has started when several students began to share their programs on extraction of musical features.
Yaolong is interested in chord labeling, leading to the detection of key (while it also works in the other way). He got involved in the CTS group going back and forth between the other members due to inherent ambiguity of key/chord labeling. He wants to translate figured bass to chord labeling, and has begun collecting sources for his project.
Finn is a post-doc student. They have background in music theory and music cognition. They are interested in how people hear pitch and harmony, or more precisely how they don’t hear the same pitch and harmony. They wonder if tonality is really relevant to the question of reception and perception of a piece. They consider music theory history to be very useful to get a better view and confront of our conceptions.
Ichiro has a Master in Music Theory and is a third generation Schenkerian (he studied with Janet Schmalfeldt). 
Laurent is in last year of PhD at the Université de Lille. He works on cadence detection, using machine learning and rules approach, as well as on form detection of string quartets.

## Updates on the Mendelssohn's String Quartets project

Sylvain explains that the group decided to have an annotated dataset of Mendelssohn string quartets. The process began with an Optic Music Recognition flow that exported the pieces in an MusicXML format. It had first to be cleaned before being annotated, and each member got a piece to work on. 
Néstor adds that most annotated datasets are quite small and use specific annotations with which not everyone agrees.
The MusicXML cleaning is due for the end of October. Suzuka could double-check the corrected files. For now, Laurent, Sylvain, Tim and Néstor have finished their task, Yaolong has almost done everything, and Sam is achieving his correction of his quartet’s first movement. The group thinks about participating in ISMIR 2020. 
Tim suggests to apply all our algorithm on our dataset—for example, he could test his pattern detection. It should be not difficult to annotate the music in the CSV corresponding to each piece, based on Markus Neuwirth did for his Beethoven project. 
On the other hand, Néstor and Yaolong tried to run Music21 on the already existing corrected files. It unfortunately crashed which means that we need to do a technical correction onto the MusicXML files (it could be something like a hidden grace note, a wrong measure metric, or anything similar). Sylvain proposes to apply Music21 to all corrected files to see which files should be closely examined and to keep track of what makes the algorithm break.
Ichiro asks which format supports annotations the best. Néstor answers, in that order Humdrum (kern), MEI, and then MusicXML. Tim, then, questions the relevancy of annotating directly in the music and suggests to do it in a different file, like Laurent’s format json. The group agrees to use json for the annotation and to export the music in the 3 main symbolic formats : kern, MusicXML, and MEI. Laurent adds that there is not json standard for annotations because it is highly customizable tool (cf Mark Gotham - Roman analysis and chord labeling). Laurent will send examples of annotations via Slack.
The group proposes to collaborate with Alex’s OMR workflow to check which one does the less mistakes in translating.

## Yaolong's chord labeling developments

Yaolong works on chorals chord labeling based on figured bas. Unfortunately, complete editions only labeled 50% of them, and it even varies within the same cantata: the older editions are more detailed ; the most modern got rid of the figured bass. He might have no choice but to work directly from the source.
The figured bass translation toward chord labeling is very tricky, and Yaolong feels he needs to get more familiar with this notation to better understand how it works.
Finn questions the relationship between figured bass and tonality. Sam answers that they are two different things, as the Roman numeral notation appeared much latter than figured bass.




# May 23, 2019

Attendees: Ich, Glenn (guest), Laurent, Tim, Sylvain, Sam, Nestor, Yaolong

Ich:
Let's be very specific in the documentation of the dataset
What are we annotation? Why?
What are we NOT annotating? WHY? (even more important than what we are annotating)
It happens with code all the time, we annotate what we do but not why we got there, and then someone else in the future (including us) repeats the same errors that got us to make the decisions we did but not document

We have decided the corpus, but not the annotation process and annotation's format

Ich :
What would we say if people ask why Mendelssohn String Quartets?

Sylvain:
Easy-peasy: We were looking to create a small, novel, and complete corpus of a classical(ish) composer. The corpora of Beethoven, Haydn, and Mozart are too big to be annotated in the amount of time we assigned for this project. Mendelssohn has only 6 string quartets so it is a feasible amount of work. We don't want to choose a few string quartets from different composers because, eventually, we want to make a study with different composers and see if they deviate from Mendelssohn, and if those deviations could be considered his "style". We chose string quartets because the form and musical structure is relevant to some of us working with music structure (e.g., sonata form, cadences) while still maintains a challenging and appropiate dataset for other features like keys and harmony.

Nestor:
We could look at what other datasets have done. I think we also may be one of the first datasets of symbolic music with more than 2-3 annotators

Tim:
In the folk songs dataset from Anja Volk et al. they put all the annotators together, in the same room with the same scores, until they reached consensus, and they did reach consensus

How long would it take to annotate the Mendelssohn String Quartets ?

Sam:
Some annotations will be easier than others, we can split in groups for specific annotations

What is the gameplan?

OMR the scores that Laurent got (the 1800s ones)
We need to do some pre-processing on them first, then use PhotoScore
Laurent will start with one movement for testing: OMR and correction
We can divide the rest of the movements between the other folks
After that, we need to agree on the annotations
Do some literature review of other datasets during the meantime
and... start annotating!




# May 16, 2019

Attendees: Laurent, Tim, Sylvain, Sam, Nestor, Yaolong
Regrets: Ich

Discussion about the dataset group project.

Are we going in the direction of String Quartets or Piano Sonatas?

It seems String Quartets
Due to the availability of data, the best would be to choose a classical composer.

Options:
Haydn, Mozart, Beethoven, Mendelssohn, Schubert

Mendelssohn it is!

How to annotate?

American annotation system seems better for this cause because it is more verbose
We haven't decided exactly on what things we are annotating and how we are annotating them, but in principle, something like the ABC Corpus is a good reference

Task for this week: Let's find the available scores (paper and symbolic) of the Mendelssohn String Quartets.




# May 10, 2019

Attendees: Laurent, Yaolong, Silvain, Tim, Nestor
Regrets: Ich

Yaolong:
People in music theory have not paid a lot of attention into the fact that the way we annotate is ambiguous, and this is problematic in a space like machine learning. We can't expect good accuracy with ambiguous annotations.

Silvain:
Some musics may not represent the object of study of the task (tonal music). For example, maybe Bach chorals are not the best corpus for studying harmony and string quartets would be a better corpus. Should we consider that?

Tim:
The inspiration about the task of melodic pattern finding is that if you can find something that is significant, that pattern will probably be repeated in the future. Knowing this information could help us to "fill the gap", "predict the future", "extend the music".

Nestor:
What is the single most relevant feature in finding cadences?

Laurent: Voice-leading!

Yaolong: Voice leading is also important in harmony

Laurent to Silvain:
Why are computers and all the stuff we do important for a music theorist?

Silvain:
The use of computers in music theory is critical. A career of a theorist that analyzes 100 pieces is already productive, however, it doesn't even scratch the surface of what is a musical style. We have a biological limitation to analysis. We can overcome that barrier only with the speed of computers

Nestor:
Is there something we can do together to publish a paper that each of us cannot complete individually?

After discussion at the table, the creation of a dataset with annotations for several of our taks emerged as the way to put us all in the same track.

Maybe, for this, we could have a shared google docs document
