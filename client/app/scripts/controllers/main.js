'use strict';

/**
 * @ngdoc function
 * @name boxrailsfrontendApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the boxrailsfrontendApp
 */
angular.module('boxrailsfrontendApp')
  .controller('MainCtrl', function ($scope, FileStorageService) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.fileStorages = FileStorageService.index();
  });
