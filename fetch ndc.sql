        SELECT   X80.NDC_ID as ndcNumber
        ,X80.ARGUS_NDC_DELETE_DT as argusNdcDeleteDate
        ,X80.NDC_ADD_DT as ndcAddDate
        ,X80.BLA_APPROVED_CD as blaApprovedCode
        ,X80.BRAND_NM as brandName
        ,X80.CASE_PACK_CT as casePackCount
        ,X80.CORE_9_SML_PACKAGE_SIZE_CT as core9SmallestPackageSizeCount
        ,X80.DEA_CD as deaCode
        ,X80.DESI_CD as desiCode
        ,X80.DRUG_CLASS_CD as drugClassCode
        ,X80.DRUG_FORM_CD as drugFormCode
        ,X80.GCN_SEQNO_ID as gcnSequenceId
        ,X80.GCN_SML_PACKAGE_SIZE_CT as gcnSmallestPackageSizeCount
        ,X80.GENERIC_AVAILABLE_CD as genericAvailableCode
        ,X80.GPI_CD as gpiCode
        ,X80.HCFA_DESI_STATUS_CD as hcfaDesiStatusCode
        ,X80.HCFA_DESI_STATUS_DT as hcfaDesiStatusDate
        ,X80.HCFA_SHELF_LIFE_TERMTN_DT as hcfaShelfLifeTerminationDate
        ,X80.INNOVATOR_IND_CD as innovatorIndicatorCode
        ,X80.INSTNL_PRODUCT_IND_CD as instnlProductIndicatorCode
        ,X80.LABEL_NM as labelName
        ,X80.MAINTENANCE_DRUG_IND_CD as maintenanceDrugIndicatorCode
        ,X80.MEDICATION_ID as medicationId
        ,X80.OBSOLETE_DT as obsoleteDate
        ,X80.ORANGE_BOOK_AVAILABLE_CD as orangeBookAvailableCode
        ,X80.ORANGE_BOOK_CD as orangeBookCode
        ,X80.OTC_AVAILABLE_CD as otcAvailableCode
        ,X80.PACKAGE_SIZE_CT as packageSizeCount
        ,X80.PART_D_DRUG_TYPE_CD as partDDrugTypeCode
        ,X80.PREVIOUS_NDC_ID as previousNdcCode
        ,X80.REPACKAGED_IND_CD as repackagedIndicatorCode
        ,X80.REPLACEMENT_NDC_ID as replacementNdcNumber
        ,X80.SOURCE_IND_CD as sourceIndicatorCode
        ,X80.TOP_200_DRUG_ID as top200DrugId
        ,X80.UNIT_DOS_ONLY_CD as unitDosOnlyCode
        ,X80.UNIT_DOSE_CD as unitDoseCode
        ,X80.FDA_MARKETING_END_DT as fdaMarketingEndDate
        ,X80.FDA_MARKETING_CATEGORY_TX as fdaMarketingCategoryText
        ,X80.COD_STATUS_CD as codStatusCode
        ,X80.FDA_LISTED_CD as fdaListedCode
        ,X80.CMS_REACTIVATED_DT as cmsReactivatedDate
        ,X85.DOSAGE_FORM_CD as dosageFormCode
        ,X85.DRUG_CATEGORY_CD as drugCategoryCode
        ,X85.DRUG_STRENGTH_DESC_SHRT_TX as drugStrengthDescShortText
        ,X85.GENDER_CD as genderCode
        ,X85.GENERIC_TC_ID as genericTcId
        ,X85.INGREDIENT_LIST_ID as FdbHICListSequenceNumber
        ,X85.ROUTE_ADMIN_CD as routeAdminCode
        ,X85.SPECIFIC_TC_CD as specificTcCode
        ,X85.STANDARD_TC_CD as standardTcCode
        ,X90.MANUFACTURER_NM as manufacturerName
        ,COALESCE(X92.ANDA_STATUS_CD,0) as andaStatusCode
        ,COALESCE(X92.NDA_STATUS_CD,0) as ndaStatusCode
        ,IFNULL(
        (SELECT Y01.MEDICARE_BILLING_CD
        FROM Y01_A999 Y01
        WHERE Y00.MEDICARE_REFERENCE_CD =
        Y01.MEDICARE_REFERENCE_CD
        ORDER BY Y01.MEDICARE_REFERENCE_SEQ_ID ASC
        FETCH FIRST 1 ROWS ONLY),' ') AS medicareBillingCode
        ,COALESCE(Y02.DRUG_STRENGTH_CT,0) as drugStrengthCount
        ,COALESCE(Y02.DRUG_STRENGTH_UNIT_TX,' ') as drugStrengthUnitText
        ,COALESCE(Y02.DRUG_STRENGTH_VOL_CT,0) as drugStrengthVolumeCount
        ,COALESCE(Y02.DRUG_STRENGTH_VOL_UNIT_TX,' ') as drugStrengthVolumeUnitText
        ,Y03.DOSAGE_FORM_DESC_TX as dosageFormDescriptionText
        ,Y04.ROUTE_DESC_TX as routeDescriptionText
        ,Y05.GCN_ID as gcnId
        ,Y06.GENERIC_NM as genericName
        ,COALESCE(Y13.MAX_DAILY_DOSE_UNIT_CT,0) as adultMaxDailyDoseUnitCnt
        ,COALESCE(Y13.MIN_DAILY_DOSE_UNIT_CT,0)  as adultMinDailyDoseUnitCnt
        ,COALESCE(Y16.MAX_DAILY_DOSE_UNIT_CT,0)  as  geriatricMaxDailyDoseUnitCnt
        ,COALESCE(Y16.MIN_DAILY_DOSE_UNIT_CT,0)   as geriatricMinDailyDoseUnitCnt
        ,COALESCE(Y36.AHFS_TC_CD,0)   as ahfsTcCode
        ,COALESCE(
        (SELECT Y32_FUL.EVD_EXT_VOCAB_ID
        FROM Y32_A999 Y32_FUL
        WHERE Y32_FUL.EVD_FDB_VOCAB_ID =
       :NDCID
        AND Y32_FUL.EVD_FDB_VOCAB_TYPE_ID = 100
        AND Y32_FUL.EVD_LINK_TYPE_ID = 4
        FETCH FIRST 1 ROWS ONLY),' ')  as evdExtVocabId
        ,COALESCE(
        (SELECT X88_DIRU.NDC_PRICE
        FROM X88_A999 X88_DIRU
        WHERE X88_DIRU.NDC_PRICE_TYPE_CD = '05'
        AND X88_DIRU.NDC_PRICE_DT
        <= :FILLDATE
        AND X88_DIRU.NDC_ID = :NDCID
        ORDER BY X88_DIRU.NDC_PRICE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0)    as fdbDirectedUnitPrice
        ,COALESCE(
        (SELECT X88_DIRP.NDC_PRICE
        FROM X88_A999 X88_DIRP
        WHERE X88_DIRP.NDC_PRICE_TYPE_CD = '06'
        AND X88_DIRP.NDC_PRICE_DT
        <= :FILLDATE
        AND X88_DIRP.NDC_ID = :NDCID
        ORDER BY X88_DIRP.NDC_PRICE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0)  as fdbDirectedPackagePrice
        ,COALESCE(
        (SELECT X88_FULU.NDC_PRICE
        FROM X88_A999 X88_FULU
        WHERE X88_FULU.NDC_PRICE_TYPE_CD = '11'
        AND X88_FULU.NDC_PRICE_DT
        <= :FILLDATE
        AND X88_FULU.NDC_ID = :NDCID
        ORDER BY X88_FULU.NDC_PRICE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0)  as fdbFullUnitPrice
        ,COALESCE(
        (SELECT X88_WHNU.NDC_PRICE
        FROM X88_A999 X88_WHNU
        WHERE X88_WHNU.NDC_PRICE_TYPE_CD = '09'
        AND X88_WHNU.NDC_PRICE_DT
        <= :FILLDATE
        AND X88_WHNU.NDC_ID = :NDCID
        ORDER BY X88_WHNU.NDC_PRICE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0) as  fdbWhnUnitPrice
        ,COALESCE(
        (SELECT X88_WHNP.NDC_PRICE
        FROM X88_A999 X88_WHNP
        WHERE X88_WHNP.NDC_PRICE_TYPE_CD = '10'
        AND X88_WHNP.NDC_PRICE_DT
        <= :FILLDATE
        AND X88_WHNP.NDC_ID = :NDCID
        ORDER BY X88_WHNP.NDC_PRICE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0)   as fdbWhnPackagePrice
        ,COALESCE(
        (SELECT X88_SWPU.NDC_PRICE
        FROM X88_A999 X88_SWPU
        WHERE X88_SWPU.NDC_PRICE_TYPE_CD = '07'
        AND X88_SWPU.NDC_PRICE_DT
        <= :FILLDATE
        AND X88_SWPU.NDC_ID = :NDCID
        ORDER BY X88_SWPU.NDC_PRICE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0)  as fdbSwpUnitPrice
        ,COALESCE(
        (SELECT X88_SWPP.NDC_PRICE
        FROM X88_A999 X88_SWPP
        WHERE X88_SWPP.NDC_PRICE_TYPE_CD = '08'
        AND X88_SWPP.NDC_PRICE_DT
        <= :FILLDATE
        AND X88_SWPP.NDC_ID = :NDCID
        ORDER BY X88_SWPP.NDC_PRICE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0)   as fdbSwpPackagePrice
        ,COALESCE(X81_AWP.UNIT_PR,0)  as medispanAwpUnitPrice
        ,COALESCE(X81_AWP.PACKAGE_PR,0)    as medispanAwpPackagePrice
        ,COALESCE(X81_DIR.UNIT_PR,0)    as medispanDirUnitPrice
        ,COALESCE(X81_DIR.PACKAGE_PR,0)   as medispanDirPackagePrice
        ,COALESCE(
        (SELECT X81_FUL.UNIT_PR
        FROM X81_A999 X81_FUL
        WHERE X81_FUL.PRICE_TYPE_CD = 'F'
        AND X81_FUL.EFFECTIVE_DT <= :FILLDATE
        AND X81_FUL.NDC_ID = :NDCID
        ORDER BY X81_FUL.EFFECTIVE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0)   AS medispanFullUnitPrice
        ,COALESCE(X81_WHN.UNIT_PR,0)   AS medispanWhnUnitPrice
        ,COALESCE(X81_WHN.PACKAGE_PR,0) AS medispanWhnPackagePrice
        ,COALESCE(
        (SELECT AL3.GCN_AVG_GENERIC_PR
        FROM AL3_A999 AL3
        WHERE AL3.GCN_ID = Y05.GCN_ID
        AND AL3.GCN_AVERAGE_PRICE_TYPE_CD = 'W'
        AND AL3.GCN_AVG_PRC_EFFECTIVE_DT <=
        :FILLDATE
        ORDER BY GCN_AVG_PRC_EFFECTIVE_DT DESC
        FETCH FIRST 1 ROWS ONLY),0) AS gcnAverageGenericPrice
        ,X86.ARGUS_NDC_DELETE_DT as x86ArgusNdcDeleteDate
        ,COALESCE(X86.NDC_ID,' ') as X86NdcNumber
        ,X80.ACTIVE_CD as activeCode
        ,X80.FDB_ORIG_DRUG_CLASS_CD as fdbOriginalDrugClassCode
        ,COALESCE(
        SUBSTR(X80.NADAC_CLASSIFICATION_TX,1,1),' ')  AS nadacClassificationCode
        , COALESCE(
        (SELECT X88.NDC_PRICE
        FROM X88_A999 X88
        WHERE X88.NDC_PRICE_TYPE_CD    = '24'

        AND X88.NDC_PRICE_DT         <=

        :FILLDATE

        AND X88.NDC_ID = :NDCID

        ORDER BY X88.NDC_PRICE_DT DESC

        FETCH FIRST 1 ROWS ONLY),0)  as nadacBrandNdcPrice


        , COALESCE(

        (SELECT X88.NDC_PRICE

        FROM X88_A999 X88

        WHERE X88.NDC_PRICE_TYPE_CD     = '25'

        AND X88.NDC_PRICE_DT          <=

        :FILLDATE

        AND X88.NDC_ID = :NDCID

        ORDER BY X88.NDC_PRICE_DT DESC

        FETCH FIRST 1 ROWS ONLY),0)   as nadacGenericNdcPrice


        , COALESCE(

        (SELECT X88.NDC_PRICE

        FROM X88_A999 X88

        WHERE X88.NDC_PRICE_TYPE_CD     = '23'

        AND X88.NDC_PRICE_DT          <=

        :FILLDATE

        AND X88.NDC_ID = :NDCID

        ORDER BY X88.NDC_PRICE_DT DESC

        FETCH FIRST 1 ROWS ONLY),0)   as acaFullNdcPrice

        FROM X80_A999 X80

        INNER JOIN X85_A999 X85

        ON X85.GCN_SEQNO_ID = X80.GCN_SEQNO_ID



        LEFT OUTER JOIN Y02_A999 Y02

        ON Y02.DRUG_STRENGTH_DESC_TX =

        X85.DRUG_STRENGTH_DESC_TX



        INNER JOIN Y03_A999 Y03

        ON Y03.DOSAGE_FORM_CD = X85.DOSAGE_FORM_CD



        INNER JOIN Y04_A999 Y04

        ON Y04.ROUTE_ADMIN_CD = X85.ROUTE_ADMIN_CD



        INNER JOIN Y05_A999 Y05

        ON Y05.GCN_SEQNO_ID = X85.GCN_SEQNO_ID



        INNER JOIN Y06_A999 Y06

        ON Y06.INGREDIENT_LIST_ID = X85.INGREDIENT_LIST_ID



        INNER JOIN X90_A999 X90

        ON X90.LABELER_ID = X80.LABELER_ID



        LEFT OUTER JOIN X92_A999 X92

        ON X92.NDC_ID = X80.NDC_ID



        LEFT OUTER JOIN Y13_A999 Y13

        ON Y13.GCN_SEQNO_ID = X85.GCN_SEQNO_ID



        LEFT OUTER JOIN Y14_A999 Y14

        ON Y14.GCN_SEQNO_ID = X85.GCN_SEQNO_ID

        AND Y14.MIN_DOSING_AGE_CT >= 1

        AND Y14.MAX_DOSING_AGE_CT <= 99



        LEFT OUTER JOIN Y16_A999 Y16

        ON Y16.GCN_SEQNO_ID = X85.GCN_SEQNO_ID



        LEFT OUTER JOIN Y36_A999 Y36

        ON Y36.GCN_SEQNO_ID = X85.GCN_SEQNO_ID

        AND Y36.AHFS_RELATIVE_ORDER_CD = 1

        LEFT OUTER JOIN

        (SELECT X81.EFFECTIVE_DT

        ,X81.UNIT_PR

        ,X81.PACKAGE_PR

        FROM X81_A999 X81

        WHERE X81.PRICE_TYPE_CD = 'H'

        AND X81.EFFECTIVE_DT <= :FILLDATE

        AND X81.NDC_ID = :NDCID

        ORDER BY X81.EFFECTIVE_DT DESC

        FETCH FIRST 1 ROWS ONLY) X81_AWP

        ON 1 = 1

        LEFT OUTER JOIN

        (SELECT X81.EFFECTIVE_DT
        ,X81.UNIT_PR
        ,X81.PACKAGE_PR
        FROM X81_A999 X81
        WHERE X81.PRICE_TYPE_CD = 'D'
        AND X81.EFFECTIVE_DT <= :FILLDATE
        AND X81.NDC_ID = :NDCID
        ORDER BY X81.EFFECTIVE_DT DESC
        FETCH FIRST 1 ROWS ONLY) X81_DIR
        ON 1 = 1
        LEFT OUTER JOIN
        (SELECT X81.EFFECTIVE_DT
        ,X81.UNIT_PR
        ,X81.PACKAGE_PR
        FROM X81_A999 X81
        WHERE X81.PRICE_TYPE_CD = 'W'
        AND X81.EFFECTIVE_DT='2020-01-01'
        AND X81.NDC_ID = :NDCID
        ORDER BY X81.EFFECTIVE_DT DESC
        FETCH FIRST 1 ROWS ONLY) X81_WHN
        ON 1 = 1
        LEFT OUTER JOIN
        (SELECT Y00.MEDICARE_REFERENCE_CD
        FROM Y00_A999 Y00
        WHERE Y00.NDC_ID = :NDCID
        AND Y00.MCR_REGION = 'N'
        ORDER BY Y00.MCR_DATEC DESC
        FETCH FIRST 1 ROWS ONLY) Y00
        ON 1 = 1
        LEFT OUTER JOIN X86_A999 X86
        ON X86.NDC_ID = X80.NDC_ID
        WHERE X80.NDC_ID = :NDCID
        --AND X80.REASON_NOT_PRICED_CD = 0
        AND (X80.ARGUS_NDC_DELETE_DT IS NULL
        OR  X80.ARGUS_NDC_DELETE_DT <= '9999-12-31')
        FETCH FIRST 1 ROWS ONLY