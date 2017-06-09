var apiRoot = "http://localhost/";
var app = $.sammy('#app',function() {
  this.use(Sammy.Template, 'tpl');
  this.get('/', function() {
    console.log('root!')
  });
  this.get('/language', function() {
    console.log('language')
  });
  this.get('/:lang/:year/:season', function(req) {
    console.log('This is a season');
    console.log(req.params.lang);
    console.log(req.params.year);
    console.log(req.params.season);
    var requestURL = apiRoot+'/'+req.params.lang+'/'+req.params.year+'/'+req.params.season+'.json';
    $.get(requestURL).done(function(response){
      console.log(response)
      window.b = req.render('templates/season.tpl', {
        id: 0,
        lang: req.params.lang,
        year: req.params.year,
        season: req.params.season,
        data: response
      }).swap(req.$element());
    }).fail(function(){
      console.log("FAIL");
    })
  });
});
app.run();
