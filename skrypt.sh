#Julia Flaszyńska Lab4

OPTION=$1

case $OPTION in
    -d|--date)
        date
        ;;
    -l|--logs)
        NUM=$2
        for ((i=1; i<=$NUM; ++i)); do
            FILENAME="log$i.txt"
            echo "$FILENAME \nskrypt.sh \n$(date)" >> $FILENAME
        done
        ;;
    -h|--help)
        echo "Possible options are:"
        echo "-d  --date :\t prints out the current date"
        echo "-l x --logs x :\t creates x files titled log_number.txt"
        echo "-h  --help :\t prints help"
        ;;
esac