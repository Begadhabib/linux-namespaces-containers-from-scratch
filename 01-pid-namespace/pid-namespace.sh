#!/bin/bash

echo "=== PID Namespace Lab ==="

echo "Current PID: $$"

echo "=== Process List ==="
ps -o pid,ppid,state,cmd

echo "=== PID 1 Information ==="
ps -p 1 -o pid,ppid,state,cmd

echo "=== NSpid Information ==="
grep NSpid /proc/1/status

echo "=== Child Process ==="
sleep 5 &

ps -o pid,ppid,state,cmd

wait

echo "=== After wait ==="
ps -o pid,ppid,state,cmd