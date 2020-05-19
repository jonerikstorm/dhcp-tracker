#!/bin/bash
cp dhcp-update ./opkg/data/etc/dhcp-update
pushd opkg/control/
tar --numeric-owner --group=0 --owner=0 -czf ../control.tar.gz ./*
popd

pushd opkg/data/
tar --numeric-owner --group=0 --owner=0 -czf ../data.tar.gz ./*
popd

pushd opkg
tar --numeric-owner --group=0 --owner=0 -cf ../release/dhcp-update-1.0.0.ipk ./debian-binary ./data.tar.gz ./control.tar.gz 
popd

