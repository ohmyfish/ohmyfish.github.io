#!/bin/bash
cd /Users/ohmycloud/blogs/ohmyfish/_posts
ssh-add ~/.ssh/id_rsa_ohmyfish
git add .
git commit -m "默写旧时光"
git push origin master
