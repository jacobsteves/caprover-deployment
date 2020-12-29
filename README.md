# CapRover Deploment

[About this repo](#about-this-repo) |
[Parameters](#parameters)

## About this repo
Github Action to deploy an app to a [CapRover](https://caprover.com) server.

## Required Parameters
- **Server**: CapRover admin panel URL (Example: `https://captain.root.domain.com`).
- **Password**: CapRover admin password. Use GitHub Secrets (`{{ secrets.CAPROVER_PASSWORD }}`) for better security.
- **Appname**: App on the CapRover server that you want to deploy to.
- One of:
  - **Branch**: will be deployed onto the app.
  - **Tarball**: `.tar` file that will be deployed onto the app.
