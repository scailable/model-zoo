set -e

cd $(dirname $0)

# check if a parameter is passed
video_path=$1

# if video path is passed, then use that
# else get all mp4 files in the current directory

if [ -z "$video_path" ]; then
    # get abs path of all mp4 files in the current directory, with comma separated
    files=$(ls -1 ./**/*.mp4 | xargs -I {} readlink -f {} | tr '\n' ',' | sed 's/,$//')
else
    files=$(readlink -f $video_path)
fi

echo "Loading files:"
echo $files
sleep 1

# start the testcam with the files
cd /opt/networkoptix-metavms/mediaserver/bin/
./testcamera -S -I 127.0.0.1 files="$files" --no-secondary --fps=30
