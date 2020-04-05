\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

\header {
	title = "Eliyahu v2"
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
	\partial 4. bes4 a8 
	| g4. g | fis4 d8 g4.
    
	| r4. bes4 a8 | g4. g4. | bes4 c8 d4. 
    
	| r4. d4 c8 | bes4. d4. | c4 bes8 a4. 
	| c4. bes4 a8 | \tuplet 4/3 { g4 ees' d c } 
	| bes4 a8 g4.
}

altoVerse = \relative g' {
	\partial 4. g4 fis8 
	| d4. d | d4 d8 d4.
    
	| r4. g4 fis8 | d4. d4. | g4 a8 bes4. 

	| r4. bes4 a8 | g4. bes4. | a4 g8 f4. 
    
	| a4. g4 fis8 | \tuplet 4/3 { d4 g g fis }
	| g4 fis8 d4.
}

tenorVerse = \relative g {
	\partial 4. bes4 a8 
	| bes4. bes | a4 a8 bes4. 
%	| r4. d4 c8 | bes4. bes | g4 f8 d4.
	| r4. bes4 a8 | bes4. bes | d4 c8 bes4.

	| r4. bes4 c8 | d4. d4. | a4 bes8 c4.

%	| c4. bes4 c8 | d4 ees8 | fis4 g8 | g4 fis8 | g4. 

	| a4. bes4 c8 | \tuplet 4/3 { bes4 bes bes a } 
    | g4 a8 bes4. 
	
}

% also consider ees, and eventually German 6th chord
bassVerse = \relative g {
	\partial 4. bes4 a8 
	| g4. g | d4 d8 g4. 
	
%	| bes4 a8 | g4. g | d4 bes8 g4.
%	| bes4 a8 | g4. g | d4 d8 g,4.

	| r4. bes4 a8 | g4. d | d4 f8 f4.

	| r4. ees4 ees8 | ees4. ees4. | f4 f8 f4.

%	| a4. bes4 c8 | d4 cis8 | d4 ees8 | e4 fis8 | g4. 

%	| a4. g4 a8 | bes4 c8 | d4 ees8 | e4 fis8 | g4. 

	| fis4. g4 d8 | \tuplet 4/3 { d4 cis d d }
    | d4 d8 g4. 
}

words = \lyricmode {
	e -- li --
	| ya -- hu 
	| ha -- na -- vi
	| e -- li -- 
    | ya -- hu 
    | ha -- tish -- bi 
	| e -- li -- 
    | ya -- hu 
    | e -- li -- 
    | ya -- hu 
	| e -- li -- 
    | ya -- a -- hu ha -- 
    | gi -- la -- di 

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
