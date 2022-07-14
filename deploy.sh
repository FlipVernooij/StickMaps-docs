#!/usr/bin/env bash

# clean previous
echo "Deploying StickMaps docs."
rm -rf ./stickmaps ./stickmaps.tgz | true;
echo "Renaming theme dir and toml file"
rm -rf ./theme
cp -r ./theme_prod ./theme;
cp ./book_prod.toml ./book.toml
## generate the book
mdbook build --dest-dir ./stickmaps;
## Fix the print.html file
echo "# Fix images in print.html";
sed -i 's/src\=\"pages\/basics\/images/src\=\"images/g' ./stickmaps/print.html
## archive the book
echo "# Archiving book";
tar -czf ./stickmaps.tgz ./stickmaps;
rm -rf ./stickmaps;
## upload the book
echo "# transferring book";
scp -P 2233 ./stickmaps.tgz flip@dennies.co:/home/flip;
rm ./stickmaps.tgz;
### remove old book
echo "# remove old book";
ssh -p 2233 flip@dennies.co sudo rm -rf /home/stagedrop/docs/stickmaps | true;
### unarchive the book
echo "# unarchiving new book";
ssh -p 2233 flip@dennies.co sudo tar -xzf /home/flip/stickmaps.tgz -C /home/stagedrop/docs;

echo "Renaming theme dir and toml file"
rm -rf ./theme
cp -r ./theme_dev ./theme;
cp ./book_dev.toml ./book.toml

