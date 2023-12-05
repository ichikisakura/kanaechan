<h1>users#show</h1>
<p>名前 : <%= @user.name %></p>
<p>メールアドレス : <%= @user.email %></p>
<p>プロフィール : <%= @user.profile %></p>

<% if current_user.id == @user.id %>
  <%= link_to "編集する", edit_user_registration_path %>
<% end %>

<h2>ユーザーの投稿一覧</h2>
<% @user.tweets.each do |t| %>
  <%= t.user.name %>
  <%= t.body %>
<% end %>



<%= link_to "Tweet一覧に戻る", posts_path %>