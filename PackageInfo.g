#
# TestActionPackage: Empty package to try out gap-actions
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "TestActionPackage",
Subtitle := "Empty package to try out gap-actions",
Version := "0.1",
Date := "10/02/2021", # dd/mm/yyyy format
License := "GPL-2.0-or-later",

Persons := [
  rec(
    FirstNames := "Sergio",
    LastName := "Siccha",
    Email := "siccha@mathematik.uni-kl.de",
    IsAuthor := true,
    IsMaintainer := true,
    #PostalAddress := TODO,
    Place := "TU Kaiserslautern",
    Institution := "Department of Mathematics",
  ),
],

SourceRepository := rec(
    Type := "git",
    URL := "https://github.com/ssiccha/TestActionPackage",
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := "https://ssiccha.github.io/TestActionPackage/",
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
README_URL      := Concatenation( ~.PackageWWWHome, "README.md" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/", ~.PackageName, "-", ~.Version ),

ArchiveFormats := ".tar.gz",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "dev",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "TestActionPackage",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Empty package to try out gap-actions",
),

Dependencies := rec(
  GAP := ">= 4.11",
  NeededOtherPackages := [ ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

#Keywords := [ "TODO" ],

));


