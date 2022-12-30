           _ � --- �                  _ � --- �
        .�"    ,�,   ~=�_    .�.   .�"          ~=�_
      .    . .OZZZO�    ^g,      .    .��~��.      ^%�   .s%ZO�
          `  ��qZp�' ��  `Z,         `        _.,�  `gZ�  �:ZZ|
      _�g%%oc,  ~ _.,  `  �Z;         _.,©y%Z=-:� .s%Z%L, `OZZYi%g�_
     jOZZ��ZZOL� jOZZ��,  `Zb  _.©y%ZZZZZZZZ%=:� jZZZZZZZb `ZZZZ�ZZZb
    �ZZ?~ ~\ZZZ| |�ZZZZO\ �?Z.�%�ZZZZZZ�*��^�"`' /ZZ�"~"�ZZ\ �T   ~!ZZ�
     Z6f   �ZZZO��|ZZZ^ZZi ]Z1�:-":ZZZ'      _. �OZ/     \ZZL :    |6Z'
 .   `ZZ�._ ~"^Z| �ZZZ;\ZZ �Z�   ��ZZZ�  _�%ZZ� l%! .oZo, ]ZZ��  _�ZZ'   .
  ,    ~^�*�^~.Z���ZZZl ZZ�ZZ1 � �ZZZZ�  ^�!ZZ� :=l dZZZb �ZZ|  ~^"~
   �        g%ZZZ��ZZZZ `�ZZZ� : �ZZZZ:   �lZZ| �;� :ZZZF �ZZ|         .'
    ~�_    �ZZZZ| �ZZZZ  �ZZ�' �  ?ZZZ!    :ZZ�� ��  "�"  dZg�      _�~
       ~"^ :ZZZO��|ZZZ!   `^'  '  `�ZZZ    ��ZZ:  �     ./ZZf ��--`~
           OZZZ� jZ��~  `. _ _. .   ~^�L, YZZZZOzz�� ��:=CO/
     -V!  j��^~     .     ~-��-~    .     `^ʦZ��ZF'��:%CG' . O R G
                     ~�_    T    _�~             ~'  '^"~
                        ~"�=|=�"~
                            �
                            �
                   .--------------------------------�  �
                   :  B I G B L U E   T E R M I N A L  :
                   �  �--------------------------------'

                An oldschool fixed-width pixel font / v1.00


                         1.  What's this?
                         2.  Contents
                         3.  Sizes & display
                         4.  Formats & encodings
                         5.  'Plus' version notes
                         6.  Bonus DOS stuff
                         7.  Credits & acknowledgements
                         8.  Contact
                         9.  Legal stuff



---------------
1. WHAT'S THIS?
===============


   BigBlue Terminal is a monospaced pixel font, designed for use in fixed-
   width textual environments (consoles/terminals, text/code/hex editors and
   so on).  It follows the metrics and dimensions of Windows' old Terminal
   font (at the 9pt/12px size), but the appearance is closer to the classic
   IBM PC text mode character sets.

   At 8x12 pixels, Terminal is nicely compact and useful, but also kind of
   ugly.  Instead, BigBlue Terminal is closely based on IBM's 8x14 EGA/VGA
   charset -- I just like it better.  Basically, that font has been squeezed
   and modified to fit into a 8x12-pixel cell.  For the extended 'Plus'
   version, many additional Unicode characters have been added to support
   international scripts and symbol sets.



-----------
2. CONTENTS
===========


   BigBlue_TerminalPlus.TTF    BigBlue TerminalPlus
                               TrueType font
                               Multi-language Unicode character set

   BigBlue_Terminal_437TT.TTF  BigBlue Terminal 437TT
                               TrueType font
                               Codepage 437 (DOS/OEM-US) mapped to Unicode

   Bigblue_Terminal_437BM.FON  BigBlue Terminal 437BM
                               Windows bitmap format
                               Code page 437 (DOS/OEM-US)

   BLUETERM.F12                Raw bitmap font data

   BLUETERM.COM                TSR font loader for DOS/VGA

   README.TXT                  This file

   LICENSE.TXT                 CC-BY-SA 4.0 license terms



