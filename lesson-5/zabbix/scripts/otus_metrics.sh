case "$1" in
  discovery)
    echo '[{"{#METRIC}":"metric1"},{"{#METRIC}":"metric2"},{"{#METRIC}":"metric3"}]'
    ;;
  get)
    # [ "$2" = "metric2" ] && { echo 97; exit 0; }
    echo $(( $(od -An -N2 -tu2 /dev/urandom) % 101 ))
    ;;
esac
