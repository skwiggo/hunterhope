angular.module('hunterHope').controller('TourCtrl', ["$scope", "$http", function($scope, $http) {
      $http.get("http://localhost:5000/tourdates")
      .then(function(response) {
          $scope.tourDates = response.data;
      })
      $scope.map = function(NgMap) {
        NgMap.getMap().then(function(map) {
        console.log(map.getCenter());
        console.log('markers', map.markers);
        console.log('shapes', map.shapes);
        })
      }   
    }
  ]);




