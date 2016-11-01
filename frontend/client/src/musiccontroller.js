angular.module('hunterHope').controller('MusicCtrl', ["$scope", "$http", function($scope, $http) {
      $http.get("http://localhost:5000/releases")
      .then(function(response) {
          $scope.releases = response.data;
      });
    }  
  ]);


