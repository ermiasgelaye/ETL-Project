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
    image = "/Users/ermiasgaga/Documents/GitHub/ETL-Project/flask_api_app/templates/Aggrigate_plot.png"
    return render_template('index.html', image=image)


@app.route('/companies')
def get_companies():
    all_companies = pd.read_sql_query('SELECT * FROM Company', con=engine)
    all_companies=all_companies.to_json(orient = "records")
    result = json.loads(all_companies)
    return jsonify(result)


if __name__ == "__main__":
    app.run(debug=True)
    
