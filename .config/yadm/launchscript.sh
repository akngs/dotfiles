#!/usr/bin/env bash
DEBIAN_FRONTEND=noninteractive
sudo apt update
sudo apt install -y yadm

# add user
sudo useradd ak -m
sudo usermod -aG sudo ak
sudo mkdir /home/ak/.ssh
echo 'ak      ALL=(ALL) NOPASSWD:ALL' | sudo EDITOR='tee -a' visudo
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDJpRTAOM0Y0Uvl468En7EWXn5wOF9GEQLyw/DTbDZo0b2RS67cnS1NVP5ByVTFsyL94DJYo82rmJCtYC+APoXDDLL9agGyuF1m+WCKBLlZDU5xNfg98r94hjkCRWOL1ONqo6JKNcZxYTv37yrkAJIxepZMJmsFdvw1vGZn/trXW2Zf8Ac9U0mlBixLEBdDMdAOCiCHDTj4WdJ9gZlejnrfrlFCuE4niEVvpmW7QsKNNM7QQ0g1fgdVIrF++HuJIqeD7cfJaaHcbOidmpAbREqaOqB7UoTqMTBiYlN+xJcWHanv1yV4YCZiGLBfnbPWk9mKHi6NXtfWmdbMbv7P3Ivz2QB5uVe6Hn3n076ViVIXwL0jCivXoeqjP0D2Qqg2rKHtaWF3BpAey40o2WqV445g07PlLmO6Qvg3603c1gPaMby9NjWfRAUzbIcdple90zut+bJl7vSoazaoLaLWYR/e3B7LEX/Oq7MumJ9mBGo568OvOWClilC5n5fdGE1Dj6Ac4fZzyIDVMM3Zw4Rtob3ZRbl7T7cjJMqvA7oT6d/2IArS3GhuUxaZF79K05BaUmK3GPZPrKRnqaou9CSfGaWkhsU13SXlKwNpQkgPgwd4XIs7GTk+eYp/jfothAY2q51CRkOhN9Li8puPrUKqd8JGwueoQQHZ6B0Nr/CCA5esQQ== ' >> /home/ak/.ssh/authorized_keys
sudo chown -R ak:ak /home/ak/.ssh
