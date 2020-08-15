from flask import Flask, jsonify, render_template
import pandas as pd
import json
from sqlalchemy import create_engine
import numpy as np 

app = Flask(__name__,static_folder='static')

engine = create_engine('postgresql+psycopg2://postgres:216724401@2@localhost:5432/top-companies_db')
connection = engine.connect()

conn =engine.connect()

@app.route('/')
def home():
    image = "https://i.guim.co.uk/img/media/1d3a1b588915aaae8d2ceefae6294414d7181077/0_100_5758_3455/master/5758.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=5a7552da71c715988803a0d764fc3390"
    return render_template('index.html', image=image)


@app.route('/companies')
def get_companies():
    all_companies = pd.read_sql_query('SELECT * FROM Company', con=engine)
    all_companies=all_companies.to_json(orient = "records")
    result = json.loads(all_companies)
    return jsonify(result)


if __name__ == "__main__":
    app.run(debug=True)
    
