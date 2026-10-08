# PDFTron iOS Swift Package

This repository contains the PDFTron iOS package for use with the Swift Package Manager (SPM).

For information on getting started with PDFTron iOS, please see our [integration guides](https://www.pdftron.com/documentation/ios/get-started/).

Please note that a license for PDFTron iOS is required for use in a production environment. You can get in touch with PDFTron Sales
[here](https://www.pdftron.com/form/contact-sales/).

## Ginger Labs fork

The `pdfnet-only` branch vends a single `PDFNet` product and drops the `Tools` binary. Notability
doesn't use Tools, and Tools' `+load` methods call into UIKit, which can deadlock Notability's unit
test host on launch.

Each release is tagged with Apryse's version minus the leading zero (Apryse `12.0.030566` → `12.0.30566`)
so Swift Package Manager can use it as an exact version. Don't push Apryse's own tags to this fork, and
never move or delete a tag once it's pushed: Notability pins them.

To upgrade:

1. Merge Apryse's release commit for the new version into `pdfnet-only`.
2. Resolve the conflict in `Package.swift` by keeping only the `PDFNet` target, with Apryse's new URL and checksum.
3. Tag the merge commit with the new version and push the branch and tag.
4. Bump the exact version of this package in Notability.
