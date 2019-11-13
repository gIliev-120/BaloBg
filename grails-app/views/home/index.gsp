<!doctype html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Welcome to BaloBg</title>
    <style>
    /* GLOBAL STYLES
-------------------------------------------------- */
    /* Padding below the footer and lighter body text */

    body {
        padding-top: 3rem;
        padding-bottom: 3rem;
        color: #5a5a5a;
    }


    /* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */

    /* Carousel base class */
    .carousel {
        margin-bottom: 4rem;
    }
    /* Since positioning the image, we need to help out the caption */
    .carousel-caption {
        bottom: 3rem;
        z-index: 10;
    }

    /* Declare heights because of positioning of img element */
    .carousel-item {
        height: 32rem;
    }
    .carousel-item > img {
        position: absolute;
        top: 0;
        left: 0;
        min-width: 100%;
        height: 32rem;
    }

    /* RESPONSIVE CSS
    -------------------------------------------------- */

    @media (min-width: 40em) {
        /* Bump up size of carousel content */
        .carousel-caption p {
            margin-bottom: 1.25rem;
            font-size: 1.25rem;
            line-height: 1.4;
        }

        .featurette-heading {
            font-size: 50px;
        }
    }

    @media (min-width: 62em) {
        .featurette-heading {
            margin-top: 7rem;
        }
    }


    </style>
</head>
<body>

<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://thehappypuppysite.com/wp-content/uploads/2017/10/Cute-Dog-Names-HP-long.jpg"/>
            </div>
            <g:each in="">
                <div class="carousel-item">
                    <img src="https://thehappypuppysite.com/wp-content/uploads/2017/10/Cute-Dog-Names-HP-long.jpg"/>
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
        <h1>INFO ABOUT DOGG</h1>
    </div>
    <div class="text-center" >
        <h1>Shelter INFO</h1>
    </div>
    <div class="text-center" >
        <button type="button" class="btn btn-danger">DISLIKE</button>
        <button type="button" class="btn btn-success">LIKE</button>
    </div>

</div>




</body>
</html>