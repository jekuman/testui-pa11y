#! /bin/bash

export BASEURL=localhost:4000
node scripts/testui_createTest.js | sed -n -E -e '/DOCTYPE/,$ p' > reports/createTest.html
node scripts/testui_quizPage.js | sed -n -E -e '/DOCTYPE/,$ p' > reports/quizPage.html
node scripts/testui_pauseModal.js | sed -n -E -e '/DOCTYPE/,$ p' > reports/pauseModal.html
node scripts/testui_quizReview.js | sed -n -E -e '/DOCTYPE/,$ p' > reports/quizReview.html

sed -i -e 's/<p class=\"counts\">/<img style=\"width: 100%; margin-top: 15px\" src=..\/screenshots\/createTest.png> <p class=\"counts\">/g' reports/createTest.html
sed -i -e 's/<p class=\"counts\">/<img style=\"width: 100%; margin-top: 15px\" src=..\/screenshots\/quizPage.png> <p class=\"counts\">/g' reports/quizPage.html
sed -i -e 's/<p class=\"counts\">/<img style=\"width: 100%; margin-top: 15px\" src=..\/screenshots\/pauseModal.png> <p class=\"counts\">/g' reports/pauseModal.html
sed -i -e 's/<p class=\"counts\">/<img style=\"width: 100%; margin-top: 15px\" src=..\/screenshots\/quizReview.png> <p class=\"counts\">/g' reports/quizReview.html