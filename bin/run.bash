UNTIL_WEB_SERVER_STARTS_S=2

indexHtml=http://localhost:$1/resources/public/index.html

openIs="$(which open)"        # Works on Mac.
xdgOpenIs="$(which xdg-open)" # Works on Linux, and on Mac with MacPorts, etc.

node node_modules/.bin/http-server -p $1 & # X Servers typically run on port 6000, but since this is running on the browser, we choose a higher range.

sleep $UNTIL_WEB_SERVER_STARTS_S

if [ -n "${openIs}" ]
then
    open $indexHtml 
elif [ -n "${xdgOpenIs}" ]
then
    xdg-open $indexHtml
else
    echo "Install open or xdg-open on your system, or manually open" $indexHtml "in your web browser."
fi
