// import Employee Controller
const EmployeeController = require("../controllers/EmployeeController");

// import express
const express = require("express");

// make an object router
const router = express.Router();

// make home routing
router.get("/", (req, res) => {
    res.send("Hello Faiz");
});


// Routing for Employees
router.get("/employees", EmployeeController.index);
router.post("/employees", EmployeeController.store);
router.put("/employees/:id", EmployeeController.update);
router.delete("/employees/:id", EmployeeController.destroy);
router.get("/employees/:id", EmployeeController.show);
router.get("/employees/status/:Status", EmployeeController.showByStatus);
router.get("/employees/search/:Nama_Pegawai", EmployeeController.search);

// export routing
module.exports = router;