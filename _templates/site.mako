<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
  </head>
  <body>
    <div id="content">
      
      <div id="main_block">
        <div id="prose_block">
          ${next.body()}
        </div><!-- End Prose Block -->
      </div><!-- End Main Block -->

      ${self.sidebar()}

      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>

<%def name="head()">
  <%include file="head.mako" />
</%def>

<%def name="sidebar()">
  <div id="sidebar">
    <%include file="sidebar.mako" />
  </div>
</%def>

<%def name="footer()">
  <%include file="footer.mako" />
</%def>
