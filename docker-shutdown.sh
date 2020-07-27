docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v "$PWD:$PWD" -w="$PWD" --env-file ./docker-env.sh docker/compose:1.24.0 down
