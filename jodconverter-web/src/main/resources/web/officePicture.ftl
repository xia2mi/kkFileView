<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>预览</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="js/lazyload.js"></script>
    <style>
        .container {
            width: 100%;
            height: 100%;
        }

        .img-area {
            text-align: center
        }

    </style>
</head>
<body bgcolor="#404040">
<div class="container">
    <#list imgurls as img>
        <div class="img-area">
            <img class="my-photo" alt="loading" title="查看大图" style="cursor: pointer;" data-src="${img}"
                 src="images/loading.gif" onclick="return false;">
        </div>
    </#list>
</div>
<script>
    window.onload = checkImgs;
    window.onscroll = throttle(checkImgs);
</script>
</body>
</html>