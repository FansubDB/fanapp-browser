<%
  var fetchCard = function(data,selector){
    if(data.length>0){
      var cData = data.shift();
      context.render('templates/card.tpl', {
        anime:cData
      },function(){
        fetchCard(data,selector);
      }).appendTo(selector);
    }
  };
%>
<div>
  <ul class="nav nav-tabs nav-justified">
    <li role="presentation" class="active"><a data-toggle="tab" href="#tv">TV</a></li>
    <li role="presentation"><a data-toggle="tab" href="#ova">OVA/ONA/SP</a></li>
    <li role="presentation"><a data-toggle="tab" href="#movie">Movie</a></li>
  </ul>
  <div class="tab-content" style="padding-top: 20px;">
    <div id="tv" class="tab-pane fade  active in">
      <% fetchCard(data.tv,'#tv');%>
    </div>
    <div id="ova" class="tab-pane fade in">
      <% fetchCard(data.ova,'#ova'); %>
    </div>
    <div id="movie" class="tab-pane fade in">
      <% fetchCard(data.ova,'#movie'); %>
    </div>
  </div>
</div>
