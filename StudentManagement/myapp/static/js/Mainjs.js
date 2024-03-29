
function confirmLogout() {
    Swal.fire({
        title: 'Logout',
        text: 'Are you sure you want to logout?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Yes, logout',
        cancelButtonText: 'Cancel'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = "/logout/"; 
        }
    });
}
$('#login-link').click(function(event) {
    event.preventDefault();
    
    Swal.fire({
        title: 'Login',
        text: 'How would you like to login?',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: '<img src="https://www.vectorlogo.zone/logos/google/google-icon.svg" alt="Google" style="vertical-align: middle; height: 20px; margin-right: 5px;">Google',
        cancelButtonText: '<i class="fa-solid fa-user"></i> Native Login',
        allowOutsideClick: true,
    }).then((result) => {
        if (result.isConfirmed) 
        {
            var googleLoginUrl = $(this).data('google-login-url');
            window.location.href = googleLoginUrl;
        } else if (result.dismiss === Swal.DismissReason.cancel) 
        {
            $('#loginModal').modal('show');        
        }
    });
});


$("#selectclass").on("click", function(event) {
    event.preventDefault();
    var selectedValue = $("#classes_to_teach").val(); 
    $("#selected_class_label").text("Classes: " + selectedValue);
   
    // Hide all table rows
    $("table tbody tr").hide();
    
    // Show only the table rows with the selected class
    $("table tbody tr").each(function() {
        var className = $(this).find("td#class").text();
        if (className === selectedValue) {
            $(this).show();
        }
    });
});


