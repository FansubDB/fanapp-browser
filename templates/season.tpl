<div>
  <ul class="nav nav-tabs nav-justified">
    <li role="presentation" class="active"><a data-toggle="tab" href="#tv">TV</a></li>
    <li role="presentation"><a data-toggle="tab" href="#ova">OVA/ONA/SP</a></li>
    <li role="presentation"><a data-toggle="tab" href="#movie">Movie</a></li>
  </ul>
  <div class="tab-content">
    <div id="tv" class="tab-pane fade  active in">
    <% data.tv.forEach(function(anime){ %>
      <div class="rows">
        <div style="height:200px;" class="col-md-4">
          <%= anime.name %>
        </div>
      </div>
    <%}); %>
    </div>
    <div id="ova" class="tab-pane fade in">
    <% data.ova.forEach(function(anime){ %>
      <div style="height:200px;">
        <%= anime.name %>
      </div>
    <%}); %>
    </div>
    <div id="movie" class="tab-pane fade in">
    <% data.movie.forEach(function(anime){ %>
      <div style="height:200px;">
        <%= anime.name %>
      </div>
    <%}); %>
    </div>
  </div>
</div>
