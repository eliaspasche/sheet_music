%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LilyPond Header
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.25.7"
\language "deutsch"
\pointAndClickOff

\paper {
  #(set-default-paper-size "a4")
  system-system-spacing.minimum-distance = #15
  system-system-spacing.padding = #3
}

\layout {
  indent = 0\cm

  \context {
    \Lyrics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.minimum-distance = #8
  }

  \context
  {
    \ChordNames
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.minimum-distance = #4
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% End of header
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header
{
  title = "Wo Menschen sich vergessen"
  subtitle = "(Da berühren sich Himmel und Erde)"
  composer = \markup \right-column {
    "Text: Thomas Laubach 1989"
    "Melodie: Christoph Lehmann 1989"
  }
  tagline = ""
}

\score {
  <<
    \chords
    {
      \germanChords

      % Verse
      r4 |
      f1 g:m7 c a:m7
      d:m7 g:m7 c:m7

      f2:sus4 f:7 b1
      c a:m7 d:m7 g:m7
      c b2 g:m c b/c
      f1 b2./f

    }

    \new Staff
    {
      \new Voice = "melody" {
        \relative c'
        {
          \numericTimeSignature \time 2/2
          \key f \major

          % Verse
          \partial 4 c4 |
          c f f f |
          f g r g |
          g2 g4 g | \break
          g a r2 |
          r4 a a a |
          a b r c |
          g2 r | \break

          % Refrain
          r4  f8[ f] a[ b] c4 |
          c b r a |
          g c, \tuplet 3/2 {e f g} | \break
          g a f e8 f |
          r4 f8[ f] a[ b] c4 |
          c b r a |
          g c, r c |
          d f b a |
          g2 f4 f( |
          f) r2. |
          r \bar "|."
        }
      }
    }

    \new Lyrics \lyricsto "melody"
    {
      <<
        {
          \set stanza = "1. "
          Wo Men -- schen sich ver -- ges -- sen,
          die We -- ge ver -- las -- sen
          und neu be -- gin -- nen, ganz neu,

        }

        \new Lyrics
        {
          \set associatedVoice = "melody"
          \set stanza = "2. "
          Wo Men -- schen sich ver -- schen -- ken,
          die Lie -- be be -- den -- ken
          und neu be -- gin -- nen, ganz neu,
        }

        \new Lyrics
        {
          \set associatedVoice = "melody"
          \set stanza = "3. "
          Wo Men -- schen sich ver -- bün -- den,
          den Hass ü -- ber -- win -- den
          und neu be -- gin -- nen, ganz neu,
        }

      >>

      \set stanza = "Refrain: "
      da be -- rüh -- ren sich Him -- mel und Er -- de,
      dass Frie -- de wer -- de un -- ter uns,
      da be -- rüh -- ren sich Him -- mel und Er -- de,
      dass Frie -- de wer -- de un -- ter uns.
    }


  >>
}