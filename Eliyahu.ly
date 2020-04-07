\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

\header {
	title = "Eliyahu and Miriam v4"
	composer = "Jewish Traditional"
	arranger = "arr. Andy Rosenbaum Pesach 5780 (2020)"
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

% ====== %
% chorus %
% ====== %

sopChorus = \relative g' {
	\partial 4. bes4 a8 
	| g4. g | fis4 d8 g4.
    
	| r4. bes4 a8 | g4. g4. | bes4 c8 d4. 
    
	| r4. d4 c8 | bes4. d4. | c4 bes8 a4. 
	| c4. bes4 a8 | \tuplet 4/3 { g4 ees' d c } 
	| bes4 a8 g4.
}

altoChorus = \relative g' {
	\partial 4. g4 fis8 
	| d4. d | d4 d8 d4.
    
	| r4. g4 fis8 | d4. d4. | g4 a8 bes4. 

	| r4. g4 g8 | g4. g4. | a4 g8 f4. 
    
	| a4. g4 fis8 | \tuplet 4/3 { g4 g g fis }
	| g4 fis8 d4.
}

tenorChorus = \relative g {
	\partial 4. bes4 a8 
	| bes4. bes | a4 a8 bes4. 
%	| r4. d4 c8 | bes4. bes | g4 f8 d4.
	| r4. bes4 a8 | bes4. bes | d4 c8 bes4.

	| r4. bes4 bes8 | bes4. bes4. | a4 bes8 c4.

%	| c4. bes4 c8 | d4 ees8 | fis4 g8 | g4 fis8 | g4. 

	| a4. bes4 c8 | \tuplet 4/3 { bes4 bes bes a } 
    | g4 a8 bes4. 
	
}

% also consider ees, and eventually German 6th chord
bassChorus = \relative g {
	\partial 4. bes4 a8 
	| g4. g | d4 d8 g4. 
	
%	| bes4 a8 | g4. g | d4 bes8 g4.
%	| bes4 a8 | g4. g | d4 d8 g,4.

	| r4. bes4 a8 | g4. d | d4 f8 f4.

	| r4. ees4 ees8 | ees4. ees4. | f4 f8 f4.

%	| a4. bes4 c8 | d4 cis8 | d4 ees8 | e4 fis8 | g4. 

%	| a4. g4 a8 | bes4 c8 | d4 ees8 | e4 fis8 | g4. 

	| fis4. g4 d8 | \tuplet 4/3 { ees4 cis d d }
    | d4 d8 g4. 
}

wordsChorus = \lyricmode {
	E -- li --
	| ya -- hu 
	| ha -- na -- vi
	| E -- li -- 
    | ya -- hu 
    | ha -- tish -- bi 
	| E -- li -- 
    | ya -- hu 
    | E -- li -- 
    | ya -- hu 
	| E -- li -- 
    | ya -- a -- hu ha -- 
    | gi -- la -- di 
}

wordsChorusM = \lyricmode {
	Mi -- ri --
	| am  ha 
	| n' -- vi' -- ah
	| oz v' --
    | zim -- rah 
    | b' -- ya -- da
	| Mi -- ri -- 
    | am tir --
    | kod i --
    | ta -- nu
	| l' ta -- ke -- e -- en
    | et ha --
    | o -- lam
}

% Miriam tirkod itanu letaken et ha-olam.Bim’hera veyameinu hi tevi’einuel mei ha-yeshua.

% https://www.ritualwell.org/ritual/miriam-ha-nviah-1
% https://www.truah.org/wp-content/uploads/TrHaggadah/OSOTS-15-elijah.pdf
% First part of Miriam
	% | Mi -- ri -- 
    % | am tir --
    % | kod i --
    % | ta -- nu
	% | l' hag -- di -- i -- il
    % | zim -- rat
    % | o -- lam

% ===== %
% verse %
% ===== %

