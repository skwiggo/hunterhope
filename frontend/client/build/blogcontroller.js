angular.module('hunterHope').controller('BlogCtrl', ["$scope", "$http", function($scope, $http) {
      $http.get("http://localhost:5000/blogposts")
      .then(function(response) {
          $scope.posts = response.data;
      });
    }  
  ]);