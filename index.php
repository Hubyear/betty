<?php session_start(); ?>
<?php include 'header.php'; ?>
<body class="hold-transition login-page">
<style>
    .alert-success {
        display: none;
    }
</style>
<div class="container-gradient">
    <div class="login-box" style="background-color: #163020; border-radius: 10px; padding: 20px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);">
        <div class="login-logo">
            <p id="date" style="color: white;"></p>
            <p id="time" class="bold" style="color: white;"></p>
        </div>
      
        <div class="login-box-body" style="color: white; padding: 30px; background-color: rgba(255, 255, 255, 0.9); border-radius: 10px; position: relative;">
            <h4 class="login-box-msg" style="color: #163020; font-family: 'Praise Bold'; font-size: 25px;">Enter Employee ID</h4>

            <form id="attendance">
                <div class="form-group">
                    <select class="form-control" name="status">
                        <option value="in">Time In</option>
                        <option value="out">Time Out</option>
                    </select>
                </div>
                <div class="form-group has-feedback">
                    <input type="text" class="form-control input-lg" id="employee" name="employee" required>
                    <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-4 col-xs-offset-8">
                        <button type="submit" class="btn btn-primary btn-block btn-flat" name="signin" style="background-color: #163020; border-radius: 5px;">Sign In</button>
                    </div>
                </div>
            </form>
            
            <div class="alert alert-success alert-dismissible mt20 text-center" style="position: absolute; bottom: -110px; left: 50%; transform: translateX(-50%); width: 355px;">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <span class="result" style="font-family: 'Poppins Bold';"><i class="icon fa fa-check"></i> <span class="message">Time in: Kervin Maestrado</span></span>
            </div>
        </div>
    </div>
</div>

<?php include 'scripts.php' ?>
<script type="text/javascript">
$(function() {
    var interval = setInterval(function() {
        var momentNow = moment();
        $('#date').html(momentNow.format('dddd').substring(0,3).toUpperCase() + ' - ' + momentNow.format('MMMM DD, YYYY'));  
        $('#time').html(momentNow.format('hh:mm:ss A'));
    }, 100);

    $('#attendance').submit(function(e){
        e.preventDefault();
        var attendance = $(this).serialize();
        $.ajax({
            type: 'POST',
            url: 'attendance.php',
            data: attendance,
            dataType: 'json',
            success: function(response){
                if(response.error){
                    $('.alert').hide();
                    $('.alert-danger').show();
                    $('.message').html(response.message);
                }
                else{
                    $('.alert-danger').hide(); // Hide any existing error alert
                    $('.alert-success').show(); // Show the success alert
                    $('.message').html(response.message);
                    $('#employee').val('');
                    setTimeout(function() {
                        $('.alert-success').hide(); // Hide the success alert after some time (e.g., 3 seconds)
                    }, 3000);
                }
            }
        });
    });
});
</script>
</body>
</html>