sopVerse = \relative g' {
	% bim herah
	  r4 c8 c8
    | c4. bes8
    | a8 bes8 c4~
    
    % ya-avo
    | c4 d8 ees8
    | d4. c8
    | bes8 a8 g4~
    
    % im mashiach 1
	  g4 c8 c8
    | c4. bes8
    | a8 bes8 c4~
    
    % im mashiach 2
    | c4 d8 ees8
    | d4. c8
    | bes8 a8 g4~
}

altoVerse = \relative g' {
	% bim herah
	  r4 g8 g8
    | g4. g8
    | g8 g8 g4~
    
    % ya-avo
    | g4 g8 g8
    | fis4. g8
    | g8 d8 d4~
    
    % im mashiach 1
	  d4 g8 g8
    | g4. g8
    | g8 g8 aes4~
    
    % im mashiach 2
    | aes4 g8 g8
    | fis4. g8
    | g8 fis8 d4
}

tenorVerse = \relative g' {
	% bim herah
	  r4 ees8 ees8
    | ees4. ees8
    | ees8 ees8 ees4~
    
    % ya-avo
    | ees4 d8 cis8
    | d4. ees8
    | d8 c8 bes4~
    
	% im mashiach 1
	  bes4 ees8 ees8
    | ees4. ees8
    | ees8 ees8 ees4~
    
    % im mashiach 2
    | ees4 d8 d8
    | c4. c8
    | c8 c8 bes4
}

bassVerse = \relative g {
	% bim herah
	  r4 c8 c8
    | c4. c8
    | c8 c8 bes4~
    
    % ya-avo
    | bes4 a8 a8
    | a4. g8
    | g8 fis8 g4~
    
    % im mashiach 1
	  g4 c8 c8
    | c4. c8
    | c8 c8 c4~
    
    % im mashiach 2
    | c4 bes8 a8
    | a4. d,8
    | e8 fis8 g4
}

wordsVerse = \lyricmode {
	bim' -- he -- 
    | ra v' -- 
    | ya -- mei -- nu~
    | ya -- a -- 
    | vo e -- 
    | le -- ei -- nu~
    
    im ma -- shi -- ach ben Da -- vid~
    
    im ma -- shi -- ach ben Da -- vid
}

wordsVerseM = \lyricmode {
	bim' -- he -- 
    | ra v' -- 
    | ya -- mei -- nu~
    
    | hi -- t' -- 
    | vi -- i -- 
    | e -- ei -- nu~
    
    el me -- ei ha -- y' -- shu -- ah
    
    el me -- ei ha -- y' -- shu -- ah
}


% Miriam tirkod itanu l'taken et ha-olam.
% Bimheyrah v'yameynu hi t'vi'einu el mey ha-y'shuah.

% ta vi ei nu
% el  mey ha y' shuah (2x)


% ======== %
% in order %
% ======== %

sop = {
	\repeat volta 2 {
        \tempo 4. = 65
        \time 6/8
        \sopChorus

        \tempo 4 = 65
        \time 2/4
        \sopVerse
    }
}

alto = {
	\repeat volta 2 {
		\altoChorus
    	\altoVerse
    }
}

tenor = {
	\repeat volta 2 {
		\tenorChorus
    	\tenorVerse
    }
}

bass = {
	\repeat volta 2 {
		\bassChorus
    	\bassVerse
    }
}


allStuff = {
\transpose g e {
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
    % \context Lyrics = "sopranos" \lyricsto "sopranos" \words
    \context Lyrics = "altos" { 
    	\lyricsto "altos" { 
        <<
        	{ \wordsChorus \wordsVerse }
            \new Lyrics = "miriam" \with { alignBelowContext = "altos" } {
            	\set associatedVoice = "altos"
                \wordsChorusM \wordsVerseM
            }
        >>
		}
    }
    
    % \context Lyrics = "tenors" \lyricsto "tenors" \words
    \context Lyrics = "basses" {
    	\lyricsto "basses" {
        <<
    		{ \wordsChorus \wordsVerse }
            \new Lyrics = "miriam" \with { alignBelowContext = "basses" } {
            	\set associatedVoice = "basses"
                \wordsChorusM \wordsVerseM
        	}
        >>
		}
	}
  >>
  }
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
	\midi{ }
}
