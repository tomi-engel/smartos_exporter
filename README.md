# smartos_exporter

Prometheus exporter of SmartOS machine metrics

## Why?

SmartOS (https://smartos.org) is a fairly exotic "container" operating system based on Solaris.
The SmartOS code is at https://github.com/joyent/smartos-live.

Go (https://golang.org) has become a popular programming languge, but the Solaris support feels 
like a second class citizen, cross compiling is not as trivial as it seems because
typical Go projects are very often marked with "!solaris".

Prometheus (https://prometheus.io) is a popular monitoring system written in Go … but, as of early 2017, 
the Solaris support is very limited. Even while the regular node_exporter (https://github.com/prometheus/node_exporter)
claims to support Solaris at least the releases which we have tried did not compile out of the box due to a number of 
dependency issues and broken build scripts. 

Joyent, the "makers" of SmartOS, provide Prometheus integration via their ContainerPilot (https://github.com/joyent/containerpilot).
But for legacy or small SmartOS deployments this feels like an overkill when it comes to Prometheus support, 
especially when we mainly want to answer the questions:

- Is the machine still up?
- Are we getting hit by unusually high (attack) traffic?
- Are we running out of RAM or disk space?

So … lets roll our own little solution.


## What?

The initial goals are:

- provide key system information … based on "kstat" data


## How?

Those are the planned steps

- fork https://github.com/ingrians/smartos_exporter … to get a basic Prometheus and "kstat" setup
- integrate parts of https://github.com/prometheus/node_exporter … to simulate as much of the regular "node" aspects as possible
- integrated https://github.com/eripa/prometheus-zfs … to get better Zpool monitoring
- figure out a way to integrate "zone" oriented stats

This project does not really have a high priority but it still should see some progress after all.

For more on the progress check out the CHANGELOG at …

