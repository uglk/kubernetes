#!/bin/bash
kops edit ig --name=example.ullagallu.online nodes-ap-south-1a &&
kops edit ig --name=example.ullagallu.online control-plane-ap-south-1a &&
kops rolling-update cluster --name example.ullagallu.online
time kops validate cluster --wait 10m
