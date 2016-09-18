" Vim syntax file
" Language:         deviceConnect Log File
" Maintainer:       Kris Johnson <kris.johnson@mobilelabsinc.com>
" Latest Revision:  2016-09-16
" Changes:          

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn match   dclogBegin       display '^' nextgroup=dclogInitialPID,dclogDate,dclogException

" Current log file format begins with PID on each line.
syn match   dclogInitialPID  contained display '\d\+ *'
                             \ nextgroup=dclogDate

" Old lof file format begins with timestamp on each line.
syn match   dclogDate        contained display '\d\d\d\d-\d\d-\d\d *'
                             \ nextgroup=dclogTime

syn match   dclogTime        contained display '\d\d:\d\d:\d\d.\d\d\d\d\s*'
                             \ nextgroup=dclogConnection,dclogWhere

syn match   dclogConnection  contained display '\[WS Connection: \d*\] *'
                             \ nextgroup=dclogWhere,dclogOldPID,dclogText

" Class name (new logs) or method name (old logs)
syn match   dclogWhere       contained display '[A-Z]\S*\s*'
                             \ nextgroup=dclogConnection,dclogText


syn match   dclogText        contained display '.*'
                             \ contains=dclogGUID,dclogIP,dclogURL,dclogError,dclogNumber

syn match   dclogNumber      contained '0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'

syn match   dclogGUID        contained '\x\x\x\x\x\x\x\x-\x\x\x\x-\x\x\x\x-\x\x\x\x-\x\x\x\x\x\x\x\x\x\x\x\x'

syn match   dclogError       contained '\c.*\<\(FATAL\|ERROR\|ERRORS\|FAILED\|FAILURE\|Exception\).*'

syn match   dclogIP          '\d\+\.\d\+\.\d\+\.\d\+'

syn match   dclogURL         '\w\+://\S\+'

syn match   dclogException   contained display '\S*\Exception: *\| *at \S*'

hi def link dclogInitialPID  Comment
hi def link dclogDate        Constant
hi def link dclogTime        Type
hi def link dclogConnection  Statement
hi def link dclogWhere       Identifier
hi def link dclogOldPID      Constant
hi def link dclogError       ErrorMsg
hi def link dclogException   Exception
hi def link dclogIP          Constant
hi def link dclogGUID        Constant
hi def link dclogURL         Underlined
hi def link dclogText        Normal
hi def link dclogNumber      Number

let b:current_syntax = "dclog"

let &cpo = s:cpo_save
unlet s:cpo_save

