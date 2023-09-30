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
  title = "Ich will dir danken, Herr"
  subtitle = "EG 291 (Original in D-Dur)"
  composer = \markup \right-column {
    "Text: Psalm 108, 4-6"
    "Melodie: Paul Ernst Ruppel 1964"
  }
  tagline = ""
}

\score {
  <<
    \chords
    {
      \germanChords

      % Refrain
      b1 b es b
      g:m es f b

      %
      es f:m7 as:7 f2 g2
      c1:m g:m7 as c2:m f
    }

    \new Staff
    {
      \new Voice = "melody" {
        \relative c'
        {
          \numericTimeSignature \time 2/2
          \key b \major

          % Refrain
          b4 c d f( |
          f) f f2 |
          g4 f es f( |
          f) f r2 | \break

          b,4 c d f( |
          f) f2 d4 |
          c b g b(
          b) b^"(Fine)" r2 \bar "|." \break

          % Verse
          b4 es f g( |
          g) g4 g2 |
          b4 g f g( |
          g) g g2 | \break

          es4 f g b( |
          b)  b2 c4( |
          c) b2 as4 |
          b g  f2 \bar "||"
        }
      }
    }

    \new Lyrics \lyricsto "melody"
    {
      \set stanza = "Refrain: "
      Ich will dir dan -- ken, Herr,
      un -- ter den Völ -- kern:
      ich will dir lob -- sin -- gen
      un -- ter den Leu -- ten.

      <<
        {
          \set stanza = "1. "
          Denn dei -- ne Gna -- de reicht,
          so weit der Him -- mel ist,
          und dei -- ne Wahr -- heit,
          so weit die Wol -- ken gehn.
        }

        \new Lyrics
        {
          \set associatedVoice = "melody"
          \set stanza = "2. "
          Herr Gott, er  he -- be weit
          ü -- ber den Him -- mel dich
          und dei -- ne Eh -- re
          weit ü -- ber al -- le Land.
        }
        \new Lyrics
        {
          \set associatedVoice = "melody"
          \set stanza = "3. "
          Ehr sei dem Va -- ter Gott,
          Ehr sei dem Soh -- ne Gott,
          Ehr sei dem Heil -- gen Geist,
          Gott in E -- wig -- keit.
        }
      >>
    }
  >>
}