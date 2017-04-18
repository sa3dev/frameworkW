$( document ).ready(function() {


      var citynames = new Bloodhound({
      datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
      queryTokenizer: Bloodhound.tokenizers.whitespace,
      prefetch: {
        url: 'http://localhost/POO/14-W/public/article/categories.json',//on mete notre route ici qui recupere les données en json
        cache: false
        
      }
    });
    citynames.initialize();

    $('.tagsinput').tagsinput({
      typeaheadjs: {
        name: 'citynames',
        displayKey: 'name',
        valueKey: 'name',
        source: citynames.ttAdapter()
      }
    });


    // $('#publie').click(function(e) {
    //   e.preventDefault();
    //   console.log('ok non envoyé');
    //   //$('.tag').remove().parent;
    //   $.ajax({
    //     method: "POST",
    //     url: "create.php",
    //     data: { name: "John", location: "Boston" }
    //       })
    //       .done(function( msg ) {
    //         alert( "Data Saved: " + msg );
    //       });
    //
    //   })
});
