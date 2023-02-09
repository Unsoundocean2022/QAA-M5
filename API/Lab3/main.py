# Create the following routes within your flask app using Request Bodies, URL params,
# and query params. The route should return the data being sent, and you should use
# your best judgement about which method(s) of sending request data:
    # - Create a new record
    # - Get record by ID
    # - Get all records by a query
    # - Delete a record by name
    # - Update a record by ID

from flask import Flask, request

app = Flask(__name__)
records = []

@app.route('/record', methods=['POST'])
def create_record():
    data = request.json
    records.append(data)
    return {"message": "Record created successfully", "data": data}

@app.route('/record/<int:id>', methods=['GET'])
def get_record_by_id(id):
    record = next((r for r in records if r['id'] == id), None)
    if record:
        return {"message": "Record found", "data": record}
    else:
        return {"message": "Record not found"}, 404

@app.route('/records', methods=['GET'])
def get_records():
    query = request.args.get('query')
    if query:
        filtered_records = [r for r in records if query in r.values()]
        return {"message": "Records found", "data": filtered_records}
    else:
        return {"message": "Records found", "data": records}

@app.route('/record/<name>', methods=['DELETE'])
def delete_record_by_name(name):
    record = next((r for r in records if r['name'] == name), None)
    if record:
        records.remove(record)
        return {"message": "Record deleted successfully", "data": record}
    else:
        return {"message": "Record not found"}, 404

@app.route('/record/<int:id>', methods=['PUT'])
def update_record_by_id(id):
    record = next((r for r in records if r['id'] == id), None)
    if record:
        data = request.json
        record.update(data)
        return {"message": "Record updated successfully", "data": record}
    else:
        return {"message": "Record not found"}, 404

if __name__=='__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
