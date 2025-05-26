# Lab 1.1: Multi-Area OSPF Routing

## 🧠 Objective

Design and deploy a multi-area OSPF topology using EVE-NG that demonstrates:

- Inter-area communication
- ABR and LSA propagation behavior
- Route summarization between areas
- Troubleshooting of OSPF neighbor adjacencies

---

## 🔧 Configuration Tasks

1. Assign IP addresses and loopbacks (used as Router-IDs)
2. Enable OSPF and assign correct areas
3. Configure `network` statements with wildcard masks
4. Test adjacencies with `show ip ospf neighbor`
5. Add summarization on R1 and R2 from Area 10/20 into Area 0
6. Test inter-area reachability with `ping`, `traceroute`, and `show ip route`

---

## ✅ Validation Checklist

- [ ] All OSPF neighbors in FULL state
- [ ] Loopbacks are reachable across all routers
- [ ] Proper LSA types seen in Area 0
- [ ] Summarized prefixes advertised by ABRs
- [ ] No routing loops or black holes

---

## 📂 Files Included

- `topology.png`: Diagram of the lab setup
- `config/`: Contains config exports from all routers
  - R1.txt, R2.txt, R3.txt, R4.txt

---

## 🧾 Notes

> This lab simulates a typical enterprise multi-area design to promote route scalability and LSA containment. Summarization is key to keeping the backbone lean.
