\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

\header {
	title = "Eliyahu v1"
	composer = "Jewish Traditional"
	arranger = "arr. Andy Rosenbaum Feb 2020"
}


\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key g \minor
  \time 6/8
}

% ===== %
% verse %
% ===== %

% TODO: split triplets and straight notes.
sopVerse = \relative g' {
	\partial 4. | bes4 a8 
	| bes4. bes | d4 a8 bes4. 
	| r4. bes4 a8 | g4. g4. | bes4 c8 d4. 
	| r4. d4 c8 | bes4. d4. | ees4 d8 c4. 
	| ees4. d4 c8 | bes4 g'8 fis4 ees8 
	| d4 c8 bes4.
}

altoVerse = \relative g' {
	\partial 4. | bes4 a8 
	| g4. g | fis4 d8 g4.
	| r4. bes4 a8 | g4. g4. | g4 a8 bes4. 

	| r4. d4 c8 | bes4. d4. | c4 bes8 a4. 
	| c4. bes4 a8 | g4 ees'8 d4 c8 
	| bes4 a8 g4.
}

tenorVerse = \relative g' {
	\partial 4. | d4 c8 
	| bes4. bes | a4 d8 bes4. 
%	| r4. d4 c8 | bes4. bes | g4 f8 d4.
	| r4. d4 c8 | bes4. bes | g4 f8 bes4.

	| r4. g4 a8 | bes4. g4. | fis4 g8 a4.
	| fis4. g4 a8 | bes4 c8 | d4 ees8 | d4 c8 | bes4. 
	
}

% also consider ees, and eventually German 6th chord
bassVerse = \relative g {
	\partial 4. | bes4 a8 
	| g4. g | d4 d8 g,4. 
	
%	| bes4 a8 | g4. g | d4 bes8 g4.
%	| bes4 a8 | g4. g | ees4 d8 g,4.

	| r4. bes'4 a8 | g4. ees | d4 c8 bes4.

	| r4. bes4 c8 | d4. bes4. | a4 bes8 c4.
	| a4. bes4 c8 | d4 ees8 | d4 ees8 | e4 fis8 | g4. 
}

words = \lyricmode {
	| e -- li --
	| ya -- hu 
	| ha -- na -- vi |
	| e -- li -- | ya -- hu | ha -- tish -- bi |
	| e -- li -- ya -- hu | e -- li -- ya -- hu |
	| e -- li -- ya -- a -- hu | ha -- gi -- la -- di |

}

% words = \lyricmode {
%	| i -- lu ho -- tzi | ho -- tzi -- a -- nu | ho -- tzi -- a -- nu | mi -- %mitz -- ra -- yim | ho -- tzi -- a -- nu | mi -- mitz -- ra -- yim | day -- e -- | nu |
%}

tenorWords = \lyricmode {
	| i -- lu ho -- tzi 
	| ho -- tzi -- a -- nu 
	| ho -- tzi -- a -- nu 
	| mi -- mitz -- ra -- yim 
	| mi -- mitz -- 
	| ra -- yim 
	| day -- e -- 
	| nu |
}

bassWords = \lyricmode {
	| i -- lu 
	| ho -- tzi 
	| ho -- tzi 
	| a -- nu 
	| mi -- mitz -- 
	| ra -- yim 
	| day -- e -- 
	| nu |
}

% ====== %
% chorus %
% ====== %

sopChorusCommon = \relative d' {
	| fis4 fis 
	| a8 g4( e8)
	| g4 g
	| b8 a4( fis8)
	| a4 a
	| d8 cis4 cis8
	| cis a b cis |
}


sopChorusEndOne = \relative d'' {
	| d8 a fis d |
}

sopChorusEndTwo = \relative d'' {
	| d4 r4 |
}

altoChorusCommon = \relative d' {
	| d4 d
	| fis8 e4.
	| e4 e
	| g8 fis4.
	| fis4 fis
	| a8 a4 a8
	| a8 a g g |
}

altoChorusEndOne = \relative d' {
	| fis4 fis8 d |
}

altoChorusEndTwo = \relative d' {
	| fis4 r |
}

tenorChorusCommon = \relative d' {
	| a4 a 
	| cis8 cis4.
	| cis4 cis 
	| d8 d4.
	| d4 a 
	| b b 
	| cis d8 e |
}

tenorChorusEndOne = \relative d' {
	| fis4 fis8 d |
}

tenorChorusEndTwo = \relative d' {
	| fis4 r |
}

bassChorusCommon = \relative d {
	| d4 d
	| a8 a4.
	| e'4 a,
	| d8 d4.
	| fis,4 fis
	| g g 
	| a e' |
}

bassChorusEndOne = \relative d {
	| d2 |
}

bassChorusEndTwo = \relative d {
	| d4 r |
}

upperChorusWordsCommon = \lyricmode {
	| day- day -- | e -- nu 
	| day- day -- | e -- nu
	| day- day -- | e -- nu day -- 
	| ye -- nu day -- e -- |
}

sopChorusWordsEndOne = \lyricmode {
	| nu day -- e -- nu |
}

