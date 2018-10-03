<div class="container" style="margin-top:20px;">
  <% data.forEach (function(language){ %>
    <div class="rows">
      <div class="col-md-6 col-lg-4">
        <a href="#/<%=language.url%>">
        <div class="panel panel-default" style="height:100px;display:flex;flex-direction:row">
          <img style="max-height:100px" src="<%=language.flag%>" />
          <div class="panel-body" style="flex-grow: 1;display: flex;flex-direction: column;">
            <div style="margin:auto;display:block">
              <%=language.lang%>
            </div>
          </div>
        </div>
        </a>
      </div>
    </div>
  <% }); %>
</div>
