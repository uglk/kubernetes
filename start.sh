#!/bin/bash
kops edit ig --name=example.ullagallu.online nodes-ap-south-1a &&
kops edit ig --name=example.ullagallu.online control-plane-ap-south-1a &&
kops update cluster --name example.ullagallu.online --yes --admin &&
