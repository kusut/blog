<%inherit file="site.mako" />
% for i, post in enumerate(posts):
  <%include file="post_excerpt.mako" args="post=post" />
% if bf.config.blog.disqus.enabled:
  <div class="after_post"><a href="${post.permalink}#disqus_thread">Read Full Article and Post Comments</a></div>
% endif
% endfor

% if prev_link:
 <a href="${prev_link}">« Previous Page</a>
% endif

% if prev_link and next_link:
  --  
% endif

% if next_link:
 <a href="${next_link}">Next Page »</a>
% endif
