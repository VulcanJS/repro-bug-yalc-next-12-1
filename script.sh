yalc --version || (echo "install Yalc first" && exit 1)
cd my-package && yarn && yalc publish && cd ..
cd my-app && yarn && yalc link my-package && yarn run dev
# Open app, loading ESM should not work. 
# The issue will point to the built "_app.js" doing a "require" call because it thinks it must transform it into cjs while it should not.
# This doesn't happen without Yalc, so it's probably related to the path of the file pointing to smth that doesn't look like a local node module.
