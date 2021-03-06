# Views
PostGreSQL views used by Landsat FACT.

Back to [Table of contents](README.md)
<br><br>
### view [vw_aoi_alerts](views/vw_aoi_alerts.sql)

View that lists products that intersect a user AOI (area of interest)

**NOTES**

```sql
Columns
    aoi_id integer
    product_id character varying (100)
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_archive_product_dates](views/vw_archive_product_dates.sql)

View that display the date for every LCV product.

**NOTES**
  * Used by [makeviewerconfig.py](https://github.com/nemac/landsatfact-data/blob/master/msconfig/makeviewerconfig.py#L113) to generate the list of archive layers in the Map Viewer's Table of Contents.
```sql
Columns
    product_date date
    user_id character varying (30)
    node_id character varying (30)
    extent text
    lsf_url text
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_custom_requests_for_viewer](views/vw_custom_requests_for_viewer.sql)

View that provides a list of custom requests.

**NOTES**
  * Used by [makeviewerconfig.py](https://github.com/nemac/landsatfact-data/blob/master/msconfig/makeviewerconfig.py#L222) to generate the list of custom request layers in the Map Viewer.
```sql
Columns
    oid
    geom
    product_date
    product_type
    srs
    quad_id
    aoi
    request_id
    custom_request_date
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_custom_request_tile_index_cloud](views/vw_custom_request_tile_index_cloud.sql)

View that serves as a tile index for custom request layers in the Map Viewer

**NOTES**
  * location stores the path to the tif file
  * geom is the vector area for the tif file to be displayed within
  * srs is the spatial reference system of the tif
  * aoi is used by Mapserver which queries the custom request files for a specifc aoi. There is an "AOI=" parameter in the WMS GetMap requests that Mapserver uses.
```sql
Columns
    location
    oid
    geom
    product_date
    srs
    quad_id
    aoi
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_custom_request_tile_index_gap](views/vw_custom_request_tile_index_gap.sql)

View that serves as a tile index for custom request layers in the Map Viewer

**NOTES**
  * location stores the path to the tif file
  * geom is the vector area for the tif file to be displayed within
  * srs is the spatial reference system of the tif
  * aoi is used by Mapserver which queries the custom request files for a specifc aoi. There is an "AOI=" parameter in the WMS GetMap requests that Mapserver uses.
```sql
Columns
    location
    oid
    geom
    product_date
    srs
    quad_id
    aoi
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_custom_request_tile_index_ndmi](views/vw_custom_request_tile_index_ndmi.sql)

View that serves as a tile index for custom request layers in the Map Viewer

**NOTES**
  * location stores the path to the tif file
  * geom is the vector area for the tif file to be displayed within
  * srs is the spatial reference system of the tif
  * aoi is used by Mapserver which queries the custom request files for a specifc aoi. There is an "AOI=" parameter in the WMS GetMap requests that Mapserver uses.
```sql
Columns
    location
    oid
    geom
    product_date
    srs
    quad_id
    aoi
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_custom_request_tile_index_ndvi](views/vw_custom_request_tile_index_ndvi.sql)

View that serves as a tile index for custom request layers in the Map Viewer

**NOTES**
  * location stores the path to the tif file
  * geom is the vector area for the tif file to be displayed within
  * srs is the spatial reference system of the tif
  * aoi is used by Mapserver which queries the custom request files for a specifc aoi. There is an "AOI=" parameter in the WMS GetMap requests that Mapserver uses.
```sql
Columns
    location
    oid
    geom
    product_date
    srs
    quad_id
    aoi
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_custom_request_tile_index_swir](views/vw_custom_request_tile_index_swir.sql)

View that serves as a tile index for custom request layers in the Map Viewer

**NOTES**
  * location stores the path to the tif file
  * geom is the vector area for the tif file to be displayed within
  * srs is the spatial reference system of the tif
  * aoi is used by Mapserver which queries the custom request files for a specifc aoi. There is an "AOI=" parameter in the WMS GetMap requests that Mapserver uses.
```sql
Columns
    location
    oid
    geom
    product_date
    srs
    quad_id
    aoi
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_customrequets_hung](views/vw_customrequets_hung.sql)

Used for finding hung or custom request with errors in process.
```sql
Columns
  aoi_id integer
  current_status varchar(150)
  started_at timestamp
  stoped_at  timestamp
  time_since_request text
  scenes text
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_failed_dn](views/vw_failed_dn.sql)

During LCV minimum_dn sometimes fails to write to the DB.  This view identifies scenes where this happens.  This view is used to re-run writing of minimum_dn to the DB.

```sql
Columns
  scene_id character varying (35)
  days_ago double precision
  process text
  process_status text
  process_message text
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_failed_l1metadata](views/vw_failed_l1metadata.sql)

During LCV l1_metadata sometimes fails to write to the DB.  This view identifies scenes where this happens.  This view is used to re-run writing of l1 metadata.