------------------
3. SIZES & DISPLAY
==================


 3.1. Pixel and point sizes
 --------------------------

   The native font size is 8x12.  Since this is a pixel font, it'll look
   best at a size of 12 pixels (or integer multiples of 12), whether you're
   using the bitmap or TrueType versions.  Otherwise you *will* get fugly
   artifacted scaling.

   On Windows, this translate to 9 pt (at the default screen density of 96
   PPI); on Mac, you'll want 12 pt (72 PPI).  Do the math for other screen
   densities.  On newfangled super-high-PPI displays, scaling artifacts
   become less apparent, so you may be able to get away with arbitrary
   sizes.


 3.2. Rendering
 --------------

   Current operating systems usually have subpixel anti-aliasing enabled by
   default: ClearType on Windows, FreeType on Linux, Core Text on Mac OS X.
   This is less than ideal for TrueType pixel fonts, since it may introduce
   a sort of "color fringing" effect in some cases.

   In practice I don't find it *that* noticeable, but it bothers you, you
   can get rid of it.  On Windows, turn ClearType off or use the bitmap
   (.FON) version.  On Linux, there are ways to disable anti-aliasing for
   specific fonts with FreeType.  You'll have to see your docs/the web on
   how to pull that off though.



----------------------
4. FORMATS & ENCODINGS
======================


 4.1. BigBlue Terminal 437TT  (TrueType, CP437 charset)
 ------------------------------------------------------

   This version features the Codepage 437 character set (DOS/OEM-US).  Since
   any TrueType font can (and should) include a Unicode character map, this
   is still a Unicode font, and has multi-platform support as such.

   CP437 can be problematic to map to Unicode, due to characters 00h-1Fh and
   7Fh: they can be interpreted either as control codes, or as graphical
   symbols.  Thus there are two 'canonical' Unicode maps for CP437, and
   software that expects one of them may not play nice with the other one.

   This font covers both bases in the same mapping: the problem characters
   are duplicated so that your program will find them at either placement.
   Windows detects the font as an "OEM/DOS" one, and you can use it in any
   program/environment that understands this charset (including the Command
   Prompt).  The same will be true on other platforms, as long as your
   software is properly configured -- RTFM, GIYF, etc.



 4.2. BigBlue TerminalPlus  (TrueType, extended charset)
 -------------------------------------------------------

   This is more of a "Unicode font" as most people grok the term.  On top of
   the CP437 range, this version supports extended Latin, Greek, Cyrillic
   and Hebrew scripts plus a bunch of additional glyphs and Unicode symbols.

   There are 782 characters in total (more than the Windows Glyph List 4 --
   in fact the entire WGL4 range is there).  Some were based on various
   international codepages, others were drawn entirely by hand to match the
   visual style.  A handful of the cp437 characters had to be remapped (see
   the next section), but they're all still around as well.



 4.3. BigBlue Terminal 437BM  (Windows bitmap, CP437 charset)
 ------------------------------------------------------------

   A straight bitmap version of the DOS/CP437 charset.  This may still be
   more useful than 437TT in certain situations:


   *  You don't need to modify the registry to use it in the Command Prompt
      (or any console window).

   *  .FON isn't Unicode, so this version can force the CP437 encoding on
      programs like Notepad, which insist on failing miserably otherwise.

   *  Bitmap fonts aren't subject to ClearType subpixel anti-aliasing.



