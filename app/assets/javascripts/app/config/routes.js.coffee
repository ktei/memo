app
  .config(['$routeProvider', ($route) ->
    $route
      .otherwise({redirectTo: '/'})
      .when('/', {
        controller: 'MemoCtrl'
        templateUrl: '/assets/memo/index.html'
      })
      .when('/signup', {
        controller: 'SignupCtrl'
        templateUrl: '/assets/account/signup.html'
      })
  ])