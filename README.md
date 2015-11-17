# landsatfact-sql
A collection of all the SQL views, functions, and data types used by Landsat FACT.

### Landsat FACT SQL Functions
* [All functions](functions.md)
* [delete_user_aoi_by_nid](functions.md#function-delete_user_aoi_by_nid)
* [get_aoi_id_by_nodeid](functions.md#function-get_aoi_id_by_nodeid)
* [get_countyByGeoid](functions.md#function-get_countybygeoid)
* [get_customRequestsQuads](functions.md#function-get_customrequestsquads)
* [get_pendingCustomRequests](functions.md#function-get_pendingcustomrequests)
* [get_scenesAlternate](functions.md#function-get_scenesalternate)
* [get_scenesMostRecent](functions.md#function-get_scenesmostrecent)
* [get_statusByAoiId](functions.md#function-get_statusbyaoiid)
* [initiate_custom_request](functions.md#function-initiate_custom_request)
* [insert_custom_request_scenes](functions.md#function-insert_custom_request_scenes)
* [insert_user_aoi_by_county](functions.md#function-insert_user_aoi_by_county)
* [insert_user_aoi_by_geojson](functions.md#function-insert_user_aoi_by_geojson)
* [is_validSceneIntersects](functions.md#function-is_validsceneintersects)
* [update_custom_request_status](functions.md#function-update_custom_request_status)
* [update_user_aoi_by_county](functions.md#function-update_user_aoi_by_county)
* [update_user_aoi_by_geojson](functions.md#function-update_user_aoi_by_geojson)

### Landsat FACT SQL Views
* [All views](views.md)
* [test_vw_user_notification](views.md#view-test_vw_user_notification)
* [vw_archive_product_dates](views.md#view-vw_archive_product_dates)
* [vw_download_scenes](views.md#view-vw_download_scenes)
* [vw_initial_mosaic_cloud](views.md#view-vw_initial_mosaic_cloud)
* [vw_initial_mosaic_gap](views.md#view-vw_initial_mosaic_gap)
* [w_initial_mosaic_ndmi](views.md#view-vw_initial_mosaic_ndmi)
* [vw_initial_mosaic_ndvi](views.md#view-vw_initial_mosaic_ndvi)
* [vw_initial_mosaic_swir](views.md#view-vw_initial_mosaic_swir)
* [vw_last_days_products](viewws/vw_last_days_products)
* [vw_last_days_scenes](views.md#view-vw_last_days_scenes)
* [vw_latest_quads_cloud](views.md#view-vw_latest_quads_cloud)
* [vw_latest_quads_cloud_new](views.md#view-vw_latest_quads_cloud_new)
* [vw_latest_quads_gap](views.md#view-vw_latest_quads_gap)
* [vw_latest_quads_gap_new](views.md#view-vw_latest_quads_gap_new)
* [vw_latest_quads_ndmi](views.md#view-vw_latest_quads_ndmi)
* [vw_latest_quads_ndmi_new](views.md#view-vw_latest_quads_ndmi_new)
* [vw_latest_quads_ndvi](views.md#view-vw_latest_quads_ndvi)
* [vw_latest_quads_ndvi_new](views.md#view-vw_latest_quads_ndvi_new)
* [vw_latest_quads_swir](views.md#view-vw_latest_quads_swir)
* [vw_latest_quads_swir_new](views.md#view-vw_latest_quads_swir_new)
* [vw_quilt](views.md#view-vw_quilt)
* [vw_reclass_products](views.md#view-vw_reclass_products)
* [vw_scenes_less_five](views.md#view-vw_scenes_less_five)
* [vw_tile_index_cloud](views.md#view-vw_tile_index_cloud)
* [vw_tile_index_gap](views.md#view-vw_tile_index_gap)
* [vw_tile_index_ndmi](views.md#view-vw_tile_index_ndmi)
* [vw_tile_index_ndvi](views.md#view-vw_tile_index_ndvi)
* [vw_tile_index_swir](views.md#view-vw_tile_index_swir)
* [vw_viewer_quads](views.md#view-vw_viewer_quads)

### Landsat FACT SQL Data Types
* [All Types](datatypes.md)
* [scene_geojson](datatypes.md#type-scene_geojson)
* [scene_url](datatypes.md#type-scene_url)
* [custom_requests_pending](datatypes.md#type-custom_requests_pending)
* [custom_request_quads](datatypes.md#type-custom_request_quads)
