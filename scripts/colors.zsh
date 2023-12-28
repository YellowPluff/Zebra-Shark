# All of this knowledge came from these two links.
# 1. https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
# 2. https://chrisyeh96.github.io/2020/03/28/terminal-colors.html

# Reset
Color_Off='\033[0m'       # Text Reset

# ____ FOREGROUND ____
# Regular (30-37)
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Magenta='\033[0;35m'      # Magenta
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold (30-37)
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BMagenta='\033[1;35m'     # Magenta
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Dim (30-37)
DBlack='\033[2;30m'       # Black
DRed='\033[2;31m'         # Red
DGreen='\033[2;32m'       # Green
DYellow='\033[2;33m'      # Yellow
DBlue='\033[2;34m'        # Blue
DMagenta='\033[2;35m'     # Magenta
DCyan='\033[2;36m'        # Cyan
DWhite='\033[2;37m'       # White

# Underline (30-37)
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UMagenta='\033[4;35m'     # Magenta
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Blink (30-37)
BlBlack='\033[5;30m'       # Black
BlRed='\033[5;31m'         # Red
BlGreen='\033[5;32m'       # Green
BlYellow='\033[5;33m'      # Yellow
BlBlue='\033[5;34m'        # Blue
BlMagenta='\033[5;35m'     # Magenta
BlCyan='\033[5;36m'        # Cyan
BlWhite='\033[5;37m'       # White

# High Intensity Regular (90-97)
IBlack='\033[0;90m'        # Black
IRed='\033[0;91m'          # Red
IGreen='\033[0;92m'        # Green
IYellow='\033[0;93m'       # Yellow
IBlue='\033[0;94m'         # Blue
IMagenta='\033[0;95m'      # Magenta
ICyan='\033[0;96m'         # Cyan
IWhite='\033[0;97m'        # White

# High Intensity Bold (90-97)
BIBlack='\033[1;90m'       # Black
BIRed='\033[1;91m'         # Red
BIGreen='\033[1;92m'       # Green
BIYellow='\033[1;93m'      # Yellow
BIBlue='\033[1;94m'        # Blue
BIMagenta='\033[1;95m'     # Magenta
BICyan='\033[1;96m'        # Cyan
BIWhite='\033[1;97m'       # White

# High Intensity Dim (90-97)
DIBlack='\033[2;90m'       # Black
DIRed='\033[2;91m'         # Red
DIGreen='\033[2;92m'       # Green
DIYellow='\033[2;93m'      # Yellow
DIBlue='\033[2;94m'        # Blue
DIMagenta='\033[2;95m'     # Magenta
DICyan='\033[2;96m'        # Cyan
DIWhite='\033[2;97m'       # White

# High Intensity Underline (90-97)
UIBlack='\033[4;90m'       # Black
UIRed='\033[4;91m'         # Red
UIGreen='\033[4;92m'       # Green
UIYellow='\033[4;93m'      # Yellow
UIBlue='\033[4;94m'        # Blue
UIMagenta='\033[4;95m'     # Magenta
UICyan='\033[4;96m'        # Cyan
UIWhite='\033[4;97m'       # White

# High Intensity Blink (90-97)
BlIBlack='\033[5;90m'       # Black
BlIRed='\033[5;91m'         # Red
BlIGreen='\033[5;92m'       # Green
BlIYellow='\033[5;93m'      # Yellow
BlIBlue='\033[5;94m'        # Blue
BlIMagenta='\033[5;95m'     # Magenta
BlICyan='\033[5;96m'        # Cyan
BlIWhite='\033[5;97m'       # White

# ____ BACKGROUND ____
# Regular (40-47)
On_Black='\033[0;40m'        # Black
On_Red='\033[0;41m'          # Red
On_Green='\033[0;42m'        # Green
On_Yellow='\033[0;43m'       # Yellow
On_Blue='\033[0;44m'         # Blue
On_Magenta='\033[0;45m'      # Magenta
On_Cyan='\033[0;46m'         # Cyan
On_White='\033[0;47m'        # White

