  <div>
  <h3>feed</h3>
  <ul>
  <li><a href="${bf.util.site_path_helper(bf.config.blog.path,'feed')}">entries</a></li>
% if bf.config.blog.disqus.enabled:
  <li> <a href="http://${bf.config.blog.disqus.site}.disqus.com/latest.rss">comments</a></li>
% endif
  </ul>
  </div>


  <div>
  <h3>self</h3>
  XMPP : kusut@jabber.org
  bitbucket : kusut
  </div>

  <div>
  <h3>latest posts</h3>
  <ul>
% for post in bf.config.blog.posts[:5]:
    <li><a href="${post.path}">${post.title}</a></li>
% endfor
  </ul>
  </div>

  <div>
    <h3>categories</h3>
    <ul>
% for category, num_posts in bf.config.blog.all_categories:
     <li><a href="${category.path}">${category}</a> (<a href="${category.path}/feed">rss</a>) (${num_posts})</li>
% endfor
    </ul>
  </div>

  <div>			
    <h3>archives</h3>
    <ul>
% for link, name, num_posts in bf.config.blog.archive_links:
      <li><a href="${bf.util.site_path_helper(bf.config.blog.path,link)}/1" title="${name}">${name}</a>&nbsp;(${num_posts})</li>
% endfor
    </ul>
  </div>
  <hr/>
  <div>
  powered by <a href="http://www.blogofile.com">Blogofile</a>
  </div>

