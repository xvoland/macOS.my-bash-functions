# Clipboard Copy of result
function _copy {
    OUTPUT="$($1)"
    echo -n $(echo ${OUTPUT}|tr -d '\n') | pbcopy
    echo $OUTPUT
}


# Clipboard Paste functions
function _paste {
    OUTPUT="$(pbpaste)"
    echo -n $(echo ${OUTPUT}|tr -d '\n')
}

# Clipboard to HEX
function _clp2hex {
    pbpaste | base64 | pbcopy
}
