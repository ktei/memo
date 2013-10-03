app.controller 'SignupCtrl', ['$scope', ($scope) ->
  $scope.email = ''
  $scope.password = ''
  $scope.idle = true
  $scope.canCreate = ->
    $scope.signupForm.$dirty and
    $scope.signupForm.$valid and
    $scope.idle
]