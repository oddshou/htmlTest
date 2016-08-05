<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>

</title>
    <script type="text/javascript">
        function upload_suc(id, filename, fileSize, hash) {
            alert(filename);
            alert(hash);
        }
        function upload_fail(id, msg) {
            alert("upload fail:" + filename);
        }
        function unpack_suc(id,versioncode, versionname, packname, iconurl, cert, permission) {
            alert("unpack: " + versioncode + "," + versionname + "," + packname + "," + iconurl + "," + cert + "," + permission);
        }
        function unpack_fail(id, msg) {
            alert("unpack fail:" + filename);
        }
        function upload_msg(id, msg) {
            alert("msg|" + msg);
            return 1;
        }
    </script>
</head>
<body>
<form method="post" action="upload.aspx" id="form1">
    <div class="aspNetHidden">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE2MTY2ODcyMjlkZPHVzuzhbJSHRgI8C7YAw/tYFtDWezBD5PpjzA6TL+oY" />
    </div>

    <div class="aspNetHidden">

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0615FC78" />
    </div>
    <div>
        <object type="application/x-shockwave-flash" data="flash/ResourceUpload.swf"  id="uploadifyUploader" style="visibility: visible;" height="80px">
            <param name="quality" value="high" />
            <param name="wmode" value="opaque" />
            <param name="flashVars" value="config=flash/configuration.xml&appid=10&subid=1&ctrlid=1&thumb=true&url=http://cms.huashenggame.com/upload/UploadFile.asmx?wsdl&extension=,jpg,png,gif,bmp,apk,rar," />
            <param name="allowScriptAccess" value="sameDomain" />
        </object>
    </div>
</form>
</body>
</html>