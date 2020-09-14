exports.insertDepartment = (name) => {
    connection.query(`INSERT INTO department (name) VALUES ('${name}')`, function (err, data) {
        if (err) throw err;
        console.log(`Added`)
        getJob();
    })
}