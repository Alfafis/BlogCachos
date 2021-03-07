const express = require("express");
const bodyParse = require("body-parser");
const cors = require("cors");
const app = express();
const mysql = require("mysql");
const multer = require("multer");
const upload = multer({ dest: "uploads/" });

const db = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "",
  database: "test",
});

app.use(cors());
app.use(express.json());
app.use(bodyParse.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  const sqlGet = "SELECT * FROM cachos where 1";
  db.query(sqlGet, (err, result) => {
    res.send(result);
  });
});

app.post("/cachos", upload.single(""), (req, res) => {
  const TIPO = req.body.TIPO;
  const MATERIA = req.body.MATERIA;
  const TITULO = req.body.TITULO;
  const TEXTO = req.body.TEXTO;
  const DATA = req.body.DATA;
  const FOTO = req.body.FOTO;
  const VIDEO = req.body.VIDEO;

  const sqlInsert =
    "INSERT INTO cachos (TIPO, MATERIA, TITULO, TEXTO, DATA, FOTO, VIDEO) VALUES (?,?,?,?,?,?,?)";
  db.query(
    sqlInsert,
    [TIPO, MATERIA, TITULO, TEXTO, DATA, FOTO, VIDEO],
    (err, result) => {
      console.log(result);
    }
  );
});

app.delete("/delete/:ID", (req, res) => {
  const ID = req.params.ID;
  console.log(req.params);
  const sqlDelete = "DELETE FROM cachos WHERE ID = ?";
  db.query(sqlDelete, ID, (err, result) => {
    if (err) console.log(err);
  });
});

app.put("/update", (req, res) => {
  const ID = parseInt(req.body.ID);
  const TIPO = req.body.TIPO;
  const MATERIA = req.body.MATERIA;
  const TITULO = req.body.TITULO;
  const TEXTO = req.body.TEXTO;
  const DATA = req.body.DATA;
  const FOTO = req.body.FOTO;
  const VIDEO = req.body.VIDEO;

  const sqlUpdate = `Update cachos SET TIPO = ?, MATERIA = ?, TITULO = ?, TEXTO = ?, DATA = ?, FOTO =?, VIDEO = ? WHERE ID = ?`;
  db.query(
    sqlUpdate,
    [TIPO, MATERIA, TITULO, TEXTO, DATA, FOTO, VIDEO, ID],
    (err, result) => {
      if (err) console.log(err);
    }
  );
});

app.listen(3030, () => {
  console.log("rodando...");
});
