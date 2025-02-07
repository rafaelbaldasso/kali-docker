#!/bin/bash

updatedb

service postfix start
service postgresql start

sleep 5

msfdb init

exec bash