```sql
Columns
  scene_id character varying (35)
  days_ago double precision
  process text
  process_status text
  process_message text
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_failed_lcv_quads](views/vw_failed_lcv_quads.sql)

During LCV sometimes an error occurs and nothing is written to the products table.  This is usually an fmask error this id's the failed in the past 3 days so we can attempt to re-run lcv on failures.

```sql
Columns
  scene_id character varying (35)
  quad text
  days_ago integer
  acquisition_date date
  added_date date
  analysis_source character varying (6)
  message_level text
  message text
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_failed_products](views/vw_failed_products.sql)

used to find scenes that failed LCV process.  Most failures never make it to the write to products table.  This view identifies the scenes where this happened.  This is used re-run failed LCV's

```sql
Columns
  scene_id character varying (35)
  days_ago double precision
  process text
  process_status text
  process_message text
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_last_days_products](views/vw_last_days_products.sql)

View that shows the latest products.

**NOTES**
* Used by the python scripts to generate a new latest change mosaic using gdal.
```sql
Columns
    product_id character varying (100)
    input1 character varying (40)
    input2 character varying (40)
    product_type character varying (6)
    product_date date
    quad_id input2 character varying (8)
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_download_scenes](views/vw_download_scenes.sql)

Used for... in function?
```sql
Columns
  wrs2 text
  satellite text
  scene_id character varying (35)
  sensor character varying (25)
  acquisition_date date
  browse_url character varying (100)
  "path" integer
  row integer
  cc_full real
  cc_quad_ul real
  cc_quad_ur real
  cc_quad_ll real
  cc_quad_lr real
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_last_days_products](views/vw_last_days_products.sql)

View that shows the latest products.

**NOTES**
* Used by the python scripts to generate a new latest change mosaic using gdal.
```sql
Columns
    product_id character varying (100)
    input1 character varying (40)
    input2 character varying (40)
    product_type character varying (6)
    product_date date
    quad_id input2 character varying (8)
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_last_days_scenes](views/vw_last_days_scenes.sql)

View that displays the latest scene records from the landsat_metadata table.

**NOTES**
* Used by download_landsat_data.php to download the scenes presented in this view.
```sql
Columns
    scene_id character varying (35)
    sensor character varying (25)
    acquisition_date date
    browse_url character varying (100)
    "path" integer
    row integer
    cc_full real
    cc_quad_ul real
    cc_quad_ur real
    cc_quad_ll real
    cc_quad_lr real
    data_type_l1 character varying (5)
```
Back to [Table of contents](README.md)

<br><br>
### view [vw_list_products_files](views/vw_list_products_files.sql)

list all the products in the database, and create a file location string.  This is used to check it the product is still on disk

```sql
Columns
  product_id character varying (100)
  file text
```
Back to [Table of contents](README.md)

<br><br>
### view [vw_missed_lcv](views/vw_missed_lcv.sql)

sometimes metadata for scenes is updated later and is missed in initial LCV run. This make sure we find the "missed" scenes

```sql
Columns
  scene_id character varying (35)
  days_ago double precision
  process text
  process_status text
  process_message text
```
Back to [Table of contents](README.md)

### view [vw_quad_latest_update](views/vw_quad_latest_update.sql)
This view is used by vw_viewer_quads to show the latest change metadata.

**NOTES**
* rank applies a ranking to each product and the view's "WHERE latestquads.rank = 1" chooses the latest product

```sql
Columns
  oid
  geom
  last_update
  rank
  srs
  input1
  input1_date
  input2
  input2_date
```
Back to [Table of contents](README.md)
<br><br>
views.md#view-
### view [vw_quad_lc_history](views/vw_quad_lc_history.sql)
This view is used by vw_viewer_quad_history to show the quad history metadata.

**NOTES**
* update_history aggregates the input1, input2, and ordinal dates for every LCV product in each quads product history

```sql
Columns
  quad_id
  update_history
```
Back to [Table of contents](README.md)
<br><br>
views.md#view-
### view [vw_quilt](views/vw_quilt.sql)
This view represents the first two scenes for the project area that are less than 5% cloud covered.

**NOTES**
* days_ago represents the how many days this scene was acquired
* rank determines the order for the scene (from when it was acquired).
  * 1 is most recent scene.
  * 2 is 2nd most recent scene.

```sql
Columns
  geom geometry
  wrs2_code character varying(6)
  gid integer
  cc_ull real
  scene_id character varying(35)
  acquisition_date date
  days_ago integer
  browse_url character varying(100)
  rank bigint
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_reclass_products](views/vw_reclass_products.sql)

Used for... in function?
```sql
Columns
    product_id character varying (100)
    geom geometry
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_scenes_less_five](views/vw_scenes_less_five.sql)
This view represents all scenes for the project area that are less than 5% cloud covered and where acquired after July 1, 2014.

