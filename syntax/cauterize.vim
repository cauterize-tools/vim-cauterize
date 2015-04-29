" Vim syntax file
" Language:			Cauterize
" Maintainer:		John Van Enk <sw17ch@gmail.com>
" ----------------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

syn match cautIdentifier  "\<[a-z]\%([a-z]\|[0-9]\|_\)*\>"
syn match cautDecNumber   "\<\d\+\>"
syn match cautHexNumber   "\<0x\x\+\>"

syn match cautHash        "\<\x\{40}\>"

syn keyword   cautForm     schema
syn keyword   cautForm     fields
syn keyword   cautForm     field
syn keyword   cautForm     synonym
syn keyword   cautForm     array
syn keyword   cautForm     vector
syn keyword   cautForm     record
syn keyword   cautForm     union
syn keyword   cautForm     combination
syn keyword   cautPrim     u8 u16 u32 u64 s8 s16 s32 s64 f32 f64 bool
syn keyword cautForm specification
syn keyword cautForm sha1
syn keyword cautForm depth
syn keyword cautForm builtin
syn match cautForm "range-size"
syn match cautForm "fixed-size"
syn match cautForm "type-width"
syn match cautForm "length-width"
syn match cautForm "length-repr"
syn match cautForm "tag-repr"
syn match cautForm "fields-repr"
syn match cautForm "flags-repr"

syn region  cautCommentLine   start=";;" end="$"   contains=@Spell

hi def link cautDecNumber     cautNumber
hi def link cautHexNumber     cautNumber

hi def link cautCommentLine   Comment
hi def link cautForm          Conditional
hi def link cautHash          Constant
hi def link cautIdentifier    Type
hi def link cautNumber        Number
hi def link cautPrim          Special

let b:current_syntax = "cauterize"
