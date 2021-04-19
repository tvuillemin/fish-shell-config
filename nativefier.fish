function install_nativefied_apps
    mkdir -p ~/nativefied_apps
    cd ~/nativefied_apps
    nativefier "https://drive.google.com/drive/my-drive" --internal-urls ".*google\.com" --name Drive
    nativefier "https://lumapps.atlassian.net/secure/RapidBoard.jspa?rapidView=181&selectedIssue=SUP-217&quickFilter=723" --internal-urls ".*atlassian\.net" --name Jira
    nativefier "https://miro.com/app/dashboard/" --internal-urls ".*miro\.com" --name Miro
    nativefier "https://www.notion.so/6229cf9baeb4436cab1313f074f34af5?v=1f81e5751ecc401bb5155499fed7c169" --internal-urls ".*notion\.so" --name Notion
    nativefier "https://we.lumapps.com/we/" --internal-urls ".*lumapps\.com|.*\accounts.google.com" --name We
    nativefier "https://web.whatsapp.com/" --internal-urls ".*whatsapp\.com" --name WhatsApp
end

set -x PATH $PATH $HOME/nativefied_apps/
