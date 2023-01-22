SELECT DISTINCT pt.active_ingredient,
                pt.brand_name || ' ' || pt.name                         AS name,
                pt.registration_no                                      AS default_code,
                pt.manufacturer_id,
                'product'                                               AS type,
                pt.merchant_id,
                SPLIT_PART(pt.product_category_id, ',', 1)              AS categ_id,
                CASE
                    WHEN LENGTH(SPLIT_PART(pt.product_category_id, ',', 3)) > 0
                        THEN SPLIT_PART(pt.product_category_id, ',', 2) || ',' ||
                             SPLIT_PART(pt.product_category_id, ',', 2)
                    ELSE SPLIT_PART(pt.product_category_id, ',', 2) END AS categ_ids,
                STRING_AGG(pt.related_product_category, ',')            AS related_product_category_id,
                pcm.product_public_category_id,
                STRING_AGG(pt.pest_disease, ',')                        AS disease_id,
                'uom.product_uom_litre'                                 AS uom_id,
                'uom.product_uom_litre'                                 AS uom_po_id,
                -- pt.manufacturer_id || ',Villa'                          AS company_id,
                'True'                                                  AS is_agrochemical,
                'True'                                                  AS allow_quote_request,
                'False'                                                 AS show_list_price,
                'True'                                                  AS sale_ok,
                'True'                                                  AS website_published,
                'approved'                                              AS status
FROM wusa.product_template pt
         JOIN wusa.product_category_mapping pcm ON pt.product_category_id = pcm.product_category_id
GROUP BY pt.active_ingredient, pt.brand_name, pt.name, pt.registration_no, pt.manufacturer_id, pt.merchant_id,
         pt.product_category_id, pcm.product_public_category_id
limit 100 OFFSET 200;

UPDATE wusa.product_template
SET brand_name = 'Meridian'
WHERE merchant_id = 'Meridian Agrochemical Company (Pty) Ltd';

SELECT DISTINCT manufacturer_id, merchant_id, brand_name
FROM wusa.product_template;