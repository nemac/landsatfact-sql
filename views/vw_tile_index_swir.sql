-- View: public.vw_tile_index_swir

-- DROP VIEW public.vw_tile_index_swir;

CREATE OR REPLACE VIEW public.vw_tile_index_swir AS
 SELECT (SELECT path_data from lsf_enviroments) || '/swir/'::text || products.product_id::text AS location,
    extracted_imagery.quad_id AS oid,
    lq.geom,
    products.product_date,
    wc.proj_wkt AS srs
   FROM products,
    landsat_quads lq,
    extracted_imagery,
    wrs2_codes wc
  WHERE products.product_type::text = 'SWIR'::text AND products.input1::text = extracted_imagery.quad_scene::text AND extracted_imagery.quad_id::text = lq.quad_id::text AND lq.wrs2_code::text = wc.wrs2_code::text;

ALTER TABLE public.vw_tile_index_swir
  OWNER TO root;
GRANT ALL ON TABLE public.vw_tile_index_swir TO root;
GRANT SELECT ON TABLE public.vw_tile_index_swir TO readonly;
GRANT ALL ON TABLE public.vw_tile_index_swir TO dataonly;
