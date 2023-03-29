const express = require('express');
const fs = require('fs');
const app = express();
const port = process.env.NODE_PORT || 8080;
const secretPath = process.env.SECRETS_PATH || '';
if(!secretPath) throw Error('you should define env SECRETS_PATH targeting a json file');
const secrets = require(secretPath);

app.post('/srt/pwd', (req, res) => {
  const streamId = req.query.streamid;
  console.log('/srt/pwd for streamid = '+req.query.streamid)

  if (secrets.hasOwnProperty(streamId)) {
    res.send(secrets[streamId]);
  } else {
    res.send('');
  }
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});