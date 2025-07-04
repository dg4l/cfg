#!/bin/bash

for file in ./dots/*; do
    cp "$file" "./dots/.${file#./dots/}"
done
