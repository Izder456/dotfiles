 ----------------------
  Ubuntu Font Family
 ======================

The Ubuntu Font Family are a set of matching new libre/open fonts in
development during 2010--2011.  And with further expansion work and
bug fixing during 2015.  The development is being funded by
Canonical Ltd on behalf the wider Free Software community and the
Ubuntu project.  The technical font design work and implementation is
being undertaken by Dalton Maag.

Both the final font Truetype/OpenType files and the design files used
to produce the font family are distributed under an open licence and
you are expressly encouraged to experiment, modify, share and improve.

  http://font.ubuntu.com/

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
# 2046 Possible Combinations:

./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontlogos
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --octicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontlogos
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesome
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontlogos
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --octicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontlogos
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --windows
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontlogos
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --octicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontlogos
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesome
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontlogos
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --octicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontlogos
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --pomicons
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powerlineextra
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --powersymbols
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --weather --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --weather
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs --material
./font-patcher UbuntuMono-R.ttf  --use-single-width-glyphs
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontlogos
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --pomicons
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --octicons
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontlogos
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --pomicons
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesome
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontlogos
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --pomicons
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --octicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --octicons --material
./font-patcher UbuntuMono-R.ttf  --windows --octicons
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --windows --fontlogos
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --windows --pomicons --material
./font-patcher UbuntuMono-R.ttf  --windows --pomicons
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --windows --powerlineextra
./font-patcher UbuntuMono-R.ttf  --windows --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --windows --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --windows --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --windows --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --windows --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --windows --powersymbols
./font-patcher UbuntuMono-R.ttf  --windows --weather --material
./font-patcher UbuntuMono-R.ttf  --windows --weather
./font-patcher UbuntuMono-R.ttf  --windows --material
./font-patcher UbuntuMono-R.ttf  --windows
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontlogos
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --pomicons
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --octicons
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontlogos
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --pomicons
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontawesome --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesome --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesome --weather
./font-patcher UbuntuMono-R.ttf  --fontawesome --material
./font-patcher UbuntuMono-R.ttf  --fontawesome
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontlogos
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons --material
./font-patcher UbuntuMono-R.ttf  --octicons --pomicons
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --octicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --octicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --octicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --octicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --octicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --octicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --octicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --octicons --weather --material
./font-patcher UbuntuMono-R.ttf  --octicons --weather
./font-patcher UbuntuMono-R.ttf  --octicons --material
./font-patcher UbuntuMono-R.ttf  --octicons
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --pomicons
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontlogos --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontlogos --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --fontlogos --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontlogos --weather --material
./font-patcher UbuntuMono-R.ttf  --fontlogos --weather
./font-patcher UbuntuMono-R.ttf  --fontlogos --material
./font-patcher UbuntuMono-R.ttf  --fontlogos
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powerlineextra
./font-patcher UbuntuMono-R.ttf  --pomicons --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --pomicons --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --pomicons --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --pomicons --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --pomicons --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --pomicons --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --pomicons --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --pomicons --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --pomicons --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --pomicons --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --pomicons --powersymbols
./font-patcher UbuntuMono-R.ttf  --pomicons --weather --material
./font-patcher UbuntuMono-R.ttf  --pomicons --weather
./font-patcher UbuntuMono-R.ttf  --pomicons --material
./font-patcher UbuntuMono-R.ttf  --pomicons
./font-patcher UbuntuMono-R.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --powerlineextra --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --powerlineextra --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --powerlineextra --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --powerlineextra --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --powerlineextra --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --powerlineextra --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --powerlineextra --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --powerlineextra --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --powerlineextra --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --powerlineextra --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --powerlineextra --powersymbols
./font-patcher UbuntuMono-R.ttf  --powerlineextra --weather --material
./font-patcher UbuntuMono-R.ttf  --powerlineextra --weather
./font-patcher UbuntuMono-R.ttf  --powerlineextra --material
./font-patcher UbuntuMono-R.ttf  --powerlineextra
./font-patcher UbuntuMono-R.ttf  --fontawesomeextension --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesomeextension --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --fontawesomeextension --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --fontawesomeextension --powersymbols
./font-patcher UbuntuMono-R.ttf  --fontawesomeextension --weather --material
./font-patcher UbuntuMono-R.ttf  --fontawesomeextension --weather
./font-patcher UbuntuMono-R.ttf  --fontawesomeextension --material
./font-patcher UbuntuMono-R.ttf  --fontawesomeextension
./font-patcher UbuntuMono-R.ttf  --powersymbols --weather --material
./font-patcher UbuntuMono-R.ttf  --powersymbols --weather
./font-patcher UbuntuMono-R.ttf  --powersymbols --material
./font-patcher UbuntuMono-R.ttf  --powersymbols
./font-patcher UbuntuMono-R.ttf  --weather --material
./font-patcher UbuntuMono-R.ttf  --weather
./font-patcher UbuntuMono-R.ttf  --material
```