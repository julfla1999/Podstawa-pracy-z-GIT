#Julia Flaszyńska Lab4

OPTION=$1

case $OPTION in
    --date)
        date
        ;;
    --logs)
        NUM=$2
        for ((i=1; i<=$NUM; ++i)); do
            FILENAME="log$i.txt"
            echo "$FILENAME \nskrypt.sh \n$(date)" >> $FILENAME
        done
        ;;
    --help)
        echo "Possible options are:"
        echo "--date :\t prints out the current date"
        echo "--logs x :\t creates x files titled log_number.txt; argument is optional"
        echo "--help :\t prints help"
        ;;
esac