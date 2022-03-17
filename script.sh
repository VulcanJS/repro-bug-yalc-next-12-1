yalc --version || (echo "install Yalc first" && exit 1)
cd my-package && yarn && yalc publish && cd ..
cd my-app && yarn && yalc link my-package && yarn run dev
# Open app