#Julia Flaszyńska Lab4

OPTION=$1

case $OPTION in
    -d|--date)
        date
        ;;
    -l|--logs)
        if [[ $# -ge 2 ]]; then
            NUM=$2
        else 
            NUM=100
        fi
        for ((i=1; i<=$NUM; ++i)); do
            FILENAME="log$i.txt"
            echo "$FILENAME \nskrypt.sh \n$(date)" >> $FILENAME
        done
        ;;
    -h|--help)
        echo "Possible options are:"
        echo "--date :\t prints out the current date"
        echo "--logs x :\t creates x files titled log_number.txt; argument is optional"
        echo "--help :\t prints help"
        ;;
    --init)
        git clone https://github.com/julfla1999/Podstawa-pracy-z-GIT.git
        echo "PATH=$PATH:$(pwd)" >> ~/.bashrc
        ;;
    -e|--error)
        if [[ $# -ge 2 ]]; then
            NUM=$2
        else 
            NUM=100
        fi
        for ((i=1; i<=$NUM; ++i)); do
            FILENAME="error$i.txt"
            echo "$FILENAME \nskrypt.sh \n$(date)" >> $FILENAME
        done
        ;;
esac