/**
 * Created by win7 on 2016/5/4.
 */


function person(user, pwd) {
    this.user = user;
    this.pwd = pwd;
    return this;
}

var mPerson = person("users", "pwds");
var syncHead = {
    "udi": "a=1&b=1",
    "chnNo": "",
    "chnPos": "",
    "clientId": "",
    "clientPos": "",
    "clientVer": ""
}
var syncConfigData = {
    "header": syncHead,
    "api": "ReqAppList",
    "params": {}
}

function clickBtn(person) {
    // alert("hello button " + person.user + " event \n" + this);
    // window.open("detail.html");
    window.location.href = "detail.html";
}

function getdata(){
    return "hello world";
}

function sendRequest(syncConfigData, successFun) {
    $.ajax({
        type: "post",
        url: "http://127.0.0.1:42010/jsonapi",
        data: JSON.stringify(syncConfigData),
        dataType: "json",
        success: successFun.success,
        error:ajaxNetworkError
    })
}

var configSuccessFun = {
    success: function (data) {
        // console.log(data.data.groupInfo);
        configData = data.data.groupInfo;
        // if (window.localStorage) {
        //     window.localStorage.setItem("globalData", JSON.stringify(data.data.groupInfo));
        // }
        console.log("group data success");
        console.log(configData);
    }
}

sendRequest(syncConfigData, configSuccessFun);

function ajaxNetworkError(XMLHttpRequest, textStatus, errorThrown) {
    // alert("ajaxNetworkError:" + XMLHttpRequest.status + "-" +
    // XMLHttpRequest.readyState + "-" + textStatus);
    console.log("ajaxNetworkError:" + XMLHttpRequest.status + "-"
        + XMLHttpRequest.readyState + "-" + textStatus + "-");
}