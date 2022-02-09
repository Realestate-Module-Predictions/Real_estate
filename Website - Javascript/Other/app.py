from flask import Flask, jsonify, render_template, request, redirect, url_for
from sqlalchemy import create_engine
#import library psycopyg2
import psycopg2
#import library sqlio
import pandas.io.sql as sqlio
import pandas

# Postgres username, password, and database name
POSTGRES_ADDRESS = 'db1-realestate-prediction.cc3utfionj0h.us-east-2.rds.amazonaws.com' ## INSERT YOUR DB ADDRESS
POSTGRES_PORT = '5432'
POSTGRES_USERNAME = 'realestate'
POSTGRES_PASSWORD = '12345678'
POSTGRES_DBNAME = 'postgres'

#create database connection variable 
conn = psycopg2.connect(user=POSTGRES_USERNAME, password=POSTGRES_PASSWORD, host=POSTGRES_ADDRESS, database=POSTGRES_DBNAME)

app = Flask(__name__)


@app.route("/")
def index():
  df = sqlio.read_sql_query('''SELECT * FROM public."Active_Predictions";''', conn)
  data_list = []
  for i in range(100):
    estatedata = {'mls_id': df["mls_id"].iloc[i]
                ,'municipality': df["municipality"].iloc[i]
                ,'style': df['style'].iloc[i]
                ,'list_price': df['list_price'].iloc[i]
                ,'community': df['community'].iloc[i]
                ,'type': df['type'].iloc[i]
                ,'br': df['br'].iloc[i]
                ,'er': df['er'].iloc[i]
                ,'wr': df['wr'].iloc[i]
                ,'fr': df['fr'].iloc[i]
                ,'kitchen': df['kitchen'].iloc[i]
                ,'gar_type': df['gar_type'].iloc[i]
                ,'ac': df['ac'].iloc[i]
                ,'heat': df['heat'].iloc[i]
                ,'contract_date': df['contract_date'].iloc[i]
                ,'address': df['address'].iloc[i]
                ,'lat': df['lat'].iloc[i]
                ,'lng': df['lng'].iloc[i]
                ,'selling_price_predictions': df['selling_price_predictions'].iloc[i]
              }

    data_list.append(estatedata)
  return render_template("index.html", data_list = data_list)

# @app.route ("/tabledata")
# def get_data():
#       df = sqlio.read_sql_query('''SELECT * FROM public."REALESTATE";''', conn)
#       data
#       return jsonify(df["muncipality"])


if __name__ == "__main__":
  app.run()
  
  
  #active_predictions = Table("Active_Predictions", meta,
    # db.Column('id', db.Integer,primary_key=True)
    # municipality = db.Column(db.String(60))
    # community= db.Column(db.String(60))sda
    # list_price= db.Column(db.Float)
    # type = db.Column(db.String(60))
    # style= db.Column(db.String(60)
    # br= db.Column(db.Integer)
    # er=	db.Column(db.Integer)
    # wr=	db.Column(db.Integer)
    # fr=	db.Column(db.String(60))
    # kitchen= db.Column(db.Integer)
    # gar_type=db.Column(db.String(60))
    # ac= db.Column(db.String(60))
    # heat= db.Column(db.String(60))
    # contract_date= db.Column(db.Date)
    # mls_id = db.Column(db.String(60))
    # address= db.Column(db.String(60))
    # lat= db.Column(db.Float)
    # lng= db.Column(db.Float)
    # selling_price_predictions= db.Column(db.Float))

#data model
# class ActivePredictions(db.Model):
#     __tablename__ = 'Active_Predictions'
#     mls_id = db.Column(db.String(60), primary_key=True)
#     municipality = db.Column(db.String(60))
#     community= db.Column(db.String(60))
#     list_price= db.Column(db.Float)
#     type = db.Column(db.String(60))
#     style= db.Column(db.String(60))
#     br= db.Column(db.Integer)
#     er=	db.Column(db.Integer)
#     wr=	db.Column(db.Integer)
#     fr=	db.Column(db.String(60))
#     kitchen= db.Column(db.Integer)
#     gar_type=db.Column(db.String(60))
#     ac= db.Column(db.String(60))
#     heat= db.Column(db.String(60))
#     contract_date= db.Column(db.Date)
#     address= db.Column(db.String(60))
#     lat= db.Column(db.Float)
#     lng= db.Column(db.Float)
#     selling_price_predictions= db.Column(db.Float)


# class InactivePredictions(db.Model):
#     __tablename__ = 'Inactive_Predictions'
#     mls_id = db.Column(db.String(60), primary_key=True)
#     municipality = db.Column(db.String(60))
#     community= db.Column(db.String(60))
#     list_price= db.Column(db.Float)
#     sold_price= db.Column(db.Float)
#     type= db.Column(db.String(60))
#     style= db.Column(db.String(60))
#     br= db.Column(db.Integer)
#     er=	db.Column(db.Integer)
#     wr=	db.Column(db.Integer)
#     fr=	db.Column(db.String(60))
#     kitchen= db.Column(db.Integer)
#     gar_type=db.Column(db.String(60))
#     ac= db.Column(db.String(60))
#     heat= db.Column(db.String(60))
#     contract_date= db.Column(db.Date)
#     address= db.Column(db.String(60))
#     lat= db.Column(db.Float)
#     lng= db.Column(db.Float)
#     sold_price_predictions= db.Column(db.Float)



#   #with open('data/Inactive_Listings_Final.csv') as csv_file:
#    # data = csv.reader(csv_file, delimiter=',')
#     #first_line = True
#     #places = []
#     #for row in data:
#      # if not first_line:
#       #  places.append({
#        #   "Id": row[0],
#         #  "Municipality": row[1],
#          # "Community": row[2],
#           #"List_Price": row[3],
#         #  "Sold_Price": row[4],
#          # "Type": row[5],
#          # "Style": row[6],
#          # "BR": row[7],
#          # "ER":	row[8],
#          # "WR":	row[9],
#          # "FR":	row[10],
#          # "Kitchen": row[11],
#          # "Gar_Type":	row[12],
#          # "AC": row[13],
#          # "Heat": row[14],
#          # "Contract_Date": row[15],
#          # "MLS_ID": row[16],
#          # "Address": row[17],
#          # "Lat": row[18],
#          # "Lng": row[19]
#       #  })
#      # else:
#       #  first_line = False
#   dataActive= ActivePredictions.query.all()
#   dataInactive = InactivePredictions.query.all()