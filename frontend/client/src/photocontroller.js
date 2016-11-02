angular.module('hunterHope').controller('PhotosCtrl', ["$scope", "$http", function($scope, $http) {
      $http.get("http://localhost:5000/photos")
      .then(function(response) {
          $scope.posts = response.data;
      });
    }  
  ]);