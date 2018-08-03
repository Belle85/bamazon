// This is where I declare my different variables that I will need for my packages
var mysql = require("mysql");
var inquirer = require("inquirer");

var figlet = require("figlet");
var Tablefy = require("tablefy");

// Establishes connection to my database.
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "bamazon_db"
});
connection.connect(function (err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  console.log("Connected");

});

// --------------------------------------------------------------

//USE OF FIGLER TO DISPLAY WORDING AS NAME/TITLE
figlet("Belle's Store", function (err, data) {
  if (err) {
    console.log(err);
    return;
  }
  console.log(data);
})

//USE OF TABLEFY TO DISPLAY DATABASE AS TABLE IN NODE.JS
let table = new Tablefy()
connection.query("SELECT * FROM products", (err, res) => {
  table.draw(res);
  start()
});

// ---------------------------------------------------------------

// Ask users the ID of the product they would like to buy.
function start() {
  inquirer
    .prompt([
      {
        type: "input",
        name: "item_id",
        message: "What product would you like to buy? Enter the product ID.",
        validate: function (value) {
          if (isNaN(value) === false) {
            return true;
          }
          return false;
        }
      },
    ])
}
