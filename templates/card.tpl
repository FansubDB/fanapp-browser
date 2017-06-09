<div class="rows">
  <div class="col-sm-6 col-lg-4">
    <div class="panel panel-default" style="height:200px;display:flex;flex-direction:row">
      <img src="<%=anime.image?anime.image:'https://placehold.it/150x200'%>" alt="img" onerror="this.onerror=null;this.src='https://placehold.it/150x200';" style="max-height:200px">
      <div class="panel-body" style="flex-grow: 1;">
        <%= anime.name %>
      </div>
    </div>
  </div>
</div>
