# Sideload Tweaked Instagram

Building: Requires [theos](https://github.com/theos/theos) and ~~[theos-jailed](https://github.com/kabiroberai/theos-jailed)~~ installed.

Credit goes to [opa334](https://github.com/opa334/IGSideloadFix)

# Rocket for Instagram

1. Prepare a decrypted IPA of Instagram

2. Open `Makefile` and edit the path to the decrypted Instagram ipa

3. Get a deb of Rocket via cydownload (https://github.com/borishonman/cydownload/releases) or a similar tool and extract it (or alternatively get the files below from a jailbroken device that has Rocket installed)

4. Put /Library/Application Support/Rocket/Rocket.bundle into the Resources folder of this repo (to Resources/Rocket.bundle/(DateTools.bundle/MoPub.bundle/...))

5. Get the rocket dylib from /usr/lib/Rocket.dylib inside the deb and open the arm64 slice in Hopper
> Note: the trial version of Hopper doesn't support export patched file, you can use Ghidra, which is free, instead of Hopper

6. Replace the first two instructions of +[RABuildManager installType] with `mov x0, #0x1; ret;` to make Rocket think it was built for sideloaded installs

7. Export patched binary, strip code signature when prompted

8. Inject dylib with azule, sideloadly or some other tool.
