# report-system-api

> This repo is backend of the report-system app
> Client : https://github.com/queq1890/report-system-client

## feature(WIP)

### registration / session

- creating an account with selecting type (member / team leader / group leader)
- login / logout

### member

- can edit profile
- can submit daily report to team leader
- can use emoticon to express their feelings in the report
- can tag issue to the report (any number of issues they want)

### team leader

- can see team member list
- can see stats of daily reports( sorting by day / week / month)
- can create weekly report to group leader

### group leader

- can see all teams' profile
- can see all teams' report stats

## Development

```bash
$ git clone git@github.com:queq1890/report-system-api.git
$ bundle
$ rails db:create
$ rails db:migrate

# run rails server
$ rails s
```

## License

This project is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
