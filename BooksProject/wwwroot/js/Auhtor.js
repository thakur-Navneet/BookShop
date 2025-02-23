var DataTable;

$(document).ready(function () {
    loadDataTable();
})

function loadDataTable() {
    DataTable = $('#tblData').DataTable({
        "ajax": {
            "url": "/Admin/Author/GetAll",
            "type": "GET"
        },
        "columns": [
            {
                "data": "id",
                "render": function (data) {
                    return `
                        <div class ="text-center">
                            <a href="/Admin/Author/Upsert/${data}" class="btn btn-info">
                                <i class="fas fa-edit"></i>
                            </a>
                        </div>
                    `;
                }
            },
            { "data": "title", "width": "20%" },  // Corresponding to the "Title" column
            { "data": "description", "width": "60%" },  // Corresponding to the "Description" column
            {
                "data": "id",
                "render": function (data) {
                    return `
                        <div class ="text-center">
                            <a class="btn btn-danger" onclick="Delete('/Admin/Author/Delete/${data}')">
                                <i class="fas fa-trash-alt"></i>
                            </a>
                        </div>
                    `;
                }
            }
        ]
    });
}

function Delete(url) {
    swal({
        title: "Do you want to delete this data?",
        text: "This action is irreversible!",
        icon: "warning",
        buttons: true,
        dangerMode: true
    }).then((willDelete) => {
        if (willDelete) {
            $.ajax({
                url: url,
                type: "DELETE",
                success: function (data) {
                    if (data.success) {
                        alert("Data deleted");
                        DataTable.ajax.reload();
                    } else {
                        alert("Error deleting data");
                    }
                }
            });
        }
    });
}

/*
var DataTable;

$(document).ready(function () {
    loadDataTable();
})

function loadDataTable() {
    DataTable = $('#tblData').DataTable({
        "ajax": {
            "url": "/Admin/Author/GetAll",
            "type": "GET"
        },
        "columns": [
            { "data": "Title", "width": "" },
            { "data": "Description", "width": "" },
            {
                "data": "id",
                "render": function (data) {
                    return `
                <div class ="text-center">
                    <a href="/Admin/Author/Upsert/${data}" class="btn btn-info">
                        <i class="fas fa-edit"></i>
                    </a>
                    <a class="btn btn-danger" onclick="Delete('/Admin/Author/Delete/${data}')">
                        <i class="fas fa-trash-alt"></i>
                    </a>
                </div>
            `;
                }
            }
        ]
    })
}
*/