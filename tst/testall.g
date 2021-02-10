#
# TestActionPackage: Empty package to try out gap-actions
#
# This file runs package tests. It is also referenced in the package
# metadata in PackageInfo.g.
#
LoadPackage( "TestActionPackage" );

TestDirectory(DirectoriesPackageLibrary( "TestActionPackage", "tst" ),
  rec(exitGAP := true));

FORCE_QUIT_GAP(1); # if we ever get here, there was an error
