# Changelog

## [1.5.0] - 2021-06-30
### Changed
- Bugfix : battery indicator showing the connected device's battery level correctly
- Bugfix : ContactsVisualization prefab layout corrected
- Better handling of NeuroTag tracking/untracking
- The Overlay Blending property is deprecated and will be removed. In future versions of the SDK, Overlay Blending will automatically be active.
### Added 
- New example scene : NeuroTag Gallery
- Allow to declare multiple Tracking Cameras on NeuroManager
- Scriptable Render Pipeline assets (prefabs, materials, and example scenes variants) are available. See SRP folders and example folder's README file
- Warning messages displayed on shaders editors when their configuration is not optimal
- New error and warning messages (e.g. NextMindManager is not installed, bad bluetooth connection, ...)

## [1.4.0] - 2021-05-05
### Changed
- Calibration results are computed much faster
- Various back-end optimizations
- Fix some cases where "Unknown BCI error" was thrown
- Unity 2018 is not supported anymore
### Added 
- New help video at the end of the calibration giving tips on how to get a better score

## [1.3.2] - 2021-04-09
### Changed
- Bugfix : NeuroTag's "Fix" button failed if the developer moved or renamed the NextMindSDK folder, or get it from UPM
- Bugfix : Simulation mode on Collider2D with perspective Camera
- Bugfix : shadergraphs triplanar projection was using world space normals instead of local space
- Bugfix : shadergraphs "Constant size" property was creating deformation artefacts on stimulation texture
- Use Gradient on ContactsVisualization instead of 2 colors
- Remove "Screen Ratio" property from Nextmind's shaders. This is now computed automatically
### Added 
- Contact Quality is now visible in the profiler, and accessible through script using Device.GetAverageContactQuality()

## [1.3.1] - 2021-03-23
### Changed
- Bugfix : NeuroTags visibility calculation on World Space Canvases
- Bugfix : OnReleased event is now triggered when destroying/disabling a NeuroTag 

## [1.3.0] - 2021-03-12
### Changed
- First release of UPM packages
- Shaders property OverlayColor has been removed for simplicity sake
- Enhance bluetooth connection stability
- Bugfix : overlay blending was not applied properly
- Bugfix : NeuroManager events callbacks (OnDeviceAvailable/Unavailable & OnDeviceConnected/Disconnected) were not called by the right events
- Bugfix : Simulated feedback was not reset when a target is reassigned
### Added
- UWP platforms support (x86 & ARM64)
