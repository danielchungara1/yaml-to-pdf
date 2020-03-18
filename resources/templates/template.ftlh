# ${info.title}
${info.description}
**Servers**
<#list servers as server>
   * ${server.url}
</#list>

<#list tags as tag>
   **${tag.name}** ${tag.description}
</#list>

#### POST /device ${paths["/device"].post.summary}
> **Parameters**
>
> No parameters

> **Request Body**  ${paths["/device"].post.requestBody.required?string('required', 'no required')}
>
> application/json

> **Example:**  ${paths["/device"].post.requestBody.content["application/json"].examples["case 1"].summary}
> * **Example Value | Schema**
>
>  -- **user:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 1"].value.user}
>
>  -- **password:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 1"].value.password}
>
>  -- **method:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 1"].value.method}
>
>  -- **methodparameter:**
>
>  ---- **BarCode:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 1"].value.methodparameter.BarCode}
> * **Example Description**
>
>  ${paths["/device"].post.requestBody.content["application/json"].examples["case 1"].description}

>
> **Response**
>
> * **Code** 200 || **Description** ${paths["/device"].post.responses["200"].description} || **Links** No Links
>
> * **Media Type** application/json
>
> * **Example** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].summary}
>
> * **Example Value | Schema**
>
>  -- **state:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.state}
>
>  -- **content:**
>
>  ---- **SKU:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.SKU}
>
>  ---- **IMEI:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.IMEI?long?c}
>
>  ---- **PROD_SN:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PROD_SN!'null'!'null'}
>
>  ---- **SLAVE_IMEI:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.SLAVE_IMEI!'null'}
>
>  ---- **SW_VERSION:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.SW_VERSION!'null'}
>
>  ---- **HW_VERSION:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.HW_VERSION!'null'}
>
>  ---- **BT_ADDR:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.BT_ADDR!'null'}
>
>  ---- **MAC_ADDR:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.MAC_ADDR!'null'}
>
>  ---- **NCK:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.NCK!'null'}
>
>  ---- **MCK:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.MCK!'null'}
>
>  ---- **UN_NUM:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.UN_NUM!'null'}
>
>  ---- **PACK_ID:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PACK_ID!'null'}
>
>  ---- **BOX_ID:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.BOX_ID!'null'}
>
>  ---- **PALLET_ID:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PALLET_ID!'null'}
>
>  ---- **MANUFACTURE:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.MANUFACTURE!'null'}
>
>  ---- **PROD_DATE:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PROD_DATE?long?c}
>
>  ---- **SHIP_DATE:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.SHIP_DATE?long?c}
>
>  ---- **DO_NUM:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.DO_NUM?long?c}
>
>  ---- **PO:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PO!'null'}
>
>  ---- **SHIP_QTY:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.SHIP_QTY?long?c}
>
>  ---- **TRANSFER_DT:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.TRANSFER_DT?long?c}
>
>  ---- **PARTS_SN_MAINPBA:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_MAINPBA!'null'}
>
>  ---- **PARTS_SN_SUBPBA:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_SUBPBA!'null'}
>
>  ---- **PARTS_SN_BATTERY:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_BATTERY!'null'}
>
>  ---- **PARTS_SN_REAR:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_REAR!'null'}
>
>  ---- **PARTS_SN_LCD:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_LCD!'null'}
>
>  ---- **PARTS_SN_CAM_RR1:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_CAM_RR1!'null'}
>
>  ---- **PARTS_SN_CAM_RR2:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_CAM_RR2!'null'}
>
>  ---- **PARTS_SN_FINGERS:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_FINGERS!'null'}
>
>  ---- **PARTS_SN_TA:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.PARTS_SN_TA!'null'}
>
>  ---- **MODEL_SN:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.MODEL_SN!'null'}
>
>  ---- **BUYER_SN:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.BUYER_SN!'null'}
>
>  ---- **RGCK:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.RGCK!'null'}
>
>  ---- **APP_VERSION:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.APP_VERSION!'null'}
>
>  ---- **CSC_VERSION:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.CSC_VERSION!'null'}
>
>  ---- **ICCID:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].value.content.ICCID!'null'}
> * **Example Description**
>
>  ${paths["/device"].post.responses["200"].content["application/json"].examples["case 1"].description}

