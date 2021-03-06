'use strict';

require('./styles/layout.scss');
require('./styles/theme.scss');

// Requiring after app.scss ensures correct selector precedence
require('./styles/icons.css');

// Require icons
require('./favicon.png');
require('./favicon.ico');
require('./apple-icon-57x57.png');
require('./apple-icon-60x60.png');
require('./apple-icon-72x72.png');
require('./apple-icon-76x76.png');
require('./apple-icon-114x114.png');
require('./apple-icon-120x120.png');
require('./apple-icon-144x144.png');
require('./apple-icon-152x152.png');
require('./apple-icon-180x180.png');
require('./android-icon-192x192.png');
require('./favicon-32x32.png');
require('./favicon-96x96.png');
require('./favicon-16x16.png');
require('./manifest.json');

var Elm = require('./Main.elm');
var app = Elm.Elm.Main.init({});

dataLayer = window.dataLayer || [];

app.ports.updateAnalyticsPage.subscribe(function(x) {
    dataLayer.push({
        event: 'pageView',
        page: x,
    });
});

// Todo make sure multiple events are recording with same category/ action.
// Maybe the label can't be the only unique thing.
app.ports.updateAnalyticsEvent.subscribe(function (gaEvent) {
    if (gaEvent.action === 'email' && gaEvent.category === 'call-to-action') {
        dataLayer.push({
            event: 'clickEmailLink',
            category: gaEvent.category,
        });
    }
});

// Options for the observer (which mutations to observe)
var config = { childList: true, subtree: true };

// Callback function to execute when mutations are observed - scroll to top
var callback = function(mutationsList) {
    scroll(0, 0);
};

// Create an observer instance linked to the callback function
var observer = new MutationObserver(callback);

// Start observing the target node for configured mutations
observer.observe(document.getElementById('page-wrapper'), config);
