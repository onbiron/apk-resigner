A bash script utility that resigns the Android Package (APK) files (Android applications) with different certificates.

#Sample Usage

[Download the signapk.sh file](./signapk.sh)


Parameters of the `signapk.sh`

* `param1:` APK file, to be signed

* `param2:` keystore location 

* `param3:` keystore pass

* `param4:` key alias

**Signs the APK with the given new key**

**Tutorial 1:** Signing a stock application with your own android debug key

Android Calculator Application, "com.android.calculator2" calculator.apk
```bash
./signapk.sh calculator.apk ~/.android/debug.keystore android androiddebugkey
```
It creates signed_calculator.apk at the same path

**Tutorial 2:** Default is your own debug key If you do not provide any key-related parameters (param2,param3 and param4), it uses your own android debug key as a default option.

```bash
./signapk.sh calculator.apk 
```
is same as above usage

For more information about signing your application; http://developer.android.com/tools/publishing/app-signing.html#debugmode
