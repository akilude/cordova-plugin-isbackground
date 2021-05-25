/*global cordova, module*/
module.exports = {
    currentState: function (successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "isBackground", "currentState", [null]);
    }
};
