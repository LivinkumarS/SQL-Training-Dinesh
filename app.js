// const mysql = require('mysql2')
import mysql from "mysql2";

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Qwerty@12345",
  database: "learn_sql",
});

db.connect((err) => {
  if (err) {
    return console.log(err);
  }
  console.log("Connection Successfull!");
});

function getAllUsers() {
  db.query("SELECT * FROM employees", (err, rows) => {
    if (err) {
      return console.log(err);
    }
    console.log(rows);
  });
}

function getUser(id) {
  db.query(`SELECT * FROM employees where id=?`, [id], (err, rows) => {
    if (err) {
      return console.log(err);
    }
    console.log(rows);
  });
}

function addUser(fName, lName, hp) {
  db.query(
    `INSERT INTO employees (fName, lName, hourly_pay) VALUES (?, ? ,?)`,
    [fName, lName, hp],
    (err, rows) => {
      if (err) {
        return console.log(err);
      }
      console.log("Added Successfully");
    }
  );
}

addUser('James','bond',7000);
