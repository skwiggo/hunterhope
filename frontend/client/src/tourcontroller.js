angular.module('hunterHope').controller('TourCtrl', ["$scope", "$http", 'NgMap', function($scope, $http, NgMap) {
      $http.get("http://localhost:5000/tourdates")
      .then(function(response) {
          $scope.tourDates = response.data;
      })
        $scope.map = NgMap.getMap('map')
        $scope.redraw = function() {
          google.maps.event.trigger($scope.map,'resize')
        }
    }
  ]);






