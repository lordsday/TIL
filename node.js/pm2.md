# pm2 start
```sh
$ pm2 start index.js --name="app_name"
```

# pm2 start
## command
```sh
$ pm2 start process.json --env production
```

## process.json
```json
{
  "apps": [
    {
      "name": "app_name",
      "script": "index.js",
      "out_file": "logs/out.log",
      "err_file": "logs/err.log",
      "merge_logs": true,
      "env": {
        "NODE_ENV": "development"
      },
      "env_production": {
        "NODE_ENV": "production"
      }
    }
  ]
}
```

# pm2-logrotate
