# 9gal Lazy

Make life easier at 9gal.

## Installation

1. Installing [Heroku Toolbelt](https://toolbelt.heroku.com/)

2. Creating and logining in your Heroku account

    ```bash
    $ heroku login
    ```

3. Github checkout

    ```bash
    $ git clone https://github.com/floating-cat/nine_gal_lazy.git ~/project/nine_gal_lazy
    $ cd ~/project/nine_gal_lazy
    ```

4. Creating a new branch and entering your 9gal username and password

    ```bash
    $ git checkout -b your_new_branch_name
    # replace your username and password in account.yml
    $ vi account.yml
    $ git add account.yml
    $ git commit -m "Enter username and password"
    ```

5. Creating a Heroku app

    ```bash
    $ heroku apps:create your-app-name
    ```

6. Deploying app

    ```bash
    $ git push heroku your_new_branch_name:master
    # Scaling 'clock' processes
    $ heroku ps:scale clock=1
    # Setting time zone
    # https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
    $ heroku config:add TZ="Asia/Shanghai"
    ```

## Command Reference

### Log retrieval

```
$ heroku logs
```

## License
See `LICENSE`.