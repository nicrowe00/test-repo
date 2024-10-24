#!/usr/bin/env bash

set - euo pipefail

### This is very questionable, but making our CI fail because distro
### .NET versions are out of date doesn't sound nice.
rm -rf release-version-sane

dotnet turkey/Turkey.dll -v --timeout 600

find -iname '*.log' -exec echo {} \; -exec cat {} \;