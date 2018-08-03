<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html ng-app="pramerica">

<head>
  <meta charset="utf-8" />
  <title>Pramerica Project</title>
  <script>
    document.write('<base href="' + document.location + '" />');
  </script>
  <style type="text/css">
		  main {
		  overflow-y: auto;
		}
  </style>
  
 <!--  <link rel="stylesheet" href="/assets/css/style.css" /> -->
  <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/angular_material/1.0.5/angular-material.min.css">

  <script data-require="angular.js@1.4.x" src="https://code.angularjs.org/1.4.9/angular.js" data-semver="1.4.9"></script>
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-animate.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-aria.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/angular_material/1.0.5/angular-material.min.js"></script>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript">
	var app = angular.module('pramerica', ['ngMaterial']);

	app.controller('MainCtrl', function($scope) {
	  $scope.name = 'World';
	});

	</script>
  <script src="assets/js/app.js"></script>
</head>

<body>

  <div layout="column" layout-fill ng-controller="MainCtrl as mc">
    <header>
      <md-toolbar md-scroll-shrink>
      <div layout="row" layout-align="left left" flex>
         LOGO
        </div>
        <div layout="row" layout-align="center center" flex>
          PBS Stats and Matrics System
        </div>
      </md-toolbar>
      <md-toolbar md-scroll-shrink>
       
        <div layout="row" layout-align="center center" flex>
          I want to:
        </div>
      </md-toolbar>
    </header>

    <main flex>
      <div ui-view>
        <p>
          body
          <br>
        </p>
      </div>
    </main>

    <jsp:include page="global_footer.jsp"></jsp:include>
  </div>

</body>

</html>