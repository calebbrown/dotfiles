PROFILE_D="$HOME/.profile.d"

for file in `ls "$PROFILE_D"/* | sort`; do
    if [[ -r "$file" ]]; then
        source "$file"
    fi
done

