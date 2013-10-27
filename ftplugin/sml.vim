if exists("loaded_matchit")
    let b:match_ignorecase=0
    let old = exists('b:match_words') ? b:match_words.',' : ''

     " 1) structure .. end
     " 2) let .. in .. end
     " 3) signature .. end
     " 3) local .. end
     " TODO
     let b:match_words =
     \  '\<\%(let\|local\|structure\|signature\)\>:\<in\>:\<end\>'

     " jump to next functions
     let b:match_words .=
     \  ',^\<fun\>:^\<and\|fun\|val\>:DOES_NOT_EXIST'

     " () [] {} <>
     " why do I have to add them ? Shouldn't they be default?
     let b:match_words .=
     \  ',(:),\[:\],{:},<:>'
endif

if has('win32')
    let s:clear_cmd="cls && "
else
    let s:clear_cmd="clear && "
endif

if exists("sml_coursera_interactive")
    if exists("sml_coursera_clean_output")
        let &makeprg=s:clear_cmd . "sml %"
        "setlocal makeprg=clear_cmd;\ sml\ '%'
    else
        setlocal makeprg=sml\ \"%\"
    endif
else
    if exists("sml_coursera_clean_output")
        let &makeprg=s:clear_cmd . "sml <%"
        "setlocal makeprg=s:clear_cmd;\ sml\ <'%'
    else
        setlocal makeprg=sml\ <\"%\"
    endif
endif

cnoreabbrev make make!
