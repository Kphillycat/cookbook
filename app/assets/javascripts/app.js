'use strict';

var recipeApp = angular.module('recipeApp',['recipeControllers', 'recipeServices', 'ngRoute']);

recipeApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/recipes/:recipeId', {
        templateUrl: 'recipes/show.html.erb',
        controller: 'RecipeDetailCtrl'
      }).
      otherwise({
        redirectTo: '/recipes'
      });
  }]);