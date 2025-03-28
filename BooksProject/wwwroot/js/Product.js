﻿var DataTable;

$(document).ready(function () {
    loadDataTable();
})

function loadDataTable() {
    DataTable = $('#tblData').DataTable({
        "ajax": {
            "url": "/Admin/Product/GetAll"
        },
        "columns": [
            { "data": "title", "width": "15%" },
            { "data": "description", "width": "30%" },
            { "data": "isbn", "width": "15%" },
            { "data": "price", "width": "15%" },
            {
                "data": "id",
                "render": function (data) {//render  function html code to js access
                    return `
                    <div class ="text-center">
                    <a href="/Admin/Product/Upsert/${data}"class="btn btn-info">
                    <i class="fas fa-edit"></i>
                    </a>
                    <a class="btn btn-danger" onclick = Delete("/Admin/Product/Delete/${data}")>
                    <i class="fas fa-trash-alt"></i>
                    </a>
                    </div>
                    `;
                }
            }
        ]
    })
}
function Delete(url) {
    swal({
        title: "want to delete data ?",
        text: "Delete Information !!!!",
        icon: "warning",
        buttons: true,
        dangerModel: true
    }).then((willDelete) => {
        if (willDelete) {
            $.ajax({
                url: url,
                type: "Delete",
                success: function (data) {
                    if (data.success) {
                        alert("Data is deleted");
                        DataTable.ajax.reload();
                    }
                    else {
                        alert("Error");
                    }
                }
            })
        }
    })
}