cd "$(dirname "$0")"

directory=$1
model_id=$2

if [ -z "$directory" ]; then
    echo "Usage: $0 <directory> <model_id>"
    exit 1
fi

if [ -z "$model_id" ]; then
    echo "Usage: $0 <directory> <model_id>"
    exit 1
fi

wget https://cdn.sclbl.net/file/$model_id.original.onnx -O $directory/model.onnx