> **Example:**  request ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].summary}
> * **Example Value | Schema**
>
>  -- **user:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.user}
>
>  -- **password:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.password}
>
>  -- **method:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.method}
>
>  -- **methodparameter:**
>
>  ---- **state:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.state}
>
>  -- **content:**
>
>  ---- **testresult:**
>
>  ------ **psn:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.psn!'null'}
>
>  ------ **workordernumber:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.workordernumber!'null'}
>
>  ------ **testStationId:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.testStationId!'null'}
>
>  ------ **testStationName:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.testStationName!'null'}
>
>  ------ **linename:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.linename!'null'}
>
>  ------ **hostname:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.hostname!'null'}
>
>  ------ **testTime:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.testTime!'null'}
>
>  ------ **testModel:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.testModel!'null'}
>
>  ------ **testWorkID:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.testWorkID!'null'}
>
>  ------ **testVersion:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.testVersion!'null'}
>
>  ------ **Fixture:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.Fixture!'null'}
>
>  ------ **FixtureSN:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.FixtureSN!'null'}
>
>  ------ **Powersupply:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.Powersupply!'null'}
>
>  ------ **PowersupplySN:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.PowersupplySN!'null'}
>
>  ------ **Instrument:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.Instrument!'null'}
>
>  ------ **InstrumentSN:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.InstrumentSN!'null'}
>
>  ------ **Operator:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.testresult.Operator!'null'}
>
>  ---- **snresult:**
>
>  ------ **psn:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.psn!'null'}
>
>  ------ **FpSN:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.FpSN!'null'}
>
>  ------ **CustSN:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.CustSN!'null'}
>
>  ------ **Imei_1:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.Imei_1!'null'}
>
>  ------ **Imei_2:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.Imei_2!'null'}
>
>  ------ **Imei_3:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.Imei_3!'null'}
>
>  ------ **Imei_4:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.Imei_4!'null'}
>
>  ------ **MEID:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.MEID!'null'}
>
>  ------ **LanMac:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.LanMac!'null'}
>
>  ------ **WifiMac:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.WifiMac!'null'}
>
>  ------ **Wifi2Mac:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.Wifi2Mac!'null'}
>
>  ------ **BtMac:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.BtMac!'null'}
>
>  ------ **NetCode:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.NetCode!'null'}
>
>  ------ **ChipId:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.snresult.ChipId!'null'}
>
>  ---- **itemresult:**
<#list paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.content.itemresult as result>
>
>  ------ ***testCondition:** ${result.testCondition}
>
>  ------ **testItem:** ${result.testItem}
>
>  ------ **testResult:** ${result.testResult}
>
>  ------ **testUpperLimit:** ${result.testUpperLimit}
>
>  ------ **testLowerLimit:** ${result.testLowerLimit}
>
>  ------ **testFlag:** ${result.testFlag}
</#list>
>
>  ---- **specialitem:** []
>
>  ---- **errcode:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.errcode}
>
>  ---- **errmessage:** ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].value.methodparameter.errmessage}
> * **Example Description**
>
>  ${paths["/device"].post.requestBody.content["application/json"].examples["case 2"].description}

>
> **Response**
>
> * **Code** 200 || **Description** ${paths["/device"].post.responses["200"].description} || **Links** No Links
>
> * **Media Type** application/json
>
> * **Example** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 2"].summary}
>
> * **Example Value | Schema**
>
>  -- **state:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 2"].value.state}
>
>  -- **content:** ${paths["/device"].post.responses["200"].content["application/json"].examples["case 2"].value.content}
>
> * **Example Description**
>
>  ${paths["/device"].post.responses["200"].content["application/json"].examples["case 2"].description}

> **Other Responses**
> * **Code** 401 || **Description** ${paths["/device"].post.responses["401"].description} || **Links** No Links
>
> * **Code** 403 || **Description** ${paths["/device"].post.responses["403"].description} || **Links** No Links
>
> * **Code** 404 || **Description** ${paths["/device"].post.responses["404"].description} || **Links** No Links

#### Schemas
> **Call**
> - **user**
>    - ${components.schemas.Call.properties.user.type}
>    - ${components.schemas.Call.properties.user.description}
> * **password**
>    - ${components.schemas.Call.properties.password.type}
>    - ${components.schemas.Call.properties.password.description}
> * **method**
>    - ${components.schemas.Call.properties.method.type}
>    - ${components.schemas.Call.properties.method.description}
> * **methodparameter**
>    - ${components.schemas.Call.properties.methodparameter.type}
>    - ${components.schemas.Call.properties.methodparameter.description}