(function(){
    var whichDomain="derstandard.at";
    var ctr=1;
    function doProcess(docFrag,searchInDocFrag){
        var sR=docFrag.querySelectorAll("div div div cite._Rm");
        var foundExec=false;
        var winRef;
        for(var i=0;i<sR.length && !foundExec;i++){
            var url=sR[i].textContent;
            if(url.indexOf(whichDomain)!=-1){
                var p=sR[i];
                while(p.tagName.toLowerCase()!=="li"){
                    p=p.parentNode;
                }
                r=p.querySelectorAll("a")[0];
                foundExec=true;
                winRef=window.open(r.getAttribute("href"),"_blank");
                setTimeout(function(){winRef.close();},10000);
            }
        }
        if(!foundExec){
            //repeat for next page
            var nLink;
            if(!searchInDocFrag){
                nLink=document.querySelectorAll("a#pnnext.pn")[0];
            }else{
                nLink=docFrag.querySelectorAll("a#pnnext.pn")[0];
            }
            var u=nLink.getAttribute("href");
            var xhr=new XMLHttpRequest();
            xhr.open("get",u,true);
            xhr.onreadystatechange=function(){
                if(xhr.readyState==4 && xhr.status==200){
                    console.log("Reading xhr response . . ."+Math.random());
                    var currResults=xhr.responseText;
                    var tmp=document.createDocumentFragment();
                    var t=document.createElement("div");
                    t.innerHTML=currResults;
                    tmp.appendChild(t);
                    doProcess(tmp,true);
                }
            };
            try{
                xhr.send(null);
            }catch(exjs){
                console.log("Error: "+exjs);
            }
        }
    }
    var currResults=document.getElementsByTagName("body")[0].innerHTML;
    var tmp=document.createDocumentFragment();
    var t=document.createElement("div");
    t.innerHTML=currResults;
    tmp.appendChild(t);
    doProcess(tmp);
})();