-------------------------------------
5. 'PLUS' VERSION CHARACTER MAP NOTES
=====================================


   If you care about this sort of thing, you can use your favorite font
   viewer to see the full character range.  Windows has charmap.exe (I like
   SIL ViewGlyph better), OS X has Font Book, etc.  A few things that may be
   of interest about the expanded 'Plus' character mapping:


   *  Alternate number forms: there's a flat-top "3" mapped to U+01B7
      ('Latin capital letter Ezh'), which is more easily distinguished from
      the Cyrillic letter Ze.  Also, two alternative zeroes (dotted and
      slashed) are mapped to U+2299 ('circled dot operator') and U+2300
      ('diameter symbol') respectively.

   *  Cursor shapes: Unicode character U+2581 ('lower one eight block') can
      be used to mimic the classic text-mode cursor appearance.  U+2584
      ('lower half block') and U+2588 ('full block') could also stand in for
      those respective cursor forms, too.

   *  The 'Plus' version includes a full Greek alphabet, which takes over
      the code points that Unicode assigns to the Greek/Math characters from
      DOS codepage 437.  Instead of just dropping the CP437 originals, I
      tried to preserve them at remapped code points that make *some* sense.
      Here's what's changed:


      CP437     Canonical mapping from         Modified 'Plus' mapping
      Char      CP437 to Unicode               from CP437 to Unicode
      -------   ----------------------------   --------------------------
      � (E0h)   U+03B1 'Greek small Alpha'     U+0251 'Latin small Alpha'
      � (E1h)   U+00DF 'Latin small Sharp S'   U+03D0 'Greek Beta symbol'
      � (E2h)   U+0393 'Greek capital Gamma'   U+1D26 'Small capital Gamma'
      � (E3h)   U+03C0 'Greek small Pi'        U+1D28 'Small capital Pi'
      � (E4h)   U+03A3 'Greek capital Sigma'   U+2211 'N-ary Summation'
      � (E5h)   U+03C3 'Greek small Sigma'     U+01A1 'Small o with horn'
      � (E7h)   U+03C4 'Greek small Tau'       U+1D1B 'Small capital T'
      � (E8h)   U+03A6 'Greek capital Phi'     U+0278 'Latin small Phi'
      � (E9h)   U+0398 'Greek capital Theta'   U+03F4 'Capital Theta symbol'
      � (EAh)   U+03A9 'Greek capital Omega'   U+2126 'Ohm symbol'
      � (EBh)   U+03B4 'Greek small Delta'     U+1E9F 'Latin small Delta'
      � (EDh)   U+03C6 'Greek small Phi'       U+2205 'Empty set'
      � (EEh)   U+03B5 'Greek small Epsilon'   U+2208 'Element of'



------------------
6. BONUS DOS STUFF
==================


   Yes, you can get BigBlue Terminal working in actual DOS too, because you
   are just THAT oldschool!  The following files will let you do that on any
   VGA-compatible DOS machine (or in DOSBox, PCEm and so on).
   
   
   *  BLUETERM.COM:  a TSR program (courtesy of ripsaw8080) that gives you
      a 640x480 text mode with the 8x12 font -- 80 rows by 40 columns.  It
      persists across mode changes, and I find it nice to use in DOSBox,
      since 640x480 is a square-pixel resolution and doesn't get mangled by
      aspect correction.
   
   *  BLUETERM.F12:  the raw bitmap font data, usable with any font-loading
      program such as Yossi Gil's LOADFONT (from the widespread FNTCOL16
      archive).  You'll typically get the standard 400-line text mode, and
      with a 12-scanline font this gives you 33 rows of text.


-----------------------------
7. CREDITS & ACKNOWLEDGEMENTS
=============================


   - Fonts, documentation and ASCII logo by VileR.
   
   
   THANKS TO:
   ----------
   
   - ripsaw8080, for providing the code for the TSR DOS version (and for
     granting permission to include it here)
   
   - Rebecca G. Bettencourt/Kreative Korp, for responding to my inquiries
     with a surprise open-source release of the awesome Bits'n'Picas bitmap-
     to-outline converter
   
   
   TOOLS USED:
   -----------
   
   - Bitmap font editing: Fony 1.4.7 by hukka <http://hukka.ncn.fi/?fony>
     
   - Bitmap-to-outline vectorization:  Bits'n'Picas by Kreative Korp
     <https://github.com/kreativekorp/bitsnpicas>
     
   - TrueType font editing, fine-tuning, re-encoding etc.: FontForge by
     George Williams and the FontForge Project <http://fontforge.github.io/>
   
   - Windows .TTF testing/viewing: SIL ViewGlyph v1.81.0 by Bob Hallissy/
     SIL International <http://scripts.sil.org/ViewGlyph_home>



----------
8. CONTACT
==========


   I can be reached at:   email - viler -AT- int10h -DOT- org
                            www - http://int10h.org
                           blog - http://8088mph.blogspot.com

   Spam and/or excessive dumbness will be ignored, deleted, spindled and
   mutilated.
      

