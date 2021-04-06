self=$(basename $0)

# Run all except self
for f in "$(dirname "$0")/*.sh"; do
    if [ "$f" = "$self" ]; then
        continue
    fi

    $f
done