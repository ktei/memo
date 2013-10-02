app
  .config(['$routeProvider', ($route) ->
    $route
      .otherwise({redirectTo: '/'})
      .when('/', {
        controller: 'HomeCtrl'
        templateUrl: '/assets/home/index2.html'
      })
  ])