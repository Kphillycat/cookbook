'use strict';

//this used to be in our controllers 
// but now that we have more than one
// controller, it's going in here!

//the empty array argument also now holds
//2 items, these are the modules that the
//app depends on
// ngRoutes - allows us to use angular-route.js
// recipeControllers - al
var recipeApp = angular.module('recipeApp', [
  'ngRoute',
  'recipeControllers',
  'recipeFilters',
  'recipeServices'
]);

recipeApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/recipes', {
        templateUrl: 'partials/recipe-list.html',
        controller: 'RecipeListCtrl'
      }).
      when('/dashboard', {
        templateUrl: 'partials/recipe-dashboard.html',
        controller: 'RecipeListCtrl'
      }).
      when('/new', {
        templateUrl: 'partials/recipe-form.html',
        controller: 'RecipeListCtrl'
      }).
      when('/recipes/:recipeId', {
        templateUrl: 'partials/recipe-detail.html',
        controller: 'RecipeDetailCtrl'
      }).
      otherwise({
        redirectTo: '/recipes'
      });
  }]);