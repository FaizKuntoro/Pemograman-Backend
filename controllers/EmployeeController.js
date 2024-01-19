// import model Employee
const Employee = require("../models/Employee")

class EmployeesController {
    async index(req, res) {
        // TODO 4: Tampilkan data Employees
        const employees = await Employee.all();

        const data = {
            message: "Menampilkan semua data Employee",
            data: employees
        };

        res.status(200).json(data);
    }

    async store(req, res) {
        /**
         * TODO 2: memanggil method create.
         * Method create mengembalikan data yang baru diinsert.
         * Mengembalikan response dalam bentuk json.
         */

        const Employees = await Employee.create(req.body);
        const data = {
            message: "Menambahkan data Employee",
            data: Employees,
        };

        res.status(201).json(data);
    }



    async update(req, res) {
        /**
         * check id Employees
         * jika ada, lakukan update
         * jika tidak, kirim data tidak ada
         */
        const { id } = req.params;

        const Employees = await Employee.find(id);

        if (Employees) {
            // update data
            const EmployeeUpdated = await Employee.update(id, req.body);
            const data = {
                message: "Mengupdate data Employee",
                data: EmployeeUpdated,
            };

            res.status(200).json(data);
        }
        else {
            // kirim data tidak ada
            const data = {
                message: "Data tidak ada",
            };

            res.status(404).json(data);
        }



    }

    async destroy(req, res) {
        const { id } = req.params;

        /**
         * cari id
         * jika ada, hapus data
         * jika tidak, kirim data tidak ada
         */

        const employee = await Employee.find(id);

        if (employee) {
            // hapus data
            await Employee.delete(id);
            const data = {
                message: "Menghapus data Employee",
            };

            res.status(200).json(data);
        }
        else {
            // data tidak ada
            const data = {
                message: "Data tidak ada",
            };

            res.status(404).json(data);
        }
    }

    async show(req, res) {
        /**
         * cari id
         * jika ada, kirim datanya
         * jika tidak, kirim data tidak ada
         */
        const { id } = req.params;

        const employee = await Employee.find(id);

        if (employee) {
            const data = {
                message: "Menampilkan detail data Employee",
                data: employee,
            };

            res.status(200).json(data);
        }
        else {
            const data = {
                message: "Data tidak ada",
            };

            res.status(404).json(data);
        }

    }

    async showByStatus(req, res) {
        /**
         * cari id
         * jika ada, kirim datanya
         * jika tidak, kirim data tidak ada
         */
        const { Status } = req.params;

        const employee = await Employee.findByStatus(Status);

        if (employee) {
            const data = {
                message: "Menampilkan semua detail data Employee",
                data: employee,
                
            };

            res.status(200).json(data);
        }
        else {
            const data = {
                message: "Data tidak ada",
            };

            res.status(404).json(data);
        }

    }

    async search(req, res) {
        /**
         * cari id
         * jika ada, kirim datanya
         * jika tidak, kirim data tidak ada
         */
        const { Nama_Pegawai } = req.params;

        const employee = await Employee.findByName(Nama_Pegawai);

        if (employee) {
            const data = {
                message: "Menampilkan detail data Employee",
                data: employee,
            };

            res.status(200).json(data);
        }
        else {
            const data = {
                message: "Data tidak ada",
            };

            res.status(404).json(data);
        }

    }
}

// make an object Employee Controller
const object = new EmployeesController();

// export object
module.exports = object;