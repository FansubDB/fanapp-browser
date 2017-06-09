<div>
  <ul class="nav nav-tabs nav-justified">
    <li role="presentation" class="active"><a data-toggle="tab" href="#tv">TV</a></li>
    <li role="presentation"><a data-toggle="tab" href="#ova">OVA/ONA/SP</a></li>
    <li role="presentation"><a data-toggle="tab" href="#movie">Movie</a></li>
  </ul>
  <div class="tab-content" style="padding-top: 20px;">
    <div id="tv" class="tab-pane fade  active in">
      <% data.tv.forEach(function(anime){
            context.render('templates/card.tpl', {
              anime:anime
            }).appendTo('#tv');
      }); %>
    </div>
    <div id="ova" class="tab-pane fade in">
      <% data.ova.forEach(function(anime){
            context.render('templates/card.tpl', {
              anime:anime
            }).appendTo('#ova');
      }); %>
    </div>
    <div id="movie" class="tab-pane fade in">
      <% data.movie.forEach(function(anime){
            context.render('templates/card.tpl', {
              anime:anime
            }).appendTo('#movie');
      }); %>
    </div>
  </div>
</div>
