const handleChangeState = (id) => {
    Swal.fire({
        title: "<h2>Change status</h2>",
        icon: "info",
        html: returnHTML(id),
        showCloseButton: true,
    });
};
const returnHTML = (id) => {
    const btnStatus1 = `<button id="test1" onclick="confirm('approved',${id})" class="badge badge-gradient-danger" href='/aaa'>APPROVED</button>`;
    const btnStatus2 = `<button   onclick="confirm('rejected',${id})" class="badge badge-gradient-info" href='/bbb'>REJECTED</button>`;
    const btnCurrent = ` <button 
    class="badge badge-gradient-warning">Waiting for approved</button>`;
    const btnEditTime = `<button onclick="confirm('change',${id})" class="badge badge-gradient-info" href='/bbb'>CHANGE TIME</button>`;
    return `
    You can change from
        <div>${btnCurrent}</div>
        <br>To
        ${btnStatus1} or
        ${btnStatus2} or
        ${btnEditTime}
    `;
};
const confirm = (status, id) => {
    Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this! ",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes",
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire("Success!", "Email is sending for user|Just waiting to send finish ...", "success");
            window.location.href = `/admin/bookings/update/${id}?status=${status}`;
        }
    });
};
