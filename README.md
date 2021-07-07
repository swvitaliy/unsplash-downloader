# Unsplash downloader

## Installation & running

1. Sign up into [https://unsplash.com](https://unsplash.com)
2. Create an app
3. Write the app api key to `api_key.txt`

```bash
    echo -n {your_api_key} > api_key.txt
```

1. Write your search query to file `query.txt`

```bash
    echo -n "misty lake" > query.txt
```

1. `npm install`
2. Run `./download.sh`

For list of middle size pictures \(`regular`\) run `node urls.js > urls.txt`

For list of userpics in json and txt run ./userpics.sh. It will write to files userpics.txt and userpics.json.

![](.gitbook/assets/smile-xhqcac0q-200638-320-314.jpg)

