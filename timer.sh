#!/usr/bin/env bash
secs="${1:-10}"

if ! [[ "$secs" =~ ^[0-9]+$ ]]; then
  echo "사용법: timer <초>"
  exit 1
fi

echo "⏱  ${secs}초 카운트다운 시작"
while [ "$secs" -gt 0 ]; do
  printf "\r  남은 시간: %3d초 " "$secs"
  sleep 1
  ((secs--))
done
printf "\r  ✅ 완료!                \n"