altoChorusWordsEndOne = \lyricmode {
	| nu ye -- nu |
}

upperChorusWordsEndTwo = \lyricmode {
	| nu |
}

lowerChorusWordsCommon = \lyricmode {
	| day- day -- | ye -- nu 
	| day- day -- | ye -- nu
	| day- day -- | ye day -- |
}

tenorChorusWordsCommon = {
	\lowerChorusWordsCommon \lyricmode { | day day -- e -- | }
}

tenorChorusWordsEndOne = \lyricmode {
	| nu -ye -- nu |
}

tenorChorusWordsEndTwo = \lyricmode {
	| nu |
}

bassChorusWordsCommon = {
	\lowerChorusWordsCommon \lyricmode { | day -- e -- | }
}

bassChorusWordsEnd = \lyricmode {
	| nu |
}

% ======== %
% in order %
% ======== %

sop = {
	\sopVerse
%	\repeat volta 2 \sopChorusCommon
%	\alternative {
%		{ \sopChorusEndOne }
%		{ \sopChorusEndTwo }
%	}
}

alto = {
	\altoVerse
%	\repeat volta 2 \altoChorusCommon 
%	\alternative {
%		{ \altoChorusEndOne }
%		{ \altoChorusEndTwo }
%	}
}

tenor = {
	\tenorVerse
%	\repeat volta 2 \tenorChorusCommon
%	\alternative {
%		{ \tenorChorusEndOne }
%		{ \tenorChorusEndTwo }
%	}
}

bass = {
	\bassVerse 
%	\repeat volta 2 \bassChorusCommon
%	\alternative {
%		{ \bassChorusEndOne }
%		{ \bassChorusEndTwo }
%	}
}

sopWordsAll = {
	\words
	\upperChorusWordsCommon
	\sopChorusWordsEndOne
	\upperChorusWordsEndTwo 
}

altoWordsAll = { 
	\words 
	\upperChorusWordsCommon 
	\altoChorusWordsEndOne 
	\upperChorusWordsEndTwo 
}

tenorWordsAll = { 
	\tenorWords 
	\tenorChorusWordsCommon 
	\tenorChorusWordsEndOne 
	\tenorChorusWordsEndTwo 
}

bassWordsAll = { 
	\bassWords 
	\bassChorusWordsCommon 
	\bassChorusWordsEnd  
	\bassChorusWordsEnd 
}

mainChorusOne = \relative c' {
	| e8 e e e e e | e d8. c16 b4 b8 | d8 d d d d d | d c8. b16 a4 a8 |
}

mainChorusOneLow = \relative c {
	| e8 e e e e e | e d8. c16 b4 b8 | d8 d d d d d | d c8. b16 a4 a8 |
}

% above chorus options

aboveChorusOneA = \relative c'' {
	| a8 a a a a a | a g8. f16 e4 e8 | f8 f f e e e | e fis8. gis16 a4 a8 |
}

aboveChorusOneB = \relative c'' {
	| a8 a a a a a | gis gis8. gis16 gis4 gis8 | f8 f f e e e | e fis8. gis16 a4 a8 |
}

aboveChorusOneC = \relative c'' {
	| a8 a a a a a | gis gis8. gis16 gis4 gis8 | f8 f f e e e | f e8. d16 c4 c8 |
}

aboveChorusOneD = \relative c'' {
	| a8 a a a a a | gis gis8. gis16 gis4 gis8 | gis8 gis gis f f f | f e8. d16 c4 c8 |
}

% below chorus options

belowChorusOneA = \relative c' {
	| c8 c c c c c | c b8. a16 b4 b8 | b8 b b b b b | b a8. gis16 a4 a8 |
}

belowChorusOneB = \relative c' {
	| c8 c c c c c | c b8. a16 e4 e8 | f8 f f d d d | d e8. f16 e4 e8 |
}

belowChorusOneC = \relative c' {
	| c8 c c c c c | c b8. a16 e4 e8 | f8 f f gis gis gis | f gis8. f16 e4 e8 |
}

belowChorusOneD = \relative c' {
	| c8 c c c c c | c b8. a16 e4 e8 | f8 f f gis gis gis | a gis8. f16 e4 e8 |
}



% bass options

baseChorusOneA = \relative c {
%   | a4. | a4. | b4. | e,4. | b'4. | e,4. | b'4 e,8 | a4. |
%     | a4. | a4. | b4. | e,4. | b'4. | e,4. | e8 fis gis | a4. |
    | a4. a | b e, | b' e, | e8 fis gis a4. |
}

% offbeat options

% Soprano
offBeatChorusOneA = \relative c' {
% 	| r8 c c r8 c c | r8 c r r8 b b | r8 b b r8 b b | r8 b r r8 c c |
	| r8 c c r8 c c | r8 b4 r8 gis gis | r8 gis gis r8 b b | r8 d4 r8 c c |
}

% Tenor
offBeatChorusOneB = \relative c' {
% 	| r8 a a r8 a a | r8 a r r8 gis gis | r8 gis gis r8 gis gis | r8 gis r r8 a a |
	| r8 a a r8 a a | r8 gis4 r8 b b | r8 b b r8 gis gis | r8 gis4 r8 e e |
