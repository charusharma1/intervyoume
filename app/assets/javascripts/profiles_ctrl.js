(function () {
  "use strict";

  angular.module("app").controller("profilesCtrl", function($scope, $http) {

    $scope.setup = function(type) {
      $http.get("/api/v1/profiles.json").then(function(response) {
        $scope.profiles = response.data;
        console.log(type);
        $scope.jobFunctionFilter = type;
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