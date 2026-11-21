"""Flask app serving the Inc. 5000 / FT 500 fastest-growing companies database.

Configure the database with the DATABASE_URL environment variable, e.g.
    export DATABASE_URL="postgresql+psycopg2://postgres:<password>@localhost:5432/top-companies_db"
"""
import os

import pandas as pd
from flask import Flask, Response, render_template
from sqlalchemy import create_engine

DATABASE_URL = os.environ.get(
    "DATABASE_URL", "postgresql+psycopg2://postgres@localhost:5432/top-companies_db"
)

app = Flask(__name__, static_folder="static")
engine = create_engine(DATABASE_URL)


@app.route("/")
def home():
    return render_template("index.html")


@app.route("/companies")
def get_companies():
    """Return every row of the Company table as a JSON array."""
    companies = pd.read_sql_query("SELECT * FROM company", con=engine)
    return Response(companies.to_json(orient="records"), mimetype="application/json")


if __name__ == "__main__":
    app.run(debug=os.environ.get("FLASK_DEBUG") == "1")
