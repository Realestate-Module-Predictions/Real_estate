from flask import Flask, render_template, request, redirect, url_for
import csv
app = Flask(__name__)
@app.route("/")
def index():
  with open('data/Inactive_Listings_Final.csv') as csv_file:
    data = csv.reader(csv_file, delimiter=',')
    first_line = True
    places = []
    for row in data:
      if not first_line:
        places.append({
          "Id": row[0],
          "Municipality": row[1],
          "Community": row[2],
          "List_Price": row[3],
          "Sold_Price": row[4],
          "Type": row[5],
          "Style": row[6],
          "BR": row[7],
          "ER":	row[8],
          "WR":	row[9],
          "FR":	row[10],
          "Kitchen": row[11],
          "Gar_Type":	row[12],
          "AC": row[13],
          "Heat": row[14],
          "Contract_Date": row[15],
          "MLS_ID": row[16],
          "Address": row[17],
          "Lat": row[18],
          "Lng": row[19]
        })
      else:
        first_line = False
  return render_template("index.html", places=places)

if __name__ == "__main__":
   app.run()