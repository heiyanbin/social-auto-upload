#!/bin/bash
set -e
#sh ../youtube_transcript/run.sh
#sh ../video_creator/batch_generate.sh

UPLOAD_DIR=../video_creator/to_upload
day_offset=$1
cp ${UPLOAD_DIR}/* videos/
.venv/bin/python -m examples.upload_video_to_douyin $day_offset
rm -rf ${UPLOAD_DIR}
