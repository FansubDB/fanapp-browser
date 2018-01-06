<div class="rows">
  <div class="col-sm-6 col-lg-4">
    <div class="panel panel-default" style="height:200px;display:flex;flex-direction:row">
      <img src="<%=anime.image?anime.image:'https://placehold.it/150x200'%>" alt="img" onerror="this.onerror=null;this.src='https://placehold.it/150x200';" style="max-height:200px">
      <div class="panel-body" style="flex-grow: 1;display: flex;flex-direction: column;">
        <div style="padding-bottom:15px;font-size:16px;color:#000">
          <%= anime.name %>
        </div>
        <div style="overflow-y:auto">
          <% if(anime.group.length == 0) {%>
            <span style="color:#B71C1C">Not avalaible</span>
          <% } %>
          <% anime.group.forEach(function(group){%>
            <div class="fansub-project <%=group.status%>">
              <% group.detail.forEach(function(fansub){
                if(fansub.url){%>
                  <a href="<%=fansub.url%>" target="_blank">
                    <%=fansub.name%>
                  </a>
                <% }else{ %>
                  <span>
                    <%=fansub.name%>
                  </span>
               <% }}); %>
            </div>
          <% }); %>
        </div>
      </div>
    </div>
  </div>
</div>
