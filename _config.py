# -*- coding: utf-8 -*-
try:
    from settings import gakey
    from settings import blogname, blogdesc
    from settings import timezone
    from settings import disqusname, disqussite
except ImportError:
    pass

site.url = "http://kusut.web.id"
site.gakey = gakey
blog = controllers.blog
blog.enabled = True
blog.path = ""
blog.name = blogname
blog.description = blogdesc
blog.timezone = timezone

blog.disqus.enabled = True
blog.disqus.name = disqusname
blog.disqus.site = disqussite

blog.post_default_filters = {"rst":"rst, syntax_highlight"}
