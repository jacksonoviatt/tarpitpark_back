from os import link
import mariadb
from flask import Flask, request, Response
from flask_cors.core import get_regexp_pattern
import dbhelpers
import json
import traceback
import sys
import secrets
from email.utils import parseaddr



app = Flask(__name__)
# CORS(app)


@app.get("/api/iceage")
def get_iceage():
    iceage_result = []
    iceage_list = []
    
    iceage_id = request.args.get('iceageId')
    
    
    try:
        iceage_result = dbhelpers.run_select_statement("SELECT name, intro_text, diet, proportions, habitat, era, photo1, desc1, photo2, desc2, photo3, desc3, id FROM ice_age ia WHERE id = ?", [iceage_id]) 
    except:
       return Response("Something went wrong", mimetype="text/plain", status=400)

    if(iceage_result == None):
        return Response("DB Error, Sorry", mimetype="text/plain", status=500)
    else:
        for iceage in iceage_result:
        # user_results = [{'userId': user_result[i][0], 'email': user_result[0][1], 'username': user_result[0][2], 'bio': user_result[0][3], 'birthdate': user_result[0][4], 'image_url': user_result[0][5], 'bannerUrl': user_result[0][6]}]
            iceage_result = {'name': iceage[0], 'introText': iceage[1], 'diet': iceage[2], 'proportion': iceage[3], 'habitat': iceage[4], 'era': iceage[5], 'photo1': iceage[6], 'desc1': iceage[7], 'photo2': iceage[8], 'desc2': iceage[9], 'photo3': iceage[10], 'desc3': iceage[11], 'id': iceage[12]} 
            # iceage_list.append(iceage_result)
        iceage_json = json.dumps(iceage_result, default=str)
        return Response(iceage_json, mimetype="application/json", status=201)




if(len(sys.argv) > 1):
    mode = sys.argv[1]
else:
    print("No mode argument, please pass a mode argument when invoking the file")
    exit()

if(mode == "production"):
    import bjoern  # type: ignore
    bjoern.run(app, "0.0.0.0", 5015)
elif(mode == "testing"):
    from flask_cors import CORS
    CORS(app)
    app.run(debug=True)
else:
    print("Invalid mode, please select either 'production' or 'testing'")
    exit()
