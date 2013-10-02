app.controller 'MemoCtrl', ['$scope', ($scope) ->
  $scope.folders = []
  $scope.activeFolder = null
  $scope.activeItem = null
  $scope.activeItems = []
  
  $scope.loadItems = ->
    $scope.activeItems = []
    for i in [1..10]
      $scope.activeItems.push {
        name: Faker.Lorem.sentence(1)
        detail: Faker.Lorem.paragraph()
      }
  
  $scope.activateItem = (item) ->
    $scope.activeItem = item
    $('#itemModal').modal('show')
  
  $scope.activateFolder = (folder) ->
    $scope.activeFolder = folder
    $scope.loadItems()
    
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