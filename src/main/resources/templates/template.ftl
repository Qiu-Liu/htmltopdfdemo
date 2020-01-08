<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="with=device-width,initial-scale=1.0" />
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Title</title>
    <style>
		@page{
			size:A4 landscape;
		}
        .voucher-cover{
            font-size: 14px;
        }


        .wh {
            width: 30px;
        }
        tr {
            border-bottom: 1px solid #BFC6CD;
        }
        td {
            padding-top: 10px;
            padding-bottom: 10px;
            border-right: 1px solid #BFC6CD;
        }
        .sp {
            writing-mode: tb-rl;
            text-align: left;
            filter: progid:DXImageTransform.Microsoft.basicImage(rotation=3);
            height: 1px;
        }
        .wd160 {
            width: 160px;
        }
        .tc {
            text-align: center;
        }
        .leftborder{
            border-left: 5px solid #BFC6CD;
        }
        .topborder {
            border-top: 5px solid #BFC6CD;
        }
        .rightborder {
            border-right: 5px solid #BFC6CD;
        }
        .bottomborder {
            border-bottom: 5px solid #BFC6CD;
        }
        .pr10{
            padding-left: 10px;
        }
        .bgcolor{
            background: rgba(0,0,0,0.1);
        }
        .top-line{
            position: relative;
            text-align: center;
        }
        .title{
            display: inline-block;
            margin: 0 auto;
            border-bottom: 2px solid #BFC6CD;
            font-size: 24px;
            color: #333333;
            text-align: center;
        }
        .title>span{
            margin-bottom: 2px;
            border-bottom: 2px solid #BFC6CD;
            display: inline-block;
        }
        .top-line-image{
            width: 250px;
            position: absolute;
            top: 0;
            left: 0;
        }
        .bottom-line{
            padding-top: 10px;
            padding-bottom: 10px;
            text-align: right;
        }
        .card-cover{
            width: 1000px;
            height: 630px;
            padding: 35px;
            box-shadow: 0px 0px 20px #BFC6CD;
            margin: 0 auto;
        }

        .left{
            width: 50px;
            display: inline-block;
        }
        .circle{
            width: 30px;
            height: 30px;
            margin-top: 20px;
            border-radius: 50%;
            background: #FFFFFF;
            box-shadow: inset 0 1px 4px 0 rgba(88,99,119,0.68);
        }
        .right{
            width: 880px;
            display: inline-block;
        }
        table{
            width: 880px;
            border-collapse: collapse;
        }
        .line-title{
            margin-top: 17px;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .qrcode{
            width: 52px;
            position: absolute;
            right: 0px;
            bottom: -5px;
        }
    </style>
</head>
<body>
    <div class="voucher-cover">
        <div class="card-cover fsw">
            <div class="left">
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="circle"></div>
            </div>
            <div class="right">
                <div class="top-line">
                    <img class="top-line-image" src="" />
                    <div class="title">
                        <span>测试转PDF</span>
                    </div>
                    <img class="qrcode" src="${imageUrl}" />
                </div>
                <div class="bottom-line">
                    <span style="color: #3c6fa0;">凭证号： </span>
                    ${pingzheng}
                </div>
                <table>
                    <tobody>
                        <tr>
                           <td class="wh tc leftborder topborder" valign="middle" colspan="1" rowspan="3" style="word-break: break-all">
                               <span style="color: #3c6fa0">
                                   出<br/>让<br/>人
                               </span>
                           </td>
                            <td class="tc topborder" valign="middle" colspan="3" rowspan="1" style="word-break: break-all">
                               <span style="color: #3c6fa0">名称</span>
                                <br/>
                            </td>
                            <td class="topborder pr10" valign="middle" colspan="11" rowspan="1" style="word-break: break-all">
                                {buyerCustName}
                                <div style="clear: both" />
                                <br/>
                            </td>
                            <td class="wh tc leftborder topborder" valign="middle" colspan="1" rowspan="3" style="word-break: break-all">
                               <span style="color: #3c6fa0">
                                   受<br/>让<br/>人
                               </span>
                                <br/>
                            </td>
                            <td class="tc topborder" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                               <span style="color: #3c6fa0">名称</span>
                            </td>
                            <td class="topborder pr10  rightborder" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                {buyerCustName}
                                <br/>
                            </td>
                        </tr>
                        <tr>
                            <td class="tc" valign="middle" colspan="3" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">证件类型</span>
                                <br/>
                            </td>
                            <td class="pr10" valign="middle" colspan="11" rowspan="1" style="word-break: break-all">
                                {xxxxxxxxx}
                            </td>
                            <td class="tc" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">证件类型</span>
                                <br/>
                            </td>
                            <td class="pr10 rightborder" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                {xxxxxxxxx}
                            </td>
                        </tr>
                        <tr>
                            <td class="tc" valign="middle" colspan="3" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">证件类型</span>
                                <br/>
                            </td>
                            <td class="pr10" valign="middle" colspan="11" rowspan="1" style="word-break: break-all">
                                {xxxxxxxxx}
                            </td>
                            <td class="tc" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">证件类型</span>
                                <br/>
                            </td>
                            <td class="pr10 rightborder" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                {xxxxxxxxx}
                            </td>
                        </tr>
                        <tr>
                            <td class="wh tc leftborder" valign="middle" colspan="1" rowspan="2" style="word-break: break-all">
                                <span style="color:#3c6fa0;">
                                    融<br/>资<br/>金<br/>额
                                </span>
                                <br/>
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                千
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                百
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                十
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                亿
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                千
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                百
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                十
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                万
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                千
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                百
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                十
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                元
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                分
                            </td>
                            <td class="dw bgcolor" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                角
                            </td>
                            <td class="wd160 tc" valign="middle" colspan="2" rowspan="2" style="word-break: break-all">
                                <span style="color: #BFC6CD">人民币（大写）</span>
                            </td>
                            <td class="pr10 rightborder" valign="middle" colspan="1" rowspan="2" style="word-break: break-all">
                                {xxxxxxxxxxx}
                                <br/>
                            </td>
                        </tr>
                        <tr>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                            <td valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                1
                            </td>
                        </tr>
                        <tr>
                            <td class="tc leftborder" valign="middle" colspan="4" rowspan="1">
                                <span style="color: #3c6fa0">收款人</span>
                            </td>
                            <td class="pr10" valign="middle" colspan="11" rowspan="1">
                                11
                                <br/>
                            </td>
                            <td class="tc" valign="middle" colspan="2" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">收款账号</span>
                            </td>
                            <td class="pr10 rightborder" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                               {xxxxxxxxxxxx}
                            </td>
                        </tr>
                        <tr>
                            <td class="tc leftborder" valign="middle" colspan="4" rowspan="1">
                                <span style="color: #3c6fa0">融资利率</span>
                            </td>
                            <td class="pr10" valign="middle" colspan="11" rowspan="1">
                                11
                                <br/>
                            </td>
                            <td class="tc" valign="middle" colspan="2" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">利率信息</span>
                            </td>
                            <td class="pr10 rightborder" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                {xxxxxxxxxxxx}
                            </td>
                        </tr>
                        <tr>
                            <td class="tc leftborder" valign="middle" colspan="4" rowspan="1">
                                <span style="color: #3c6fa0">融资产品</span>
                            </td>
                            <td class="pr10" valign="middle" colspan="11" rowspan="1">
                                11
                                <br/>
                            </td>
                            <td class="tc" valign="middle" colspan="2" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">融资费用</span>
                            </td>
                            <td class="pr10 rightborder" valign="middle" colspan="1" rowspan="1" style="word-break: break-all">
                                {xxxxxxxxxxxx}
                            </td>
                        </tr>
                        <tr>
                            <td class="tc leftborder bottomborder" valign="middle" colspan="4" rowspan="2" style="word-break: break-all">
                                <span style="color: #3c6fa0">承诺付款人</span>
                                <br/>
                            </td>
                            <td class="pr10 bottomborder" valign="middle" colspan="11" rowspan="2" style="word-break: break-all">
                                {ssssssssssssss}
                                <br/>
                            </td>
                            <td class="tc" valign="middle" colspan="2" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">证件类型</span>
                            </td>
                            <td class="pr10 rightborder" valign="middle" style="word-break: break-all">
                                {xxxxxxxxxxxx}
                            </td>
                        </tr>
                        <tr>
                            <td class="tc bottomborder" valign="middle" colspan="2" rowspan="1" style="word-break: break-all">
                                <span style="color: #3c6fa0">证件号码</span>
                                <br/>
                            </td>
                            <td class="pr10 rightborder bottomborder" valign="middle"  style="word-break: break-all">
                                {xxxxxxxxxxxx}
                            </td>
                        </tr>
                    </tobody>
                </table>
                <div>
                    <div class="line-title" style="color: #3c6fa0">声明</div>
                </div>
                <div >
                    确认以下交易
                </div>
            </div>
        </div>
    </div>
</body>
</html>