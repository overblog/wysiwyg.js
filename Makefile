UGLIFYJS = ./node_modules/.bin/uglifyjs
CLEANCSS = ./node_modules/.bin/cleancss

build: compress-js compress-css

compress-js:
		$(UGLIFYJS) src/wysiwyg.js > dist/wysiwyg.min.js
		$(UGLIFYJS) src/wysiwyg-editor.js > dist/wysiwyg-editor.min.js

compress-css:
	 	$(CLEANCSS) src/wysiwyg-editor.css > dist/wysiwyg-editor.min.css
