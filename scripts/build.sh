#Transformação do JS
babel --presets react,es2015 js/source -d js/build
#Empacotamento de js
browserify js/build/app.js -o bundle.js
#empacotamento de css
cat css/*/* css/*.css | sed 's/..\/..\/images/images/g' > bundle.css
#pronto
date; echo;
