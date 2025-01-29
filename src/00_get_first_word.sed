# Hashes are used for comments.

# Slash to find lines.
# This command just removes empty lines.
/^$/d
#  You need to use a "\(...\)" group for the pattern with ".*" after it.
# Otherwise you'll match the whole line.
s/\(^[^ ]*\).*/\U\1/p
