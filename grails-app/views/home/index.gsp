<!doctype html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Welcome to BaloBg</title>
    <asset:stylesheet src="application.css"/>
    <g:javascript>
        $(document).ready(function () {
            $('#nope').click(function () {
                $.ajax({
                    url:'${g.createLink(controller: 'Home',action: 'getNewDog')}',
                    type:'GET',
                    success: function (data) {
                        $('#dog-info').html(data)
                    },
                     error: function(XMLHttpRequest, textStatus, errorThrown) {
                        alert("Status: " + textStatus); alert("Error: " + errorThrown);
                    }
                })
            });
        });
    </g:javascript>
</head>
<body class="container">
<div id="dog-info">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <g:each in="${dogImages}" var="img" status="i" >
                <div class="carousel-item ${i==0 ? 'active' : ''}">
                    <img src="data:image/jpg;base64,${img}" />
                </div>
            </g:each>
        </div>

        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="text-center">
        <h1>${dog.details}</h1>
        <h1>Години: ${dog.age}</h1>
    </div>
    <div id="shelterInfo" class="colapse collapse">
        <div class="text-center">

            <h1>За повече информация: </h1>
            <h1>Адрес: ${dog.shelter.address}</h1>
            <h1>Телефон: ${dog.shelter.telNumber}</h1>
            <h1>E-mail: ${dog.shelter.email}</h1>
            <h1><a href="${dog.shelter.website}">${dog.shelter.website}</a></h1>
        </div>
    </div>
</div>

<div class="text-center" >
    <button type="button" id="nope" class="btn btn-danger">DISLIKE</button>
    <button type="button" data-toggle="collapse" data-target="#shelterInfo" class="btn btn-success">LIKE</button>
</div>




</body>
</html>
