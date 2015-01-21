# hspd-api

An API server for the hspd : hubot script per day.

This product is one of [the bouzuya's shuburi][shuburi]. The product was released in 2015-W01.

Demo: [hspd-api.herokuapp.com](https://hspd-api.herokuapp.com/hubot_scripts)

# Configuration (Environment Variables)

See [app.json](app.json).

# Web API

## `GET /hubot_scripts`

```
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

[
  {
    "repository": "https://github.com/bouzuya/hubot-gengo",
    "number": 1,
    "name": "hubot-gengo",
    "image": null,
    "deprecated": false,
    "date": "2014-07-14T00:00:00Z"
  }
]
```

# Task

## `hubot_scripts:fetch`

The script fetch the hubot-scripts data from Amazon S3 .

```bash
$ bin/rake hubot_scripts:fetch
```

# Heroku Button

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

# Badge

[![Circle CI][circle-ci-badge]][circle-ci]

# License

[MIT](LICENSE)

# Author

[bouzuya][] &lt;[m@bouzuya.net][email]&gt; ([bouzuya.net][url])

[shuburi]: http://shuburi.org/
[circle-ci]: https://circleci.com/gh/bouzuya/hspd-api
[circle-ci-badge]: https://circleci.com/gh/bouzuya/hspd-api.svg?style=svg
[bouzuya]: https://github.com/bouzuya/
[email]: mailto:m@bouzuya.net
[url]: http://bouzuya.net
