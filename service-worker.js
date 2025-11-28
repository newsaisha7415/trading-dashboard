const CACHE_NAME = 'scalping-cache-v1';

const FILES_TO_CACHE = [
  'index.html',
  'dashboard.html',
  'strategies.html',
  'styles_clean.css',
  'main_clean.js',
  'tools.html',
  'tradingview.html',
  'manifest.json',
  'service-worker.js',
  'images/icon-192.png',
  'images/icon-512.png'
];

self.addEventListener('install', evt => {
  evt.waitUntil(
    caches.open(CACHE_NAME).then(cache => {
      return cache.addAll(FILES_TO_CACHE);
    })
  );
  self.skipWaiting();
});

self.addEventListener('activate', evt => {
  evt.waitUntil(
    caches.keys().then(keys => {
      return Promise.all(
        keys.map(key => {
          if (key !== CACHE_NAME) {
            return caches.delete(key);
          }
        })
      );
    })
  );
  self.clients.claim();
});

self.addEventListener('fetch', evt => {
  evt.respondWith(
    caches.match(evt.request).then(resp => {
      return resp || fetch(evt.request);
    })
  );
});
