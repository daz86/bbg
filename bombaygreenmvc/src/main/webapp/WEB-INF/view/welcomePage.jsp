<%@page session="false"%>
<html>
<head>
<title>${title}</title>
</head>
<body>
  <h1>Message : ${message}</h1><br>
  ${pageContext.request.contextPath}
</body>
</html>