%	| r8 a a r8 g g | r8 f4 r8 e e | r8 gis gis r8 gis gis | r8 gis4 r8 e e |
}

offBeatChorusOneC = \relative c' {
% 	| r8 e e r8 e e | r8 e r r8 d d | r8 d d r8 d d | r8 f r r8 e e |
	| r8 e e r8 e e | r8 e4 r8 d d | r8 d d r8 d d | r8 f4 r8 e e |
}

% offBeatBa = \lyricmode { | ba ba ba ba | ba ba ba ba | ba ba ba ba | ba ba ba ba | }
offBeatBa = \lyricmode { | ba ba ba ba | ba ba ba | ba ba ba ba | ba ba ba | }

% other

restNotes = { | r4. r | r r | }

basicTum = \lyricmode { | tum -- ba -- la tum -- ba -- la | tum -- ba -- la -- lai -- ka | tum -- ba -- la tum -- ba -- la | tum -- ba -- la -- lai -- ka | }

bassDoom = \lyricmode { | doom doom | doom doom | doom doom | tum -- ba -- la -- la | }

emptyWords = \lyricmode {}

% papa = \lyricmode { | pa pa pa pa | }

% ================== %
% chrous second part %
% ================== %

% Alto
mainChorusTwo = \relative c' {
	| a8 c e a4 a8 | c8 b a e4 e8 | g8 f d b4 b8 | d8 c8 b a4. |
}

aboveChorusTwoA = \relative c' {
	| c8 e a c4 c8 | e8 d c b4 b8 | b8 d c b4 e,8 | f8 e d c4 c8 |
}

aboveChorusTwoB = \relative c' {
	| c8 e a c4 c8 | e8 d c b4 b8 | b8 a gis e4 e8 | f8 e d c4 c8 |
}

aboveChorusTwoC = \relative c' {
	| c8 e a c4 c8 | e8 d c b4 b8 | b8 b b b4 e,8 | f8 e d c4 c8 |
}

aboveChorusTwoD = \relative c' {
	| c8 e a c4 c8 | e8 d c b4 b8 | b8 a g f4 f8 | e8 e e e4 e8 |
}

sopranoChorusTwoA = \relative c' {
	| c8 a c e4 e8 | e8 d c c4 c8 | b8 g a b4 b8 | b8 c d c4. |
}

tenorChorusTwoA = \relative c' {
	| r8 a a r8 c4 | r8 c c r g4 | r8 b b r8 gis4 | gis8 a gis e4. |
}

tenorChorusTwoAWords = \lyricmode { | ba ba ba | ba ba ba | ba ba ba | frey -- lach -- zol -- zayn | }

baseChorusTwoA = \relative c {
	| a4. a | f c' | g e | e8 fis gis a4. |
}

spiel = \lyricmode { | tum -- ba -- la -- lai -- ka | spiel -- ba -- la -- lai -- ka | tum -- ba -- la -- lai -- ka | frey -- lach -- zol -- zayn | }

bassDoomTwo = \lyricmode { | doom doom | doom doom | doom doom | frey -- lach -- zol -- zayn | }

% DENSE

%{ DENSE
sopMusic = { \aboveChorusOneD }
sopWords = \basicTum

altoMusic = { \mainChorusOne \mainChorusTwo }
altoWords = \basicTum

tenorMusic = \belowChorusOneC
% tenorWords = \basicTum

bassMusic = \baseChorusOneA
%}

% OPEN

sopMusic = \transpose c c' { \offBeatChorusOneA \sopranoChorusTwoA }
sopWords = { \offBeatBa \spiel }

altoMusic = { \mainChorusOne \mainChorusTwo }
altoWords = { \basicTum \spiel }

% tenorMusic = \transpose c c, { \offBeatChorusOneB }
tenorMusic = { \offBeatChorusOneB \tenorChorusTwoA }
% tenorWords = { \offBeatBa \tenorChorusTwoAWords }

bassMusic = { \baseChorusOneA \baseChorusTwoA }

% bassWords = { \bassDoom \bassDoomTwo }


allStuff = {
  \new ChoirStaff <<
    \new Lyrics = "sopranos" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "upper" <<
	\set Staff.midiInstrument = "voice oohs"
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sop >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \alto >>
      }
    >>
    \new Lyrics = "altos"
    \new Lyrics = "tenors" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "lower" <<
      \set Staff.midiInstrument = "voice oohs"
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenor >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bass >>
      }
    >>
    \new Lyrics = "basses"
    \context Lyrics = "sopranos" \lyricsto "sopranos" \words
    \context Lyrics = "altos" \lyricsto "altos" \words
    \context Lyrics = "tenors" \lyricsto "tenors" \words
    \context Lyrics = "basses" \lyricsto "basses" \words
  >>
}

% For printed pdf music.
\score {
	\allStuff
	\layout{}
}

% For midi
\score {
	\unfoldRepeats {
		\allStuff
	}
	\midi{ \tempo 4 = 100 }
}
