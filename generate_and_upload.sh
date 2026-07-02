#!/bin/bash
set -e
SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR"

sh ../youtube_transcript/run.sh
sh ../video_creator/batch_generate.sh

UPLOAD_DIR=../video_creator/to_upload
cp ${UPLOAD_DIR}/* videos/
.venv/bin/python -m examples.upload_video_to_douyin
rm -rf ${UPLOAD_DIR}