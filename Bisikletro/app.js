const express = require('express')
const app = express();
const port = 8080;

app.set("view engine", "ejs");
app.use(express.static("public"));

app.get('/', (req, res) => {
  res.render('index');
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}!`)
});

// AIzaSyDgjluS8zAdmfLdm6NEi0d2vbcd-YY7Drk