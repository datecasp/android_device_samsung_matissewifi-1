function croot()
{
    T=$(gettop)
    if [ "$T" ]; then
        \cd $(gettop)
    else
        echo "Couldn't locate the top of the tree.  Try setting TOP."
    fi
}

# Run device patches on the tree
sh device/samsung/msm8226-common/patch/apply.sh

# Device specif branches
cd vendor/extra
git checkout m-caf-matisse-common
croot # End Device specif branches

# Start frameworks/base
cd frameworks/base
git pull https://github.com/sub77-du/android_frameworks_base.git
croot # End frameworks/base

# Start packages/apps/Settings
cd packages/apps/Settings
git pull https://github.com/sub77-du/android_packages_apps_Settings.git
croot # End packages/apps/Settings
