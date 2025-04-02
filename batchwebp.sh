compression_quality=$1

if [ -z "$compression_quality" ]; then
    compression_quality=80
fi

input_file_extension=$2

if [ -z "$input_file_extension" ]; then
    input_file_extension="png"
fi

for x in $(find . -iname "*.${input_file_extension}"); do
    cwebp -q $compression_quality "${x}" -o "${x%${input_file_extension}}webp"
done
