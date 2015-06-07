/*Blog Hook*/
/*
Add code here, which needs to be executed after page load.
*/
try{
    var metaTags=document.getElementsByTagName("head")[0].getElementsByTagName("meta");
    if(metaTags.length>0){
        for(var i=0;i<metaTags.length;i++){
            if((""+metaTags[i].getAttribute("name")).toLowerCase()=="viewport"){
                metaTags[i].setAttribute("content","width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no"); /* Fix for Mobile/Tablet Devices */
            }
        }
    }else{
        var vMeta=document.createElement("meta");
        vMeta.setAttribute("name","viewport");
        vMeta.setAttribute("content","width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no");
        document.getElementsByTagName("head")[0].appendChild(vMeta); /* Fix for Mobile/Tablet Devices */
    }
}catch(_){}

