function install_nativefied_apps
    mkdir -p ~/nativefied_apps
    cd ~/nativefied_apps
    nativefier "https://discord.com/channels/694182858767597628" --internal-urls ".*discord\.com" --name Discord
    nativefier "https://github.com/" --internal-urls ".*github\.com" --name Github
    nativefier "https://lumapps.atlassian.net/secure/Dashboard.jspa?selectPageId=10112" --internal-urls ".*atlassian\.net" --name Jira
    nativefier "https://www.notion.so/6229cf9baeb4436cab1313f074f34af5?v=1f81e5751ecc401bb5155499fed7c169" --internal-urls ".*notion\.so" --name Notion
    nativefier "https://lumapps.slack.com/archives/C01DVKNDBRV" --internal-urls ".*slack.com" --name Slack
    nativefier "https://we.lumapps.com/we/" --internal-urls ".*lumapps\.com|.*\accounts.google.com" --name We
    nativefier "https://web.whatsapp.com/" --internal-urls ".*whatsapp\.com" --name WhatsApp
end

set -x PATH $PATH $HOME/nativefied_apps/
