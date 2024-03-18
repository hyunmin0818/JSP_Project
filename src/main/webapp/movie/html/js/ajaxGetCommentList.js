function getViewCount(movieSeq, callback) {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "GetViewCountAction?movieSeq=" + movieSeq, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var response = JSON.parse(xhr.responseText);
            var viewCount = response.viewCount;
            callback(viewCount);
        }
    };
    xhr.send();
}
