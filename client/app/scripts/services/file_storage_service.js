'use strict';

angular.module('boxrailsfrontendApp').factory('FileStorageService', function($resource) {
  return $resource('/api/file_storages/:id', { id: '@id' },
    {
      'create':  { method: 'POST' },
      'index':   { method: 'GET', isArray: true },
      'show':    { method: 'GET', isArray: false },
      'update':  { method: 'PUT' },
      'destroy': { method: 'DELETE' }
    }
  );
});
