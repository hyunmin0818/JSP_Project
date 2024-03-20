/**
 * 
 */
$(document).ready(function() {
    var owl = $(".hero__slider");
    owl.owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        items: 1
    });

    $.ajax({
        url: "/movie/RandomAction/mo",
        type: "GET",
        dataType: "json",
        success: function(randomMovies) {
            randomMovies.forEach(function(movie) {
                var heroItemHtml = '<div class="hero__items" style="background-image: url(\'' + movie.posterUrl + '\');">' +
                                    '<div class="row">' +
                                    '<div class="col-lg-6">' +
                                    '<div class="hero__text">' +
                                    '<h2>' + movie.title + '</h2>' +
                                    '<p>' + movie.plot + '</p>' +
                                    '<a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>' +
                                    '</div>' +
                                    '</div>' +
                                    '</div>' +
                                    '</div>';
                owl.trigger('add.owl.carousel', [heroItemHtml]).owlCarousel('update');
            });
        },
        error: function(xhr, status, error) {
            console.error("An error occurred: " + error);
        }
    });
});