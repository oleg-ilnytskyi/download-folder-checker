set theDialogText to do shell script "/Users/olegilnytskyi/workspace/download-folder-checker/checkFolder.sh"

display dialog theDialogText with icon caution buttons {"Not this time", "Continue"} default button "Continue" cancel button "Not this time"
do shell script "open ~/Downloads"