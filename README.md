# The Virtual Coop Platform

Built on Odoo 16.0.

# Setting up the connector

Open the shell on Odoo.sh:

```shell
nano /home/odoo/.config/odoo/odoo.conf
```

Add the following entries:

```shell
dbfilter=
server_wide_modules=web,queue_job

[queue_job]
scheme=https
port=443
host=mydb-2350951.dev.odoo.com
```

# Development

First pull all submodules:

```shell
git submodule update --init --recursive
```
Remember to set up the installed modules in the development branches to prevent Odoo.sh installing and testing all submodules.

To update submodules:

```bash
git pull --recurse-submodules
```

## Adding new Submodules

```bash
git submodule add -b 14.0 git@github.com:agrista/odoo-marketplace.git src/marketplace
```

## Removing Submodules

```bash
git submodule deinit <path_to_submodule>
git rm <path_to_submodule>
git commit -m "Removed submodule "
rm -rf .git/modules/<path_to_submodule>
```