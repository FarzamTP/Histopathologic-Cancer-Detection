#!/bin/bash
kaggle competitions submit -c histopathologic-cancer-detection -f submission.csv -m $1

echo "";
echo "Follow link https://www.kaggle.com/c/histopathologic-cancer-detection/submissions to view results.";
