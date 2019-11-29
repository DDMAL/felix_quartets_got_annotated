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
