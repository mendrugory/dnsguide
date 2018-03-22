#!/usr/bin/env bash
clear

echo "Let's Produce a new PDF"

mkdir -p pdf
mkdir -p tmp
cp *.md tmp/
cd tmp
mv README.md chapter0.md

pandoc *.md -o ../pdf/dnsguide.pdf

cd ..
rm -rf tmp

echo "Check pdf/dnsguide.pdf"
