set theDialogText to do shell script "{Full path}/download-folder-checker/checkFolder.sh"

display dialog theDialogText with icon caution buttons {"Not this time", "Continue"} default button "Continue" cancel button "Not this time"
do shell script "open ~/Downloads"