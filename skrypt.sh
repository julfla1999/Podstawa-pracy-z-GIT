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
esac