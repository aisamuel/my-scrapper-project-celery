#!/bin/sh -ex
celery -A product_scraper.celery beat -l info &
celery -A product_scraper.celery worker -l info &
tail -f /dev/null