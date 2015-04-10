<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Clonterest</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">

    img {
      width: 100%
    }

    </style>

  </head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <div class="navbar-form">
        <div class="input-group">
         <span class="input-group-addon" id="basic-addon1"><img src="img/logo1.jpg" style="heigt: 20px; width: 20px"></span>
               <select class="form-control" id="formSel">
                <option>Alimentos</option>
                <option>Animales</option>
                <option>Ciencia</option>
                <option>Coches</option>
                <option>Deportes</option>
                <option>Moda</option>
              </select>
        </div>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
  Nuevo Clon
</button>
      </div>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><br /><br />

<div class="container-fluid well" id="mainCont">

</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Nuevo Clon</h4>
      </div>
      <div class="modal-body">
        
          <form name="Likes" method="POST" action ="Respuesta.jsp">
              
              <div class="form-group">
                <label for="formNom">Nombre</label>
                <input type="text" name="nombre" class="form-control" id="formNom">
              </div>
              <div class="form-group">
                <label for="formURL">URL</label>
                <input type="text" name="url" class="form-control" id="formURL">
              </div>
              <div class="form-group">
                <label for="formURL">Categoria</label>
                <select name="tipo" class="form-control">
             <option value="Alimentos">Alimentos</option>
             <option value="Animales">Animales</option>
             <option value="Ciencia">Ciencia</option>
             <option value="Coches">Coches</option>
             <option value="Deportes">Deportes</option>
             <option value="Moda">Moda</option>    
         </select>
              </div>              
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-primary" value="Subir" name="Likes" id="Likes">
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">

$("#formSel").change(function(){

$.post( "Consulta.jsp", { tipo: $("#formSel").val()})
  .done(function( data ) {
    $("#mainCont").html(data);
  });

})

$(".likebtn").click(function(){

$.post( "MeteLike.jsp", { nombre: $(this).attr("data-nomimg")})

$(this).find("span").html(+$(this).html() + 1)

})

</script>

</body>
</html>