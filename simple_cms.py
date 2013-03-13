from bottle import route, run, template

import os

@route('/cms')
def load():
	files = os.listdir('./data')
	return template('main_template', files=files)

run(host='localhost', port=8080)