# ✅ Lab 1.1 – OSPF Multi-Area Validation Guide

This document provides a structured validation process to confirm that OSPF has been correctly configured and is operating as expected in a multi-area topology. Use this checklist and command reference during or after deployment to verify control-plane health, routing correctness, and end-to-end data-plane reachability.

---

## 🖥️ Lab Topology Summary

- **R1** (ABR): Connects Area 0 ↔ Area 10
- **R2** (ABR): Connects Area 0 ↔ Area 20
- **R3**: Internal router in Area 10
- **R4**: Internal router in Area 20

Loopback IPs:
- R1: 1.1.1.1/32
- R2: 2.2.2.2/32
- R3: 3.3.3.3/32
- R4: 4.4.4.4/32

---

## 🧪 OSPF Neighbor State Verification

Check that all OSPF neighbors are fully adjacent and in the `FULL` state.

```bash
show ip ospf neighbor

#Confirm interface config
show ip ospf interface brief

#Route table validation
show ip route ospf

#Control plane health
show ip ospf database

show ip protcols

#Data plane reachability
ping 4.4.4.4
ping 1.1.1.1 
traceroute 3.3.3.3
