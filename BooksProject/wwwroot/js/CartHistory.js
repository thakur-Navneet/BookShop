var dataTable;

$(document).ready(function () {
    loadDataTable();
})
function loadDataTable() {
    dataTable = $("#tblData").DataTable({
        "ajax":
            { "url": "/Customer/Cart/GetAll" },
        "columns": [
            { "data": "applicationUser.id", "width": "" },
            { "data": "applicationUser.name", "width": "" },
            { "data": "product.title", "width": "" },
            { "data": "count", "width": "" },
            { "data": "status", "width": "" }
            /*{
                "data": "status",
                "render": function (data, type, row) {
                    // Map numeric value to string
                    switch (data) {
                        case 1:
                            return 'Blocked';
                        case 2:
                            return 'Unblocked';
                        default:
                            return data; // In case there are other values
                    }
                },
                "width": ""
            }*/
            
        ]
    })
}