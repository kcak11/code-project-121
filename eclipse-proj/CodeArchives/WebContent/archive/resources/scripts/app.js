function followOnTwitter() {
    window.open("http://twitter.com/kcak11", "twitter_kcak11");
}
function connectFBook() {
    window.open("http://www.facebook.com/kcak11", "facebook_win_kcak11");
}

var captureUserFeedback = function () {
    screenOverlay.dettach(document.getElementById("contactDialogBox"));
    screenOverlay.attach(document.getElementById("tloader_ca"));
    var wHandle;
    if (feedbackURL) {
        wHandle = window.open(window.siteRequestor === 'KCAK11.COM' ? 'https://kcak11.com/codearchives/view?link=FEEDBACK' : feedbackURL, "caUserFeedbackWin", "left=11,top=11,width=11,height=11,resizable=no");
    }
    setTimeout(function () {
        screenOverlay.dettach(document.getElementById("tloader_ca"));
        try {
            wHandle.resizeTo(790, 650);
        } catch (exjs) {
            wHandle.postMessage("FEEDBACK_WINDOW_RESIZE", "*");
        }
    }, 5500);
};