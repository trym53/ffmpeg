FROM alpine:3.10.2

# ffmpegのインストール
RUN apk add --update --no-cache ffmpeg=4.1.6-r0

# ユーザー追加
RUN adduser -D ffmpeg_user -G nogroup
# docker run時に使われるユーザーに追加したものを指定
USER ffmpeg_user