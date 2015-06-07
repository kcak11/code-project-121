File queryclient.b64 is a base64 encoded jarfile created using the utility "certutil" on Windows 7

Extract as follows:

certutil -decode queryclient.b64 queryclient.jar

Use as follows:

java -jar queryclient.jar
