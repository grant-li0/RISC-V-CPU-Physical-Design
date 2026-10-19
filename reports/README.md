# CPU Physical Implementation Reports

Selected reports from a SKY130 CPU implementation using Synopsys Design Compiler and Cadence Innovus through the SiliconJackets SJapr flow. These files document implementation results but do not establish timing closure or physical signoff.

## Run context

- Top-level design: `chip_top`.
- Synthesis reference report: October 16, 2026; Design Compiler X-2025.06-SP3.
- Post-route timing and verification reports: October 17, 2026; Innovus 25.11-s102_1.
- Project configuration: clock gating with normal and high-speed (HS) libraries. 

## Post-route results

| Metric | Reported result |
|---|---:|
| Setup WNS, all paths | -2.252 ns |
| Setup TNS, all paths | -1435.1 ns |
| Setup violating paths | 1040 |
| Hold WNS, all paths | +0.264 ns |
| Hold TNS, all paths | 0.000 ns |
| Hold violating paths | 0 |

The project focused on learning static timing analysis (STA) skills and methods to improve WNS and TNS, including cell swapping with HS library cells. Timing was not closed and DRC, LVS errors were not resolved for clean signoff. For more details about what I explored in the project, refer to the slidedeck pdf in the repository root.

## Included files

| File | Purpose |
|---|---|
| [Synthesis area](synthesis/area.rpt) | Cell count and synthesized cell area for the saved synthesis run |
| [Synthesis references](synthesis/references.rpt) | Top-level cell/module references |
| [Floorplan utilization](floorplan/utilization.rpt) | Core and effective placement utilization |
| [Post-route setup summary](timing/post_route_setup_summary.rpt) | Setup WNS, TNS, path counts, and design-rule metrics |
| [Post-route hold summary](timing/post_route_hold_summary.rpt) | Hold WNS, TNS, and path counts |
| [Post-route setup paths](timing/post_route_setup_paths.rpt) | Detailed reported paths, not an exhaustive enumeration of all paths |
| [Flow summary](flow/flow_summary.log) | All listed steps completed with OK status |
