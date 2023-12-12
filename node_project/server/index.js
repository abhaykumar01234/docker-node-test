const express = require("express");

const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.get("/", (req, res) => res.send("Hello World 3"));

const PORT = process.env.PORT || 4000;

app.listen(PORT, () => console.log(`Listening on PORT ${PORT}`));
