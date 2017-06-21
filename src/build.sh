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
