const fs = require('fs');

const text = fs.readFileSync('a.json').toString();
const json = JSON.parse(text);
json.results.forEach((item) => {
	console.info(item.urls.raw);
});

