Notes to accompany 1851 registration district polygon shapefiles for England and Wales
Prepared August 2011 to accompany data release 2

Index to README file:
- Files supplied
- Coverage Area
- Biblographic Citation
- General Notes
- Specific Polygon Notes
- Polygon Attribute descriptions

***********************************************
***** Files supplied *****
***********************************************

# README_EW1851_regdistricts_v2.txt
Notes on what is contained within the files

# EW1851_regdistricts.shp (Registration District polygons for England and Wales)

# End User Licence.txt
Specific Terms and conditions of use


***********************************************
***** Coverage Area *****
***********************************************

# National coverage only


**********************************************
***** Bibliographic Citation *****
***********************************************

All works which use or refer to these materials should acknowledge this source by means of bibliographic citation. To ensure that such source attributions are captured for bibliographic indexes, citations must appear in footnotes or in the reference section of publications. The citation format below is composed of; Author, Date, Title, Publisher. The bibliographic citation for this data collection is:
 
"Great Britain Historical GIS Project (2011) 'Great Britain Historical GIS'. University of Portsmouth"

For further details please refer to the End User Licence file supplied with this download.


***********************************************
***** General Notes *****
***********************************************

# The polygons in this coverage all relate to Registration Districts. 

# G_UNIT
These polygons replace the previous version of this file held at UKBORDERS and include a "g_unit" value. This value is a unique identifier from our gazetteer. 
The g_unit value can be used to identify the same district in different years even if the name/boundaries/status of the unit has changed. 
It also can be used to link to historical statistics deposited by the data creator at the UK Data Archive (University of Essex), hence the removal of all statistics and other superfluous attribute data from these boundary files.

# There has been some minor tidying up done to these districts, for example merging polygons to become multi-polygons and cleaning up of the district names, however, there has been no large-scale changes to the original spatial data and known errors are noted.

# Areas of common that were a combination of land held by several different parishes and which have never been recognised as separate administative units have no g_unit value. The notes identify these areas.

# This dataset uses the OSGB National Grid

# Relationships to container units, such as counties etc., have been omitted as there are frequently relationships to more than one higher-level unit.

# NAMESTATUS
Equates to "G_NAME_STATUS" in gazetteer.
As far as possible all unit names are the Preferred English name at the date given in the g_year column. Where this was unavailable they have been assigned their Preferred Welsh name in that year.
Where the name status is given as 'O' this indicates it was the preferred official name at this particular date, although another name later replaced it as the preferred name. 

# UNITTYPE
Equates to "G_UNIT_TYPE" in gazetteer.
The Unittype value is the administrative unit type for this unit at the date given in the file name.

# G_STATUS
The g_status value is the status for this unit at the date given in the g_year column. All these units are district level. Although these units can have more than one g_status value at a time, this coverage is limited to Registration District g_status values.

# NATION
District polygons have been assigned to a Nation based on which Ancient County area they fell within. Where a district was split between two counties, it has been assigned to the county which holds the largest part of that district. This is not a direct relationship in the gazetteer, but has been added as a derived value at UKBorders request.

# Further gazetteer information is available at:  http://www.visionofbritain.org.uk

***********************************************
***** Specific Polygon Notes *****
***** ENGLAND 1851 *****
***********************************************

# No notes


***********************************************
***** Specific Polygon Notes *****
***** WALES 1851 *****
***********************************************

# No notes


***********************************************
***** Polygon Attribute descriptions *****
**********************************************

# G_UNIT		- Unique identifier for unit
# G_NAME	- Name of unit at this date
# NAMESTATUS	- Status of name: P = Preferred or O = Official (N.B. see general notes)
# G_LANGUAGE	- Language of name: eng = English, cym = Welsh (N.B. see general notes)
# UNITTYPE	- Administrative unit type of the unit: PR_DIST = Poor Law Unions and Registration Districts (N.B. see general notes)
# G_STATUS 	- Status of the unit: RegD = Registration District (N.B. see general notes)
# NATION		- Nation district within (N.B. see general notes)
# G_YEAR	- date of polygon
# IM_AUTH	- Source of information
# IM_NOTE	- Further information on source
# NOTES		- Notes relating to specific polygon(s)