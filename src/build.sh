#!/bin/bash
echo "pyang tree generation start"
pyang -f tree --ietf ietf-bfd.yang -p dependencies/
pyang -f tree --ietf ietf-bfd-ip-sh.yang -p dependencies/
pyang -f tree --ietf ietf-bfd-ip-mh.yang -p dependencies/
pyang -f tree --ietf ietf-bfd-lag.yang -p dependencies/
pyang -f tree --ietf ietf-bfd-mpls.yang -p dependencies/
pyang -f tree --ietf ietf-bfd-mpls-te.yang -p dependencies/
echo "pyang tree generation done"


echo "pyang compile start"
pyang --ietf ietf-bfd.yang -p dependencies/
pyang --ietf ietf-bfd-ip-sh.yang -p dependencies/
pyang --ietf ietf-bfd-ip-mh.yang -p dependencies/
pyang --ietf ietf-bfd-lag.yang -p dependencies/
pyang --ietf ietf-bfd-mpls.yang -p dependencies/
pyang --ietf ietf-bfd-mpls-te.yang -p dependencies/
echo "pyang compile done"

echo "confdc compile ietf-bfd.yang"
confdc -c ietf-bfd.yang --yangpath dependencies
echo "confdc compile ietf-bfd-ip-sh.yang"
confdc -c ietf-bfd-ip-sh.yang --yangpath dependencies
echo "confdc compile ietf-bfd-ip-mh.yang"
confdc -c ietf-bfd-ip-mh.yang --yangpath dependencies
echo "confdc compile ietf-bfd-lag.yang"
confdc -c ietf-bfd-lag.yang --yangpath dependencies
echo "confdc compile ietf-bfd-mpls.yang"
confdc -c ietf-bfd-mpls.yang --yangpath dependencies
echo "confdc compile ietf-bfd-mpls-te.yang"
confdc -c ietf-bfd-mpls-te.yang --yangpath dependencies
echo "confdc compile done"
