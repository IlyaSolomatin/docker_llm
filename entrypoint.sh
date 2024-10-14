#!/bin/bash
nohup ollama serve 1> out.txt 2> err.txt &
sleep 5
ollama pull gemma2
python3 main.py
