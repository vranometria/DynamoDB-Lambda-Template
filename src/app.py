import boto3
import os

ENDPOINT_URL = os.environ["ENDPOINT_URL"]

def lambda_handler(event, context):
    dynamodb = boto3.resource('dynamodb', endpoint_url=ENDPOINT_URL)
    table = dynamodb.Table('test')
    item = { "id": "1", "data": event["value"] }
    response = table.put_item(Item=item)
    return { "result": "ok" }