# Bold (40-47)
On_BBlack='\033[1;40m'       # Black
On_BRed='\033[1;41m'         # Red
On_BGreen='\033[1;42m'       # Green
On_BYellow='\033[1;43m'      # Yellow
On_BBlue='\033[1;44m'        # Blue
On_BMagenta='\033[1;45m'     # Magenta
On_BCyan='\033[1;46m'        # Cyan
On_BWhite='\033[1;47m'       # White

# Dim (40-47)
On_DBlack='\033[2;40m'       # Black
On_DRed='\033[2;41m'         # Red
On_DGreen='\033[2;42m'       # Green
On_DYellow='\033[2;43m'      # Yellow
On_DBlue='\033[2;44m'        # Blue
On_DMagenta='\033[2;45m'     # Magenta
On_DCyan='\033[2;46m'        # Cyan
On_DWhite='\033[2;47m'       # White

# Underline (40-47)
On_UBlack='\033[4;40m'       # Black
On_URed='\033[4;41m'         # Red
On_UGreen='\033[4;42m'       # Green
On_UYellow='\033[4;43m'      # Yellow
On_UBlue='\033[4;44m'        # Blue
On_UMagenta='\033[4;45m'     # Magenta
On_UCyan='\033[4;46m'        # Cyan
On_UWhite='\033[4;47m'       # White

# Blink (40-47)
On_BlBlack='\033[5;40m'       # Black
On_BlRed='\033[5;41m'         # Red
On_BlGreen='\033[5;42m'       # Green
On_BlYellow='\033[5;43m'      # Yellow
On_BlBlue='\033[5;44m'        # Blue
On_BlMagenta='\033[5;45m'     # Magenta
On_BlCyan='\033[5;46m'        # Cyan
On_BlWhite='\033[5;47m'       # White

# High Intensity Regular (100-107)
On_IBlack='\033[0;100m'        # Black
On_IRed='\033[0;101m'          # Red
On_IGreen='\033[0;102m'        # Green
On_IYellow='\033[0;103m'       # Yellow
On_IBlue='\033[0;104m'         # Blue
On_IMagenta='\033[0;105m'      # Magenta
On_ICyan='\033[0;106m'         # Cyan
On_IWhite='\033[0;107m'        # White

# High Intensity Bold (100-107)
On_BIBlack='\033[1;100m'       # Black
On_BIRed='\033[1;101m'         # Red
On_BIGreen='\033[1;102m'       # Green
On_BIYellow='\033[1;103m'      # Yellow
On_BIBlue='\033[1;104m'        # Blue
On_BIMagenta='\033[1;105m'     # Magenta
On_BICyan='\033[1;106m'        # Cyan
On_BIWhite='\033[1;107m'       # White

# High Intensity Dim (100-107)
On_DIBlack='\033[2;100m'       # Black
On_DIRed='\033[2;101m'         # Red
On_DIGreen='\033[2;102m'       # Green
On_DIYellow='\033[2;103m'      # Yellow
On_DIBlue='\033[2;104m'        # Blue
On_DIMagenta='\033[2;105m'     # Magenta
On_DICyan='\033[2;106m'        # Cyan
On_DIWhite='\033[2;107m'       # White

# High Intensity Underline (100-107)
On_UIBlack='\033[4;100m'       # Black
On_UIRed='\033[4;101m'         # Red
On_UIGreen='\033[4;102m'       # Green
On_UIYellow='\033[4;103m'      # Yellow
On_UIBlue='\033[4;104m'        # Blue
On_UIMagenta='\033[4;105m'     # Magenta
On_UICyan='\033[4;106m'        # Cyan
On_UIWhite='\033[4;107m'       # White

# High Intensity Blink (100-107)
On_BlIBlack='\033[5;100m'       # Black
On_BlIRed='\033[5;101m'         # Red
On_BlIGreen='\033[5;102m'       # Green
On_BlIYellow='\033[5;103m'      # Yellow
On_BlIBlue='\033[5;104m'        # Blue
On_BlIMagenta='\033[5;105m'     # Magenta
On_BlICyan='\033[5;106m'        # Cyan
On_BlIWhite='\033[5;107m'       # White

