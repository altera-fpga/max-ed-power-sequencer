# Changelog

## [25.1] - 2026-10-07

### Changed

- Moved from [Intel's Developer Zone](https://www.intel.com/content/www/us/en/developer/topic-technology/open/multi-rail-power-sequencer/overview.html) to Altera.
- Updated for for Quartus 25.1 std.

## [3.0.0] - 2025-04-28
 
### Added

- Non-volatile error logging, black box data log, and timestamp from TOD clock.
- Support for non-PMBus* control plane interfaces with "Alignment Bridge".
- Page support for all rails, including digital rails.
- Undervoltage error logging on digital POK inputs.
- Logging for qualification window timeout errors.
- "Sequencer Monitor" component, combining "Sequencer Decoder" and "Sequencer Voltage Monitor" for simpler configuration.
- System Console script with status and control functions to easily interface to the sequencer over JTAG and the Alignment Bridge.
 
### Changed

- Sequencer Decoder to allow zero ADC interfaces, for a fully digital implementation (with PMBus support or logging).
- Updated for for Quartus 24.1 std.
 
## [2.2.0] - 2024-02-02
 
### Added

- PLL reset functionality.
- Power-on reset and sequencing to the reset architecture in the reference design.
- Configuration option for open-drain or push-pull drivers on nFAULT, VRAIL_ENA, and VRAIL_DCHG.
 
## [2.1.3] - 2020-03-27
 
### Fixed

- Issue where powerdown of groups only checked for one rail instead of all POKs low before sequencing the next group.
- Issue where retries and timeout values were not being passed to the sequencer when PMBus was disabled.
 
## [2.1.2] - 2019-09-12
 
### Changed

- Removed "Altera Confidential" from the footer.
- Rounded off resource estimates in the User's Guide.
 
## [2.1.1] - 2019-09-03
 
### Changed

- Increased maximum number of ADC channels in VMonDecode from 9 to 17.
 
### Fixed

- Corrected indexing of delays in PowerSequencer when the "Power Groups" option is used.
 
## [2.1.0] - 2019-06-10
 
### Added

- Initial public release.

 