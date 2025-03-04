var DataTable;
/*
$(document).ready(function () {
    loadDataTable();
})

function loadDataTable() {
    DataTable = $('#tblData').DataTable({
        "ajax": {
            "url": "/Customer/Contact/GetAll"
        },
        "columns": [
            {
                "data": "id",
                "render": function (data) {//render  function html code to js access
                    return `
                    <div class ="text-center">
                        <a href="/Customer/Contact/TheContact/${data}"class="btn btn-info">
                            <i class="fas fa-edit"></i>
                        </a>
                    </div>
                    `;
                }
            },
            { "data": "name", "width": "" },
            { "data": "email", "width": "" },
            { "data": "subject", "width": "" },
            { "data": "message", "width": "" },
            {
                "data": "id",
                "render": function (data) {//render  function html code to js access
                    return `
                    <div class ="text-center">
                        <a class="btn btn-danger" onclick = Delete("/Customer/Contact/Delete/${data}")>
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
function Delete(url) {
    swal({
        title: "Want to delete data ?",
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
                        //toastr.success(data.message);
                        alert("Data deleted");
                        DataTable.ajax.reload();
                    }
                    else {
                        alert("Error");
                        //toastr.error(data.message);
                    }
                }
            })
        }
    })
}