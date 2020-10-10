# Unsplash downloader1

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

| Название | Required | Тип | Описание |
| :--- | :--- | :--- | :--- |
| id | обязательно | string | идентификатор |
|  |  |  |  |

For list of middle size pictures \(`regular`\) run `node urls.js > urls.txt`

\`\`

