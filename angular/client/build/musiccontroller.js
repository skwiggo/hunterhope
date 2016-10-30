angular.module('hunterHope').controller('MusicCtrl', ["$scope", "$http", function($scope, $http) {
      $http.get("http://localhost:5000/songs")
      .then(function(response) {
          $scope.songs = response.data;
      });
    }  
  ]);
