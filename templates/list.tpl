<div class="container" style="margin-top:20px;">
  <div class="list-group">
    <% data.forEach(function(year){
          year.seasons.forEach(function(season){
    %>
        <a href="#/<%=language%>/<%=year.year%>/<%=season.url%>" class="list-group-item"><%=season.title%> <%=year.year%></a>
    <%
        });
      });
    %>
  </div>
</div>
