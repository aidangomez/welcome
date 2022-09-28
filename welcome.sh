#!/bin/bash

morning="Good morning, I hope u have a rly good day (◕‿◕✿)
Good morning, I hope u slept well (◕‿◕✿)
you mean a lot to me (◕‿◕✿)
(づ￣ ³￣)づ Good morning, I missed you!
(づ￣ ³￣)づ Good morning, Cohere awaits!
(づ￣ ³￣)づ Good morning!
(｡◕‿◕｡) you look lovely today
(｡◕‿◕｡) It’s gonna be a rly good day today
(｡◕‿◕｡) did you sleep well? remem u need 6-9 hours each night!
(づ｡◕‿‿◕｡)づ big things gonna happen today!!
(づ｡◕‿‿◕｡)づ gm, im very proud of u
(づ｡◕‿‿◕｡)づ gm, how’d you sleep?
༼ つ ಥ_ಥ ༽つ pls give me coffee"

afternoon="༼ つ ◕_◕ ༽つ within lies great power. go forth and seek your parameters.
༼ つ ◕_◕ ༽つ today, you shall discover your true power
༼ つ ◕_◕ ༽つ behold... Caleb      ▼・ᴥ・▼ <( woof )
ʕ•ᴥ•ʔ co:mfy time
ʕ•ᴥ•ʔ im a bear
u look rly nice today (◕‿◕✿)
Cheer time.. 1! 2! 3! CooHeErrE (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧
(づ￣ ³￣)づ I MISSED YOU SO MUCH THANK YOU FOR COMING BACKK ADFJSLDJF
(づ￣ ³￣)づ YOU’RE BACK!!! ADFJSLDJF
COHEEEERRREEEE (｡◕‿◕｡)
| (• ◡•)| COHERE TIME! (❍ᴥ❍ʋ)
༼ つ ಥ_ಥ ༽つ U r my hero
(~˘▾˘)~ PARAMETERS ~(˘▾˘~)
im baby (◕ ˬ ◕✿)"

currenttime=$(date +%H:%M)
if [[ "$currenttime" > "01:00" ]] && [[ "$currenttime" < "12:00" ]]; then
    msg=$(echo "$morning" | sort -R | head -n 1)
else
    msg=$(echo "$afternoon" | sort -R | head -n 1)
fi

defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "${msg}" || defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "'${msg}'"
