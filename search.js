const fs = require('fs');
const API_KEY = fs.readFileSync('api_key.txt').toString();
const query = fs.readFileSync('query.txt').toString();

console.error('search query:', query);

const fetch = require('node-fetch');
global.fetch = fetch;

const Unsplash = require('unsplash-js').default;

const unsplash = new Unsplash({ accessKey: API_KEY });

function toJson(res) {
	return typeof res.json === "function" ? res.json() : res;
}

unsplash.search.photos(query, 1, 30, { orientation: "landscape" })
	.then(toJson)
	.then(json => {
		console.info(JSON.stringify(json, null, 4))
		console.error('search successfull!')
	});