--------------
9. LEGAL STUFF
==============


   BigBlue Terminal is licensed under a Creative Commons Attribution-
   ShareAlike 4.0 International License.

   You should have received a copy of the license along with this work. If
   not, see <http://creativecommons.org/licenses/by-sa/4.0/>.

                                                              (c) 2015 VileR
## Which font?

### TL;DR

* Pick your font family and then select from the `'complete'` directory.
  * If you are on Windows pick a font with the `'Windows Compatible'` suffix.
    * This includes specific tweaks to ensure the font works on Windows, in particular monospace identification and font name length limitations
  * If you are limited to monospaced fonts (because of your terminal, etc) then pick a font with the `'Mono'` suffix.
    * This denotes that the Nerd Font glyphs will be monospaced not necessarily that the entire font will be monospaced

### Ligatures

By the *Nerd Font* policy, the variant with the `'Mono'` suffix is not supposed to have any ligatures.
Use the non-*Mono* variants to have ligatures.

### Explanation

Once you narrow down your font choice of family (`Droid Sans`, `Inconsolata`, etc) and style (`bold`, `italic`, etc) you have 2 main choices:

#### `Option 1: Download already patched font`

 * download an already patched font from the `complete` folder
   * This is most likely the one you want. It includes **all** of the glyphs from all of the glyph sets. Only caution here is that some fonts have glyphs in the _same_ code point so to include everything some had to be moved to alternate code points.

#### `Option 2: Patch your own font`

 * patch your own variations with the various options provided by the font patcher (see each font's readme for full list of combinations available)
   * This is the option you want if the font you use is _not_ already included or you want maximum control of what's included
   * This contains a list of _all permutations_ of the various glyphs. E.g. You want the font with only [Octicons][octicons] or you want the font with just [Font Awesome][font-awesome] and [Devicons][vorillaz-devicons]. The goal is to provide every combination possible in this folder.


For more information see: [The FAQ](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#which-font)


[vim-devicons]:https://github.com/ryanoasis/vim-devicons
[vorillaz-devicons]:https://vorillaz.github.io/devicons/
[font-awesome]:https://github.com/FortAwesome/Font-Awesome
[octicons]:https://github.com/primer/octicons
[gabrielelana-pomicons]:https://github.com/gabrielelana/pomicons
[Seti-UI]:https://atom.io/themes/seti-ui
[ryanoasis-powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
[SIL-RFN]:http://scripts.sil.org/cms/scripts/page.php?item_id=OFL_web_fonts_and_RFNs#14cbfd4a


## Variations (Combinations)

> The combinations and total number of combinations are provided here for reference if you want to create your own variation of a patched Nerd Font.

### Why aren't all variations included ?

Combinations are no longer included by default because of the large inflation in size it caused the Repository _and_ the amount of time it takes to rebuild all of the combinations. This issue would exponentially get worse as the numbers of Fonts and Glyph Sets provided increase.


```sh
# 4094 Possible Combinations:

./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesome
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --windows
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesome
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --use-single-width-glyphs
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesome
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --windows
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesome
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerline
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesome
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --windows
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesome
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs --material
./font-patcher BigBlue_Terminal_437TT.TTF  --use-single-width-glyphs
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesome
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --windows --material
./font-patcher BigBlue_Terminal_437TT.TTF  --windows
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesome
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --octicons
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontlogos
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons --material
./font-patcher BigBlue_Terminal_437TT.TTF  --pomicons
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powerlineextra
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesomeextension --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesomeextension --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesomeextension --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesomeextension --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesomeextension --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesomeextension --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesomeextension --material
./font-patcher BigBlue_Terminal_437TT.TTF  --fontawesomeextension
./font-patcher BigBlue_Terminal_437TT.TTF  --powersymbols --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powersymbols --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --powersymbols --material
./font-patcher BigBlue_Terminal_437TT.TTF  --powersymbols
./font-patcher BigBlue_Terminal_437TT.TTF  --weather --material
./font-patcher BigBlue_Terminal_437TT.TTF  --weather
./font-patcher BigBlue_Terminal_437TT.TTF  --material
```