from flask import Flask
from flask import render_template
app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello, World!'

@app.get('/htm')
def html():
    return render_template('server.html')

@app.get('/dato')
def example():
    return render_template('curriculum.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')