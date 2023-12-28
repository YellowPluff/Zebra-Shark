#!/usr/bin/env zsh

BackupExistingZSHRC()
{
    USER_ZSHRC_FILE_IN=$1
    USER_ZEBRA_SHARK_DIR_IN=$2
    USER_ALIAS_FILE=$USER_ZEBRA_SHARK_DIR_IN"/aliases.zsh"
    USER_FUNC_FILE=$USER_ZEBRA_SHARK_DIR_IN"/functions.zsh"
    USER_PROMPT_FILE=$USER_ZEBRA_SHARK_DIR_IN"/prompt.zsh"

    CURRENT_TIME=$(date +%b%d_%Y_%H:%M:%S)
    ZEBRA_SHARK_BACKUP_DIR=$HOME"/BACKUP_ZEBRA_SHARK_"$CURRENT_TIME

    # Backup the users existing ~/.zshrc if it exists.
    if test -f "$USER_ZSHRC_FILE_IN";
    then
        if ! test -d "$ZEBRA_SHARK_BACKUP_DIR";
        then
            mkdir $ZEBRA_SHARK_BACKUP_DIR
        fi
        echo "Backing up.. $USER_ZSHRC_FILE_IN into $ZEBRA_SHARK_BACKUP_DIR"
        mv $USER_ZSHRC_FILE_IN $ZEBRA_SHARK_BACKUP_DIR
    fi

    # Backup the users existing ~/Zebra-Shark/aliases.zsh if it exists.
    if test -f "$USER_ALIAS_FILE";
    then
        if ! test -d "$ZEBRA_SHARK_BACKUP_DIR";
        then
            mkdir $ZEBRA_SHARK_BACKUP_DIR
        fi
        echo "Backing up.. $USER_ALIAS_FILE into $ZEBRA_SHARK_BACKUP_DIR"
        mv $USER_ALIAS_FILE $ZEBRA_SHARK_BACKUP_DIR
    fi

    # Backup the users existing ~/Zebra-Shark/functions.zsh if it exists.
    if test -f "$USER_FUNC_FILE";
    then
        if ! test -d "$ZEBRA_SHARK_BACKUP_DIR";
        then
            mkdir $ZEBRA_SHARK_BACKUP_DIR
        fi
        echo "Backing up.. $USER_FUNC_FILE into $ZEBRA_SHARK_BACKUP_DIR"
        mv $USER_FUNC_FILE $ZEBRA_SHARK_BACKUP_DIR
    fi

    # Backup the users existing ~/Zebra-Shark/prompt.zsh if it exists.
    if test -f "$USER_PROMPT_FILE";
    then
        if ! test -d "$ZEBRA_SHARK_BACKUP_DIR";
        then
            mkdir $ZEBRA_SHARK_BACKUP_DIR
        fi
        echo "Backing up.. $USER_PROMPT_FILE into $ZEBRA_SHARK_BACKUP_DIR"
        mv $USER_PROMPT_FILE $ZEBRA_SHARK_BACKUP_DIR
    fi
}

InstallZebraShark()
{
    INSTALL_SCRIPT_ABS_PATH=$1
    CLONED_REPO_ABS_PATH=$(dirname $INSTALL_SCRIPT_ABS_PATH)

    echo "Copying.. $INSTALL_SCRIPT_ABS_PATH/zshrc.config into $HOME/.zshrc"
    cp $INSTALL_SCRIPT_ABS_PATH/zshrc.config $HOME/.zshrc
    chmod 755 $HOME/.zshrc

    echo "Copying.. $INSTALL_SCRIPT_ABS_PATH/aliases.config into $CLONED_REPO_ABS_PATH/aliases.zsh"
    cp $INSTALL_SCRIPT_ABS_PATH/aliases.config $CLONED_REPO_ABS_PATH/aliases.zsh
    chmod 755 $CLONED_REPO_ABS_PATH/aliases.zsh

    echo "Copying.. $INSTALL_SCRIPT_ABS_PATH/functions.config into $CLONED_REPO_ABS_PATH/functions.zsh"
    cp $INSTALL_SCRIPT_ABS_PATH/functions.config $CLONED_REPO_ABS_PATH/functions.zsh
    chmod 755 $CLONED_REPO_ABS_PATH/functions.zsh

    echo "Copying.. $INSTALL_SCRIPT_ABS_PATH/prompt.config into $CLONED_REPO_ABS_PATH/prompt.zsh"
    cp $INSTALL_SCRIPT_ABS_PATH/prompt.config $CLONED_REPO_ABS_PATH/prompt.zsh
    chmod 755 $CLONED_REPO_ABS_PATH/prompt.zsh
}


echo "Running Zebra Shark Setup..."

BackupExistingZSHRC $HOME'/.zshrc' $HOME'/Zebra-Shark'

InstallZebraShark ${0:a:h}

echo "Zebra Shark install complete!"