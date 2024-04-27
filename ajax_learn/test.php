<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

  </head>
  <body>

    <div id="page">

    </div>

    <a href="#" class="btn btn-primary" onclick="loadPage(2)">Load Second Page</a>

    <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> <!-- Ajax Library -->
    <script type="text/javascript">
      $('#page').load('ajax_page.php');

      function loadPage(id){
        // $('#page').load('ajax_page_02.php',{
        //   page_id:id
        // });
        $.ajax({
          url:'backend/add_file.php',
          method:'POST',
          data:{
            id:2,
            name:'naveed'
          },
          success:function(resp){
            if(resp == 200){
              alert('hello');
            }
            else {
              alert('error');
            }
          }
        });
      }


    </script>

  </body>
</html>
