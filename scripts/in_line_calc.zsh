# Lets you use the '=' alias to do math in the terminal. Like a mini calculator
autoload -Uz zcalc
function __calc_function {
    zcalc -f -e "$*"
}
aliases[=]='noglob __calc_function'