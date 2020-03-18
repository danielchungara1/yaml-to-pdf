# SIM MES API Documentation
This document describe Rest MES API and show examples of two uses case. Request IMEI EDF information and post test result

**Servers**
   * https://rg.qa.sim.ad.mirgor.com.ar:8081/QA-int/

   **device-api** Device API

#### POST /device __--
> **Parameters**
>
> No parameters

> **Request Body**  required
>
> application/json

> **Example:**  request edf file information
> * **Example Value | Schema**
>
>  -- **user:** sys
>
>  -- **password:** ******
>
>  -- **method:** MES_PA_WI1012
>
>  -- **methodparameter:**
>
>  ---- **BarCode:** 352125110156238
> * **Example Description**
>
>  This sample show how station call api to request edf file information from MES

>
> **Response**
>
> * **Code** 200 || **Description** OK || **Links** No Links
>
> * **Media Type** application/json
>
> * **Example** response edf file information
>
> * **Example Value | Schema**
>
>  -- **state:** true
>
>  -- **content:**
>
>  ---- **SKU:** SM-A107MZKAARO
>
>  ---- **IMEI:** 352125110156238
>
>  ---- **PROD_SN:** R00MC037TMJ
>
>  ---- **SLAVE_IMEI:** null
>
>  ---- **SW_VERSION:** SW_S96116BA1_V064_M10_EF_SS_N6_USRD_ATO
>
>  ---- **HW_VERSION:** MP1.0
>
>  ---- **BT_ADDR:** 48794DD8CF3C
>
>  ---- **MAC_ADDR:** 48794DD8CF3B
>
>  ---- **NCK:** 0
>
>  ---- **MCK:** 0
>
>  ---- **UN_NUM:** W155144303D9B59BF6B6
>
>  ---- **PACK_ID:** null
>
>  ---- **BOX_ID:** C1619121600035
>
>  ---- **PALLET_ID:** P1619121600050
>
>  ---- **MANUFACTURE:** JDM_WTCN
>
>  ---- **PROD_DATE:** 20191216
>
>  ---- **SHIP_DATE:** 20191219
>
>  ---- **DO_NUM:** 8498124585
>
>  ---- **PO:** null
>
>  ---- **SHIP_QTY:** 2000
>
>  ---- **TRANSFER_DT:** 20191219175436
>
>  ---- **PARTS_SN_MAINPBA:** 79C06DA500006
>
>  ---- **PARTS_SN_SUBPBA:** null
>
>  ---- **PARTS_SN_BATTERY:** null
>
>  ---- **PARTS_SN_REAR:** null
>
>  ---- **PARTS_SN_LCD:** null
>
>  ---- **PARTS_SN_CAM_RR1:** null
>
>  ---- **PARTS_SN_CAM_RR2:** null
>
>  ---- **PARTS_SN_FINGERS:** null
>
>  ---- **PARTS_SN_TA:** null
>
>  ---- **MODEL_SN:** null
>
>  ---- **BUYER_SN:** null
>
>  ---- **RGCK:** null
>
>  ---- **APP_VERSION:** null
>
>  ---- **CSC_VERSION:** null
>
>  ---- **ICCID:** null
> * **Example Description**
>
>  This sample show how MES response to request edf file information

> **Example:**  request post test result
> * **Example Value | Schema**
>
>  -- **user:** sys
>
>  -- **password:** ******
>
>  -- **method:** MES_BA_WI6041
>
>  -- **methodparameter:**
>
>  ---- **state:** fail
>
>  -- **content:**
>
>  ---- **testresult:**
>
>  ------ **psn:** 79823AA3000LU
>
>  ------ **workordernumber:** 100000305427
>
>  ------ **testStationId:** 98
>
>  ------ **testStationName:** CheckStation
>
>  ------ **linename:** P0150
>
>  ------ **hostname:** WTDSK-006
>
>  ------ **testTime:** 13-11-2019 02:49:17
>
>  ------ **testModel:** S96116AA1_CKIN_GR1_INS
>
>  ------ **testWorkID:** 1
>
>  ------ **testVersion:** WriteNumber 11.48.0.0
>
>  ------ **Fixture:** 
>
>  ------ **FixtureSN:** 1
>
>  ------ **Powersupply:** 
>
>  ------ **PowersupplySN:** 
>
>  ------ **Instrument:** 
>
>  ------ **InstrumentSN:** 
>
>  ------ **Operator:** 
>
>  ---- **snresult:**
>
>  ------ **psn:** 
>
>  ------ **FpSN:** 
>
>  ------ **CustSN:** 
>
>  ------ **Imei_1:** 
>
>  ------ **Imei_2:** 
>
>  ------ **Imei_3:** 
>
>  ------ **Imei_4:** 
>
>  ------ **MEID:** 
>
>  ------ **LanMac:** 
>
>  ------ **WifiMac:** 
>
>  ------ **Wifi2Mac:** 
>
>  ------ **BtMac:** 
>
>  ------ **NetCode:** 
>
>  ------ **ChipId:** 
>
>  ---- **itemresult:**
>
>  ------ ***testCondition:** 
>
>  ------ **testItem:** Enter Test Mode
>
>  ------ **testResult:** -
>
>  ------ **testUpperLimit:** -
>
>  ------ **testLowerLimit:** -
>
>  ------ **testFlag:** pass
>
>  ------ ***testCondition:** 
>
>  ------ **testItem:** Pcb Sn = 79823AA3000LU
>
>  ------ **testResult:** -
>
>  ------ **testUpperLimit:** -
>
>  ------ **testLowerLimit:** -
>
>  ------ **testFlag:** pass
>
>  ------ ***testCondition:** 
>
>  ------ **testItem:** Check Barcode Routing
>
>  ------ **testResult:** -
>
>  ------ **testUpperLimit:** -
>
>  ------ **testLowerLimit:** -
>
>  ------ **testFlag:** fail
>
>  ------ ***testCondition:** 
>
>  ------ **testItem:** Check Pcb Sn And Imei
>
>  ------ **testResult:** -
>
>  ------ **testUpperLimit:** -
>
>  ------ **testLowerLimit:** -
>
>  ------ **testFlag:** fail
>
>  ---- **specialitem:** []
>
>  ---- **errcode:** 52801
>
>  ---- **errmessage:** Enter test mode failed.
> * **Example Description**
>
>  This sample show how station post test result to MES

>
> **Response**
>
> * **Code** 200 || **Description** OK || **Links** No Links
>
> * **Media Type** application/json
>
> * **Example** response test result
>
> * **Example Value | Schema**
>
>  -- **state:** true
>
>  -- **content:** true
>
> * **Example Description**
>
>  This sample show how MES response to post test result to station

> **Other Responses**
> * **Code** 401 || **Description** Unauthorized || **Links** No Links
>
> * **Code** 403 || **Description** Forbidden || **Links** No Links
>
> * **Code** 404 || **Description** Not Found || **Links** No Links

#### Schemas
> **Call**
> - **user**
>    - string
>    - System user
> * **password**
>    - string
>    - Password user
> * **method**
>    - string
>    - MES Function name to call
> * **methodparameter**
>    - string
>    - method information to use in function call