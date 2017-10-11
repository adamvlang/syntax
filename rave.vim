" Vim syntax file
" Language:	Rave
" Creator:	Adam Lang <adam.lang@hiq.se>
" Last Change:	2017 Oct 05 by Adam Lang
" Credits:	Stefan
" For version 6.x: Quit when a syntax file was already loaded.
" This is a Rave syntax file that is a based on the commands from a emacs
" highlighting file made by Stefan
"
"TODO:
"Highlighing for numbers
"Highlighting for imports

if exists("b:current_syntax")
  finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim


syn keyword raveFunction        abs add_months add_weeks add_years all any avg
syn keyword raveFunction        concat cat count default earliest 
syn keyword raveFunction        first format_int format_time is_first is_last
syn keyword raveFunction        last latest length locate max min
syn keyword raveFunction        next nmax nmin overlap prev round_down
syn keyword raveFunction        round_down_week round_down_month round_down_year
syn keyword raveFunction        round_down_offset round_up round_up_offset rule_on
syn keyword raveFunction        scale_time sqrt substr sum time time_of_day
syn keyword raveFunction        time_of_week total_rule_penalty void
syn keyword raveFunction        False n True off on
syn keyword raveEntry           accumulator constraint context enum filter
syn keyword raveEntry           group iterator level matrix rule set table
syn keyword raveWord            alias backwards by cost current delta
syn keyword raveWord            end enddate endday export external
syn keyword raveWord            failtext foreach forwards from global
syn keyword raveWord            implements index inherits
syn keyword raveWord            interval_end interval_start let map max_penalty 
syn keyword raveWord            maxvalue min_penalty minvalue module nonadditive
syn keyword raveWord            parameter partition redefine remark require root
syn keyword raveWord            startdate startday then times_index to transform
syn keyword raveWord            use valid when where
syn keyword raveOperator        and and2 in mod not or or2
syn keyword raveType            Abstime Bool Int Reltime String
syn keyword ravePreProc         import
syn keyword raveConditional     if else 
syn keyword raveRepeat          while

syn match raveSymbols           "\v\-"
syn match raveSymbols           "\v\+"
syn match raveSymbols           "\v\*"
syn match raveSymbols           "\v\="
syn match raveSymbols           "\v\>"
syn match raveSymbols           "\v\<"

syn region raveComment start="/\*" end="\*/"
syn region raveString start="\"" end="\""


let b:current_syntax="rave"

hi def link raveComment         Comment
hi def link raveFunction        Function
hi def link raveType            Type
hi def link ravePreProc         PreProc
hi def link raveWord            Function
hi def link raveConditional     Conditional
hi def link raveSymbols         Number
hi def link raveString          String
