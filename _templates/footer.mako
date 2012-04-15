<hr/>
<center>Content is licensed under <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/80x15.png" /></a></center>
<center>Feed: <a href="${bf.util.site_path_helper(bf.config.blog.path,'feed')}">entries</a>, <a href="http://${bf.config.blog.disqus.site}.disqus.com/latest.rss">comments</a></center>
<center>Contact: <a href="bitbucket.org/kusut">bitbucket</a>, <a href="github.com/kusut">github</a></center>

% if bf.config.blog.disqus.enabled:
<script type="text/javascript">
//<![CDATA[
(function() {
		var links = document.getElementsByTagName('a');
		var query = '?';
		for(var i = 0; i < links.length; i++) {
			if(links[i].href.indexOf('#disqus_thread') >= 0) {
				query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
			}
		}
		document.write('<script charset="utf-8" type="text/javascript" src="http://disqus.com/forums/${bf.config.blog.disqus.site}/get_num_replies.js' + query + '"></' + 'script>');
	})();
//]]>
</script>
% endif

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', ${bf.config.site.gakey}]);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
