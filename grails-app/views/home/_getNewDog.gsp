
<%@ page contentType="text/html;charset=UTF-8" %>

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
