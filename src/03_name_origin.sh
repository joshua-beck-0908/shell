#!/bin/bash

cd ~/proj/shell

# Find the nationalities list of nationalities in the surnames.
# Only repeated lines next to each other count to they have to be sorted.
# The '-c' option is interesting because is counts the number of items that were duplicated.
cat data/surname_raw.txt |  # Open the raw data.
cut -f4 |                   # Take the fourth field (ethnicity of name)
sed 's/ //g' |              # Removed the extra spaces in the list.
sed 's/,/\n/g' |            # If there are multiple origins it's comma separated
sort |                      # Must be sorted for uniq to do it's magic.
uniq -c |                   # Count the number of names with each ethnicity.
sort -nr                    # Now sort from most to least.

# Unsurprisingly for Australia, most of these are from parts of the UK.

