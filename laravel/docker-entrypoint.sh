#!/bin/bash
set -e

echo "Running database migrations..."
php artisan migrate --force

echo "Starting Apache..."
exec /usr/sbin/apache2ctl -D FOREGROUND
