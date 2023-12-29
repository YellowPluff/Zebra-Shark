# Up function
# Usage example: up 3
# Would execute cd ../../..
up()
{
    times=$1
    
    if (( $# == 0 ));
    then
        times=1
    fi

    while [ "$times" -gt "0" ];
    do
        cd ..
        times=$(($times - 1))
    done
}

# __up function
# Triggered from ctrl + u keyboard shortcut
# Executes up 1 redraws VCS information
__up()
{
    up
    if [[ -z $USING_ASYNC_GIT ]];
    then
        __update_git_information
    else
        __start_git_async_job
    fi
    zle reset-prompt
}

# Register the function __up as a ZLE widget
zle -N __up
# Keybind ctrl+u to the widget __up
bindkey "^u" __up

# compress function
# Usage example: compress <directory to compress> <valid output path>
# Easy to use and standardized way to compress a directory.
compress()
{
    if (( $# == 2 )) && [[ -d $1 ]] && [[ -d $2 ]];
    then
        RUNNING_PATH=$PWD
        ABSOLUTE_PATH_TO_COMPRESS=$(cd $1; pwd)
        ABSOLUTE_OUTPUT_PATH=$(cd $2; pwd)
        OUTPUT_FILE_NAME=$(basename $ABSOLUTE_PATH_TO_COMPRESS).tar.gz
        ABSOLUTE_OUTPUT_PATH_FILE_NAME=$ABSOLUTE_OUTPUT_PATH/$OUTPUT_FILE_NAME

        cd $(dirname $ABSOLUTE_PATH_TO_COMPRESS)
        tar -zcvf $ABSOLUTE_OUTPUT_PATH_FILE_NAME $(basename $ABSOLUTE_PATH_TO_COMPRESS)
        cd $RUNNING_PATH

        echo "Compression Complete!"
        echo "COMPRESSED FILE: $ABSOLUTE_OUTPUT_PATH_FILE_NAME"
    else
        echo "Error.."
        echo "USAGE: compress <directory_to_compress> <valid_output_path>"
    fi
}

# decompress function
# Usage example: decompress <file to decompress> <valid output path>
# Easy to use and catch all way to decompress a compressed file.
decompress()
{
    if (( $# == 2 )) && [[ -f $1 ]] && [[ -d $2 ]];
    then
        ABSOLUTE_PATH_TO_DECOMPRESS=$(realpath $1)
        ABSOLUTE_OUTPUT_PATH=$(cd $2; pwd)

        case $ABSOLUTE_PATH_TO_DECOMPRESS in
            *.tar.bz2)
                tar xvjf $ABSOLUTE_PATH_TO_DECOMPRESS --directory $ABSOLUTE_OUTPUT_PATH
                echo "Decompression Complete!"
                echo "DECOMPRESSED LOCATION: $ABSOLUTE_OUTPUT_PATH"
                ;;
            *.tar.gz)
                tar xvzf $ABSOLUTE_PATH_TO_DECOMPRESS --directory $ABSOLUTE_OUTPUT_PATH
                echo "Decompression Complete!"
                echo "DECOMPRESSED LOCATION: $ABSOLUTE_OUTPUT_PATH"
                ;;
            *.tar.xz)
                tar Jxvf $ABSOLUTE_PATH_TO_DECOMPRESS --directory $ABSOLUTE_OUTPUT_PATH
                echo "Decompression Complete!"
                echo "DECOMPRESSED LOCATION: $ABSOLUTE_OUTPUT_PATH"
                ;;
            *.bz2)
                bunzip2 $ABSOLUTE_PATH_TO_DECOMPRESS ;;
            *.gz)
                gunzip $ABSOLUTE_PATH_TO_DECOMPRESS ;;
            *.tar)
                tar xvf $ABSOLUTE_PATH_TO_DECOMPRESS --directory $ABSOLUTE_OUTPUT_PATH
                echo "Decompression Complete!"
                echo "DECOMPRESSED LOCATION: $ABSOLUTE_OUTPUT_PATH"
                ;;
            *.tbz2)
                tar xvjf $ABSOLUTE_PATH_TO_DECOMPRESS --directory $ABSOLUTE_OUTPUT_PATH
                echo "Decompression Complete!"
                echo "DECOMPRESSED LOCATION: $ABSOLUTE_OUTPUT_PATH"
                ;;
            *.tgz)
                tar xvzf $ABSOLUTE_PATH_TO_DECOMPRESS --directory $ABSOLUTE_OUTPUT_PATH
                echo "Decompression Complete!"
                echo "DECOMPRESSED LOCATION: $ABSOLUTE_OUTPUT_PATH"
                ;;
            *.zip)
                unzip $ABSOLUTE_PATH_TO_DECOMPRESS -d $ABSOLUTE_OUTPUT_PATH
                echo "Decompression Complete!"
                echo "DECOMPRESSED LOCATION: $ABSOLUTE_OUTPUT_PATH"
                ;;
            *.Z)
                uncompress $ABSOLUTE_PATH_TO_DECOMPRESS ;;
            *.7z)
                7z x $ABSOLUTE_PATH_TO_DECOMPRESS ;;
            *)
                echo "The provided file cannot be decompressed. Did you mean to compress it?" ;
                echo "Provided file: $ABSOLUTE_PATH_TO_DECOMPRESS" ;;
        esac
    else
        echo "Error.."
        echo "USAGE: decompress <file_to_decompress> <valid_output_path>"
    fi
}

# Pulls down the latest Zebra Shark code
update_zebra_shark()
{
    cd $installPath
    git reset --hard origin/main
}