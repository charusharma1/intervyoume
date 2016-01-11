(function () {
  "use strict";

  angular.module("app").controller("profilesCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/profiles.json").then(function(response) {
        $scope.profiles = response.data;
        console.log(response.data);
      });
      
    }

    $scope.toggleOrder = function(attribute) {
      console.log($scope.attribute);
      if (attribute === $scope.orderAttribute) {
        $scope.direction = !$scope.direction;
      } else {
        $scope.direction = false;
      }
      $scope.orderAttribute = attribute;
    }

  window.$scope = $scope;    
  });
})();