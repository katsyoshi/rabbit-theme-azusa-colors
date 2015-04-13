a = '#FFFFD5'
zu = '#2c3e50'
sa = '#1abc9c'
nyan = '#16a085'

@default_foreground = a
@default_background = zu

@default_headline_line_color = a

@default_item1_mark_color = sa
@default_item2_mark_color = sa
@default_item3_mark_color = sa

@default_enum_item1_mark_color = sa
@default_enum_item2_mark_color = sa

@default_description_item1_mark_color = sa
@default_description_item2_mark_color = sa

@image_caption_color = sa
@description_term_line_color = a
@preformatted_fill_color = sa
@block_quote_fill_color = sa
@default_block_quote_item1_mark_color = zu

@table_head_fill_color = sa
@table_fill_color = nyan
@table_caption_color = a

include_theme('lightning-talk-toolkit')
include_theme('default')

match(Slide) do |slides|
  slides.each do |slide|
    if slide.lightning_talk?
      slide.lightning_talk
    end
  end
end
