var apiRoot = "https://fansubdb.github.io/";
var folder = "/fanapp-browser";
var app = $.sammy('#app',function() {
  this.use(Sammy.Template, 'tpl');
  this.get('^' + folder + '(?:|#|\/#)/$',function(req){
    $("#top-brand").html("FansubDB");
    var requestURL = apiRoot+'/lang.json';
    $.get(requestURL).done(function(response){
      req.render('templates/home.tpl', {
        data: response
      }).swap(req.$element());
    }).fail(function(){
      req.render('templates/notfound.tpl').swap(req.$element());
    })
  });
  this.get('^' + folder + '/#/:lang(?:|\/)$', function(req) {
    $("#top-brand").html("FansubDB");
    var requestURL = apiRoot+'/'+req.params.lang+'/list.json';
    $.get(requestURL).done(function(response){
      var data = response.data;
      for(var i=0;i<data.length;i++){
        for(var j=0;j<data[i].seasons.length;j++){
          data[i].seasons[j].url = data[i].seasons[j].url.split('.json')[0];
        }
        data[i].seasons = data[i].seasons.reverse();
      }
      data = data.reverse();
      req.render('templates/list.tpl', {
        language: req.params.lang,
        data: data
      }).swap(req.$element());
    }).fail(function(){
      req.render('templates/notfound.tpl').swap(req.$element());
    })
  });
  this.get('^' + folder + '/#/:lang/:year/:season(?:|\/)$', function(req) {
    $("#top-brand").html(req.params.season+" "+req.params.year);
    var requestURL = apiRoot+'/'+req.params.lang+'/'+req.params.year+'/'+req.params.season+'.json';
    $.get(requestURL).done(function(response){
      req.render('templates/season.tpl', {
        context: req,
        id: 0,
        lang: req.params.lang,
        year: req.params.year,
        season: req.params.season,
        data: response
      }).swap(req.$element());
    }).fail(function(){
      req.render('templates/notfound.tpl').swap(req.$element());
    })
  });
  this.get('.*',function(req){
    req.render('templates/notfound.tpl').swap(req.$element());
  });
});
app.run();
