#!/usr/bin/bash
#
# エラー発生時にスクリプトを即座に終了（安全対策）
set -euo pipefail


# 1. 先に PHP-FPM をバックグラウンドで起動
    sudo /usr/sbin/php-fpm -D

# 2. Apacheをフォアグラウンドで起動
    sudo /usr/sbin/httpd
