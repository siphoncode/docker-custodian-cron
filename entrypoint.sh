set -e

: ${INTERVAL:?"INTERVAL is not set."}
: ${MAX_CONTAINER_AGE:?"MAX_CONTAINER_AGE is not set."}
: ${MAX_IMAGE_AGE:?"MAX_IMAGE_AGE is not set."}

while [ true ] ; do
    echo
    echo "*** Starting docker-custodian ***"
    echo
    dcgc --max-container-age $MAX_CONTAINER_AGE --max-image-age $MAX_IMAGE_AGE;
    sleep $INTERVAL;
done
