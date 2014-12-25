indexHtml=resources/public/index.html

openIs="$(which open)"        # Works on Mac.
xdgOpenIs="$(which xdg-open)" # Works on Linux, and on Mac with MacPorts, etc.

if [ -n "${openIs}" ]
then
    open $indexHtml 
elif [ -n "${xdgOpenIs}" ]
then
    xdg-open $indexHtml
else
    echo "Install open or xdg-open on your system, or manually open" $indexHtml "in your web browser."
fi
