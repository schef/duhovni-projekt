%%%%%%%%%%%%
%% CONFIG %%------------------------------------------------------------------------------
%%%%%%%%%%%%

#(set-default-paper-size "c5")																		%format papira

%%%%%%%%%%%%%%%%
%% STAFF SIZE %% -------------------------------------------------------------------------
%%%%%%%%%%%%%%%%

myStaffSize = #16
#(set-global-staff-size myStaffSize)

%%%%%%%%%%%%%%%%%%%%%%%%%
%% USER DEF. FUNCTIONS %%-----------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%

%BREATHEMOJ
\layout { 
  \context {
    \Voice
    \override BreathingSign #'font-name = #"Helvetica" 						%font za zarez
    \override BreathingSign #'font-size = #8											%velicina fonta za zarez
    \override BreathingSign #'text = \markup { \raise #0.2 "," }	%stavi zarez
    \override BreathingSign #'color = #blue												%boja zareza
	}

	\context {
    \Score markFormatter = #format-mark-box-numbers								%box oko broja
    %\Score markFormatter = #format-mark-circle-numbers						%krug oko broja
    \override RehearsalMark #'self-alignment-X = #CENTER					%pozicija broja na zarez
    \override RehearsalMark #'color = #blue												%boja rehearsal marka
  }
}

breathemoj = {
  \override Score.RehearsalMark #'extra-spacing-width = #'(0 . 0)
  \override Score.RehearsalMark #'extra-spacing-height = #'(-inf.0 . +inf.0) 
  \once \override Score.RehearsalMark #'X-offset = #0.05
  \once \override Score.RehearsalMark #'Y-offset = #-1.5
  \once \override Score.RehearsalMark #'outside-staff-priority = #1 
  %\override Score.RehearsalMark #'break-align-symbols = #'(breathing-sign)
  \mark \default
  \breathe
}

%LEFT
left = { \once \override LyricText #'X-offset = #-2.8 }					% \left "S to" -- bom
																																%snipet 737

%%%%%%%%%%%%
%% HEADER %% -----------------------------------------------------------------------------
%%%%%%%%%%%%

\header {
  %title = \markup { \fontsize #4 \title }
  title = \markup { \title }
  subtitle = \markup { \sans \subtitle }
  copyright = \markup { \sans \copyright }
  tagline = "" 
}

%%%%%%%%%%%
%% PAPER %% ------------------------------------------------------------------------------
%%%%%%%%%%%
 
\paper {
#(define fonts
	(make-pango-font-tree "JohnSans Medium Pro"										;roman, default
												"Lilypond JohnSans White Pro"						;\sans
												"Lilypond JohnSans Medium Pro"					;\typewriter
												(/ myStaffSize 20)))

indent = 0																											%da li da uvuce prvi red
%annotate-spacing = ##t																					%prikaži razmake na papiru

%FIXED VERTICAL SPACING
top-margin = 0\mm											%gornja margina od ruba papira do područja za print
bottom-margin = 10\mm									%donja margina od područja za print do dna 
%ragged-bottom = ##f
%ragged-last-bottom = ##t

%FIXED HORIZONTAL SPACING
left-margin = 20\mm										%leva margina od ruba papira do pocetka crtovlja
right-margin = 20\mm									%desna margina od crtovlja do ruba papira

%FLEXIBLE VERTICAL SPACING
%#'basic-distance = \mm
%#'minimum-distance = \mm
%#'padding = \mm
%#'stretchability = \mm

markup-system-spacing #'padding = 7\mm
%markup-system-spacing #'stretchability = #5

%score-markup-spacing #'padding = #5

%score-system-spacing #'padding = #5
%score-system-spacing #'stretchability = #5

%system-system-spacing #'minimum-distance = #1
%system-system-spacing #'padding = #1
%system-system-spacing #'stretchability = #0

%markup-markup-spacing #'padding = #3

%last-bottom-spacing #'padding = #5

%top-system-spacing #'padding = #17.5
%top-markup-spacing #'padding = #2

%FLEXIBLE HORIZONTAL SPACING

%PRIKAZ BROJA STRANICA
print-page-number = ##f
%first-page-number = #16
%print-first-page-number = ##t
%auto-first-page-number = ##t
}
