#!/usr/bin/fish

if test (count $argv) -ne 1
    echo "Παρακαλώ παράσχετε έναν τετραψήφιο αριθμό ως είσοδο."
    exit 1
end

set input_number $argv[1]

if not test "$input_number" -ge 1000 -a "$input_number" -le 9999
    echo "Παρακαλώ εισάγετε έναν τετραψήφιο αριθμό."
    exit 1
end

set hash_output (echo -n $input_number | sha256sum)

echo $hash_output > hash_output.txt

echo "Το SHA-256 hash του αριθμού $input_number έχει αποθηκευτεί στο αρχείο hash_output.txt"
