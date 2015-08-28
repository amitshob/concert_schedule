<ul>
<% if @bands.any?() %>
  <% @bands.each() do |band| %>
  <li><a href="/bands/<%= band.id %>"><%= band.name() %></a></li>
  <% end %>
<% end %>
</ul>

<!-- for testing -->
<br>
<a href="/tags_link">TAGS </a>
<!-- <ul>
  <% if @venues.any?() %>
    <% @venues.each() do |venue| %>
    <li><a href="/venues/<%= venue.id %>"><%= venue.name() %></a></li>
    <% end %>
  <% end %>
</ul> -->

<ul>
  <% if @venues %>
    <% @venues.each() do |tag| %>
    <li><a href="/venues/<%= venue.id %>"><%= venue.name() %></a></li>
    <% end %>
  <% end %>
</ul>
