const CACHE_NAME = 'tamil-bible-v1';
const urlsToCache = [
  '/',
  '/index.html',
  '/manifest.json',
  // Add all your JSON files here
  '/Genesis.json',
  '/Exodus.json',
  '/Leviticus.json',
  '/Numbers.json',
  '/Deuteronomy.json',
  '/Joshua.json',
  '/Judges.json',
  '/Ruth.json',
  '/1 Samuel.json',
  '/2 Samuel.json',
  '/1 Kings.json',
  '/2 Kings.json',
  '/1 Chronicles.json',
  '/2 Chronicles.json',
  '/Ezra.json',
  '/Nehemiah.json',
  '/Esther.json',
  '/Job.json',
  '/Psalms.json',
  '/Proverbs.json',
  '/Ecclesiastes.json',
  '/Song of Songs.json',
  '/Isaiah.json',
  '/Jeremiah.json',
  '/Lamentations.json',
  '/Ezekiel.json',
  '/Daniel.json',
  '/Hosea.json',
  '/Joel.json',
  '/Amos.json',
  '/Obadiah.json',
  '/Jonah.json',
  '/Micah.json',
  '/Nahum.json',
  '/Habakkuk.json',
  '/Zephaniah.json',
  '/Haggai.json',
  '/Zechariah.json',
  '/Malachi.json',
  '/Matthew.json',
  '/Mark.json',
  '/Luke.json',
  '/John.json',
  '/Acts.json',
  '/Romans.json',
  '/1 Corinthians.json',
  '/2 Corinthians.json',
  '/Galatians.json',
  '/Ephesians.json',
  '/Philippians.json',
  '/Colossians.json',
  '/1 Thessalonians.json',
  '/2 Thessalonians.json',
  '/1 Timothy.json',
  '/2 Timothy.json',
  '/Titus.json',
  '/Philemon.json',
  '/Hebrews.json',
  '/James.json',
  '/1 Peter.json',
  '/2 Peter.json',
  '/1 John.json',
  '/2 John.json',
  '/3 John.json',
  '/Jude.json',
  '/Revelation.json',
  '/Books.json',
  '/bookFilenames.json'
];

// Install event - cache resources
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => {
        console.log('Opened cache');
        return cache.addAll(urlsToCache);
      })
  );
});

// Fetch event - serve from cache when offline
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request)
      .then(response => {
        // Return cached version or fetch from network
        return response || fetch(event.request);
      }
    )
  );
});

// Activate event - clean up old caches
self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cacheName => {
          if (cacheName !== CACHE_NAME) {
            console.log('Deleting old cache:', cacheName);
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});
