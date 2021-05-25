## cordova-plugin-isbackground
--

This is a Cordova plugin to determine if an iOS app is in the foreground or not.
#### Supported Platforms

* iOS > 8.0

#### Installing

Install with Cordova cli

    $ cordova plugin add https://github.com/akilude/cordova-plugin-isbackground.git
	
#### Usage

* After getting deviceReady event;

```javascript
isBackground.currentState(success, failure);

function success(result==1) {
	if (result) {
		console.log('App is in the foreground');
	} else {
		console.log('App in background');
	}
};

function failure(err) {
	console.log("Error " + err);
};
```