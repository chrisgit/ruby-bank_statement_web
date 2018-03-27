Bank Statement GUI
==================

Simple Web UI to show bank statements (downloaded and processed from CSV using the bank processor). 

## Requirements

You will need 
* Ruby installed (tested using Ruby on Windows 2.3.1)
* Bank processor installed as a gem

## Installation

Open command window and navigate to the project root

```
$ bundle install
```

## Usage

Open command window and navigate to project root
```
bundle exec rackup
```

Open browser, navigate to http://localhost:<port> where port was displayed in the step above (normally 9292)

## UI

Bootstrap templated, constructed with https://www.bootstrapzero.com/bootstrap-template/director-responsive-admin

#### Ruby versions

Works with Ruby versions
* 2.3.1p112 (2016-04-26 revision 54768) [i386-mingw32]
* 2.4.2p198 (2017-09-14 revision 59899) [x64-mingw32]