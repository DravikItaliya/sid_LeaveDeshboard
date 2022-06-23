var config = require("./dbconfig");
const sql = require("mssql");
const leaveapp = require("./order");

async function getOrders() {
    try {
        let pool = await sql.connect(config);
        let products = await pool.request().query("SELECT * from leaveapp");
        console.log(products);
        return products.recordsets;
    } catch (error) {
        console.log(error);
    }
}

async function getOrder(orderId) {
    try {
        let pool = await sql.connect(config);
        let product = await pool
            .request()
            .input("input_parameter", sql.NVarChar, orderId)
            .query("SELECT * from leaveapp where id = @input_parameter");
        return product.recordsets;
    } catch (error) {
        console.log(error);
    }
}

async function addOrder(order) {
    try {
        let pool = await sql.connect(config);
        let insertProduct = await pool
            .request()
            .input("id", sql.NVarChar, leaveapp.id)
            .input("flowid", sql.NVarChar, leaveapp.flowid)
            .input("rank", sql.NVarChar, leaveapp.rank)
            .input("name", sql.NVarChar, leaveapp.name)
            .input("pno", sql.NVarChar, leaveapp.pno)
            .input("ration", sql.NVarChar, leaveapp.ration)
            .input("department", sql.NVarChar, leaveapp.department)
            .input("leavetype", sql.NVarChar, leaveapp.leavetype)
            .query("INSERT INTO table1 VALUES (@id,@flowid,@rank,@name,@pno,@ration,@department,@leavetype,);");
        return insertProduct.recordsets;
    } catch (err) {
        console.log(err);
    }
}

module.exports = {
    getOrders: getOrders,
    getOrder: getOrder,
    addOrder: addOrder,
};
