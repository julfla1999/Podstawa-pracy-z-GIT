#Julia Flaszyńska Lab4

OPTION=$1

case $OPTION in
    --date)
        date
        ;;
    --logs)
        for ((i=1; i<=100; ++i)); do
            FILENAME="log$i.txt"
            echo "$FILENAME \nskrypt.sh \n$(date)" > $FILENAME
        done
        ;;
esac