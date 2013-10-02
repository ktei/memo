app.controller 'MemoCtrl', ['$scope', ($scope) ->
  $scope.folders = []
  $scope.activeFolder = null
  $scope.activateFolder = (folder) ->
    $scope.activeFolder = folder
    
  for i in [1..3]
    $scope.folders.push {
      name: Faker.Lorem.sentence(1)
    }
  $scope.folders.push {
    isNew: true
    name: '+ Create folder'
  }
  $scope.activateFolder $scope.folders[0]
]