angular.module('hunterHope').controller('TourCtrl', ["$scope", "$http", function($scope, $http) {
      $http.get("http://localhost:5000/tourdates")
      .then(function(response) {
          $scope.tourDates = response.data;
      });
      $scope.map = { center: { latitude: 45, longitude: -73 }, zoom: 8 };
    }  
  ]);