**NOTES**
* days_ago represents the how many days this scene was acquired
* rank determines the order for the scene (from when it was acquired).
  * 1 is most recent scene.
  * 2 is 2nd most recent scene.
  * and `N` is `N` most recent scene.

```sql
Columns
  geom geometry
  wrs2_code character varying(6)
  gid integer
  cc_ull real
  scene_id character varying(35)
  acquisition_date date
  days_ago integer
  browse_url character varying(100)
  rank bigint
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_tile_index_customrequest](views/vw_tile_index_customrequest.sql)

```sql
Columns
    location text
    "oid" character varying (8)
    geom geometry
    product_date date
    srs character varying (600)
    process_date date
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_tile_index_cloud](views/vw_tile_index_cloud.sql)

View used as tile indexes by Mapserver to display the archive layers in the Map Viewer. The location contains the path to the product, the geom is the quad vector "tile", product date is the date of the product, and the srs is the spatial reference system of the geotiff file (used by Mapserver).
```sql
Columns
    location text
    "oid" character varying (8)
    geom geometry
    product_date date
    srs character varying (600)
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_tile_index_gap](views/vw_tile_index_gap.sql)

UView used as tile indexes by Mapserver to display the archive layers in the Map Viewer. The location contains the path to the product, the geom is the quad vector "tile", product date is the date of the product, and the srs is the spatial reference system of the geotiff file (used by Mapserver).
```sql
Columns
    location text
    "oid" character varying (8)
    geom geometry
    product_date date
    srs character varying (600)
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_tile_index_ndmi](views/vw_tile_index_ndmi.sql)

View used as tile indexes by Mapserver to display the archive layers in the Map Viewer. The location contains the path to the product, the geom is the quad vector "tile", product date is the date of the product, and the srs is the spatial reference system of the geotiff file (used by Mapserver).
```sql
Columns
    location text
    "oid" character varying (8)
    geom geometry
    product_date date
    srs character varying (600)
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_tile_index_ndvi](views/vw_tile_index_ndvi.sql)

View used as tile indexes by Mapserver to display the archive layers in the Map Viewer. The location contains the path to the product, the geom is the quad vector "tile", product date is the date of the product, and the srs is the spatial reference system of the geotiff file (used by Mapserver).
```sql
Columns
    location text
    "oid" character varying (8)
    geom geometry
    product_date date
    srs character varying (600)
    quad_id character varying (8)
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_tile_index_swir](views/vw_tile_index_swir.sql)

View used as tile indexes by Mapserver to display the archive layers in the Map Viewer. The location contains the path to the product, the geom is the quad vector "tile", product date is the date of the product, and the srs is the spatial reference system of the geotiff file (used by Mapserver).
```sql
Columns
    location text
    "oid" character varying (8)
    geom geometry
    product_date date
    srs character varying (600)
```
Back to [Table of contents](README.md)

### view [vw_user_notification](views/vw_user_notification.sql)

View with fields used in notification emails, including the user and aoi names and extent used in the Share URLs sent to teh user so they are zoomed to the user's aoi.
```sql
Columns
    aoi_id integer
    user_id
    node_id
    aoi_name
    product_type character varying (6)
    extent
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_viewer_quad_history](views/vw_viewer_quad_history.sql)

View that shows the Landsat Quads (History) layer in the Map Viewer, along with the history metadata. The metadata can be viewed using the Identify feature in the Map Viewer. Each record shows metadata of the LCV product history for each quad. The update_history field joins records from the view "[vw_quad_lc_history](https://github.com/nemac/landsatfact-sql/blob/master/views/vw_quad_lc_history.sql)" to show the input1, input2 and ordinal dates for every LCV product in the quad's history.
```sql
Columns
    "oid" character varying (8)
    quad_id
    geom geometry
    update_history
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_viewer_quads](views/vw_viewer_quads.sql)

View that shows the Landsat Quads (Latest Change) layer in the Map Viewer, along with the latest change metadata. The metadata can be viewed using the Identify feature in the Map Viewer. Each record shows metadata of the last update for each quad (date last updated, input1, input2, with ordinal dates for each) which is joined from the view [vw_quad_latest_update](https://github.com/nemac/landsatfact-sql/blob/master/views/vw_quad_latest_update.sql)
```sql
Columns
    "oid" character varying (8)
    quad_id
    geom geometry
    last_update date
    input1 character varying (40)
    input1_date
    input2 character varying (40)
    input2_date
```
Back to [Table of contents](README.md)
<br><br>
### view [vw_wms_params_for_geopdf](views/vw_wms_params_for_geopdf.sql)

View that displays the parameters needed in the geopdf creation, used by gdal geopdf command.
```sql
Columns
    aoi_id
    extent
    aoi_type
```
Back to [Table of contents](README.md)
<br><br>