show_font_effects()
{
    echo "____ FOREGROUND ____"
    echo "Regular:        ${Black}Black${Color_Off} ${Red}Red${Color_Off} ${Green}Green${Color_Off} ${Yellow}Yellow${Color_Off} ${Blue}Blue${Color_Off} ${Magenta}Magenta${Color_Off} ${Cyan}Cyan${Color_Off} ${White}White${Color_Off}"
    echo "Bold:           ${BBlack}Black${Color_Off} ${BRed}Red${Color_Off} ${BGreen}Green${Color_Off} ${BYellow}Yellow${Color_Off} ${BBlue}Blue${Color_Off} ${BMagenta}Magenta${Color_Off} ${BCyan}Cyan${Color_Off} ${BWhite}White${Color_Off}"
    echo "Dim:            ${DBlack}Black${Color_Off} ${DRed}Red${Color_Off} ${DGreen}Green${Color_Off} ${DYellow}Yellow${Color_Off} ${DBlue}Blue${Color_Off} ${DMagenta}Magenta${Color_Off} ${DCyan}Cyan${Color_Off} ${DWhite}White${Color_Off}"
    echo "Underline:      ${UBlack}Black${Color_Off} ${URed}Red${Color_Off} ${UGreen}Green${Color_Off} ${UYellow}Yellow${Color_Off} ${UBlue}Blue${Color_Off} ${UMagenta}Magenta${Color_Off} ${UCyan}Cyan${Color_Off} ${UWhite}White${Color_Off}"
    echo "Blink:          ${BlBlack}Black${Color_Off} ${BlRed}Red${Color_Off} ${BlGreen}Green${Color_Off} ${BlYellow}Yellow${Color_Off} ${BlBlue}Blue${Color_Off} ${BlMagenta}Magenta${Color_Off} ${BlCyan}Cyan${Color_Off} ${BlWhite}White${Color_Off}"

    echo ""

    echo "Regular (HI):   ${IBlack}Black${Color_Off} ${IRed}Red${Color_Off} ${IGreen}Green${Color_Off} ${IYellow}Yellow${Color_Off} ${IBlue}Blue${Color_Off} ${IMagenta}Magenta${Color_Off} ${ICyan}Cyan${Color_Off} ${IWhite}White${Color_Off}"
    echo "Bold (HI):      ${BIBlack}Black${Color_Off} ${BIRed}Red${Color_Off} ${BIGreen}Green${Color_Off} ${BIYellow}Yellow${Color_Off} ${BIBlue}Blue${Color_Off} ${BIMagenta}Magenta${Color_Off} ${BICyan}Cyan${Color_Off} ${BIWhite}White${Color_Off}"
    echo "Dim (HI):       ${DIBlack}Black${Color_Off} ${DIRed}Red${Color_Off} ${DIGreen}Green${Color_Off} ${DIYellow}Yellow${Color_Off} ${DIBlue}Blue${Color_Off} ${DIMagenta}Magenta${Color_Off} ${DICyan}Cyan${Color_Off} ${DIWhite}White${Color_Off}"
    echo "Underline (HI): ${UIBlack}Black${Color_Off} ${UIRed}Red${Color_Off} ${UIGreen}Green${Color_Off} ${UIYellow}Yellow${Color_Off} ${UIBlue}Blue${Color_Off} ${UIMagenta}Magenta${Color_Off} ${UICyan}Cyan${Color_Off} ${UIWhite}White${Color_Off}"
    echo "Blink (HI):     ${BlIBlack}Black${Color_Off} ${BlIRed}Red${Color_Off} ${BlIGreen}Green${Color_Off} ${BlIYellow}Yellow${Color_Off} ${BlIBlue}Blue${Color_Off} ${BlIMagenta}Magenta${Color_Off} ${BlICyan}Cyan${Color_Off} ${BlIWhite}White${Color_Off}"

    echo ""

    echo "____ BACKGROUND ____"
    echo "Regular:        ${On_Black}Black${Color_Off} ${On_Red}Red${Color_Off} ${On_Green}Green${Color_Off} ${On_Yellow}Yellow${Color_Off} ${On_Blue}Blue${Color_Off} ${On_Magenta}Magenta${Color_Off} ${On_Cyan}Cyan${Color_Off} ${On_White}White${Color_Off}"
    echo "Bold:           ${On_BBlack}Black${Color_Off} ${On_BRed}Red${Color_Off} ${On_BGreen}Green${Color_Off} ${On_BYellow}Yellow${Color_Off} ${On_BBlue}Blue${Color_Off} ${On_BMagenta}Magenta${Color_Off} ${On_BCyan}Cyan${Color_Off} ${On_BWhite}White${Color_Off}"
    echo "Dim:            ${On_DBlack}Black${Color_Off} ${On_DRed}Red${Color_Off} ${On_DGreen}Green${Color_Off} ${On_DYellow}Yellow${Color_Off} ${On_DBlue}Blue${Color_Off} ${On_DMagenta}Magenta${Color_Off} ${On_DCyan}Cyan${Color_Off} ${On_DWhite}White${Color_Off}"
    echo "Underline:      ${On_UBlack}Black${Color_Off} ${On_URed}Red${Color_Off} ${On_UGreen}Green${Color_Off} ${On_UYellow}Yellow${Color_Off} ${On_UBlue}Blue${Color_Off} ${On_UMagenta}Magenta${Color_Off} ${On_UCyan}Cyan${Color_Off} ${On_UWhite}White${Color_Off}"
    echo "Blink:          ${On_BlBlack}Black${Color_Off} ${On_BlRed}Red${Color_Off} ${On_BlGreen}Green${Color_Off} ${On_BlYellow}Yellow${Color_Off} ${On_BlBlue}Blue${Color_Off} ${On_BlMagenta}Magenta${Color_Off} ${On_BlCyan}Cyan${Color_Off} ${On_BlWhite}White${Color_Off}"

    echo ""

    echo "Regular (HI):   ${On_IBlack}Black${Color_Off} ${On_IRed}Red${Color_Off} ${On_IGreen}Green${Color_Off} ${On_IYellow}Yellow${Color_Off} ${On_IBlue}Blue${Color_Off} ${On_IMagenta}Magenta${Color_Off} ${On_ICyan}Cyan${Color_Off} ${On_IWhite}White${Color_Off}"
    echo "Bold (HI):      ${On_BIBlack}Black${Color_Off} ${On_BIRed}Red${Color_Off} ${On_BIGreen}Green${Color_Off} ${On_BIYellow}Yellow${Color_Off} ${On_BIBlue}Blue${Color_Off} ${On_BIMagenta}Magenta${Color_Off} ${On_BICyan}Cyan${Color_Off} ${On_BIWhite}White${Color_Off}"
    echo "Dim (HI):       ${On_DIBlack}Black${Color_Off} ${On_DIRed}Red${Color_Off} ${On_DIGreen}Green${Color_Off} ${On_DIYellow}Yellow${Color_Off} ${On_DIBlue}Blue${Color_Off} ${On_DIMagenta}Magenta${Color_Off} ${On_DICyan}Cyan${Color_Off} ${On_DIWhite}White${Color_Off}"
    echo "Underline (HI): ${On_UIBlack}Black${Color_Off} ${On_UIRed}Red${Color_Off} ${On_UIGreen}Green${Color_Off} ${On_UIYellow}Yellow${Color_Off} ${On_UIBlue}Blue${Color_Off} ${On_UIMagenta}Magenta${Color_Off} ${On_UICyan}Cyan${Color_Off} ${On_UIWhite}White${Color_Off}"
    echo "Blink (HI):     ${On_BlIBlack}Black${Color_Off} ${On_BlIRed}Red${Color_Off} ${On_BlIGreen}Green${Color_Off} ${On_BlIYellow}Yellow${Color_Off} ${On_BlIBlue}Blue${Color_Off} ${On_BlIMagenta}Magenta${Color_Off} ${On_BlICyan}Cyan${Color_Off} ${On_BlIWhite}White${Color_Off}"
}