Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 979BD391A0
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Jun 2019 18:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t8ZjxSW5CnRevu+tVhJSbZ049LAYiaoDzw/cjUvJsT8=; b=eThLuK1NQ8VI26V/1JNfakMjp
	VWzymF0/jO89+Ajs2y39ilu9cN/PGeBii0cj5mScMYu7Fp25QFStCTxc14u//RpXk6HA/Ob6wyuw9
	WXzqt+CFHteS8mMjbFxFjxeSGtnCHNZLVLavxFf1ThCG8ZDOz8o2eVDVVpN0QOpftDr8a81PfCgd+
	AGQB6XT5K2OOA05uv9sX/VepCjY+yVjfmkUcAVQELmGwlrggfdPVwjAFeO4s8gXmGYLuIRsH7ThS5
	X3ZRfi0v96GZntexucm4cRF5nf+XGP3Asq3aEDF6Gbrh3OTEsocQGlAzkM75ZLloP8SGdwwf8KhmT
	d52T80jxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHQa-00019Q-Kz; Fri, 07 Jun 2019 16:09:16 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHQR-000188-0g
 for linux-mtd@lists.infradead.org; Fri, 07 Jun 2019 16:09:09 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x57Fsjxx014922; Fri, 7 Jun 2019 09:08:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=proofpoint;
 bh=R8pM7FT6Nv79r9r6AIxXWiYsUjl06gqkRZ6PYr/ro8c=;
 b=crRr1hNztYmMtOuvE8mXOe2vfGaDHHriqMhZVGZ7GcG0sXXE0rW6Fkmv57CVcffSbjvU
 RZIcslGJLDPT/6cFxZk94l5v2JmZRo2z5YTG461I5sx9xQEv7tGhHI7nthmYLCrzhvA9
 P9O2u3OMSx1yqsq8bLfXxSwGhlIfmC4ArljSgr40mOFBENtKEw2X3IlQbVJasp+g1KWK
 MUkKSTBUDDBWTR02flRHbKdzyX+CzVkUBM++i6Qdxwdgmc35jdE3ei0nFlTeu/peh1ma
 aSip4jFZMh9efzT75D4D3NSzl5jCKFvxXw4a0vIrYbdeCTkH+4n1wr6eind3tEcqURKD qg== 
Authentication-Results: cadence.com; spf=pass smtp.mailfrom=piotrs@cadence.com
Received: from nam03-by2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2050.outbound.protection.outlook.com [104.47.42.50])
 by mx0b-0014ca01.pphosted.com with ESMTP id 2sy5dd5kwk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 07 Jun 2019 09:08:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R8pM7FT6Nv79r9r6AIxXWiYsUjl06gqkRZ6PYr/ro8c=;
 b=QAqfN7P57Xy7Itlju3Uvz3g2I1H1S6Tipz8AmGSjUXkNY17j9Fyt+liMffAOH2y2p+LbU8/i/sTlAujCg3M0ObiaIqYUmLmFogbR4e4GKjPr/5xC+4H3lsTjTljNMuEe+lYseYkVPASH3v5ivqzXeRx4CJYQd5X1BdaE8bLmx5E=
Received: from DM5PR07CA0093.namprd07.prod.outlook.com (2603:10b6:4:ae::22) by
 BLUPR0701MB2052.namprd07.prod.outlook.com (2a01:111:e400:52f4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.14; Fri, 7 Jun
 2019 16:08:42 +0000
Received: from DM3NAM05FT058.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e51::208) by DM5PR07CA0093.outlook.office365.com
 (2603:10b6:4:ae::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.14 via Frontend
 Transport; Fri, 7 Jun 2019 16:08:42 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 158.140.1.28 as permitted sender)
Received: from sjmaillnx1.cadence.com (158.140.1.28) by
 DM3NAM05FT058.mail.protection.outlook.com (10.152.98.174) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1987.5 via Frontend Transport; Fri, 7 Jun 2019 16:08:41 +0000
Received: from mailsj6.global.cadence.com (mailsj6.cadence.com
 [158.140.32.112])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id x57G8c5l016652
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 7 Jun 2019 09:08:38 -0700
X-CrossPremisesHeadersFilteredBySendConnector: mailsj6.global.cadence.com
Received: from global.cadence.com (158.140.32.37) by
 mailsj6.global.cadence.com (158.140.32.112) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Jun 2019 09:08:35 -0700
Date: Fri, 7 Jun 2019 17:08:23 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: nand: Add Cadence NAND controller
 driver
Message-ID: <20190607160822.GA22242@global.cadence.com>
References: <20190219161406.4340-1-piotrs@cadence.com>
 <20190219161920.26602-1-piotrs@cadence.com>
 <20190222204052.GA17855@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190222204052.GA17855@bogus>
User-Agent: Mutt/1.5.20 (2009-12-10)
X-Originating-IP: [158.140.32.37]
X-ClientProxiedBy: mailsj7.global.cadence.com (158.140.32.114) To
 mailsj6.global.cadence.com (158.140.32.112)
X-OrganizationHeadersPreserved: mailsj6.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:158.140.1.28; IPV:CAL; SCL:-1; CTRY:US;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(136003)(39860400002)(2980300002)(36092001)(189003)(199004)(55016002)(5660300002)(70206006)(70586007)(446003)(8936002)(11346002)(336012)(426003)(33656002)(16586007)(58126008)(316002)(54906003)(486006)(7416002)(305945005)(7736002)(7636002)(1076003)(126002)(956004)(476003)(26005)(229853002)(23676004)(76130400001)(7696005)(2486003)(6916009)(478600001)(86362001)(246002)(50466002)(26826003)(67846002)(66066001)(356004)(6116002)(4326008)(3846002)(16526019)(186003)(53416004)(47776003)(6246003)(6286002)(8676002)(6666004)(386003)(76176011)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0701MB2052; H:sjmaillnx1.cadence.com; FPR:;
 SPF:SoftFail; LANG:en; PTR:corp.Cadence.COM; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7c134f93-4a28-45e5-a369-08d6eb626902
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BLUPR0701MB2052; 
X-MS-TrafficTypeDiagnostic: BLUPR0701MB2052:
X-Microsoft-Antispam-PRVS: <BLUPR0701MB2052BB60DC3A546E4D926329DD100@BLUPR0701MB2052.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0061C35778
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Uj+VxmwKeb/AHgpbZa+MDPkl5omdrZCvnRGEflnf7qzJmE+L/UuhuCmyKMk/+S0b/ohTI1J4ifS2nJ46VIPbOf9pybSpxrBrov28YTrtfGSvHTI6CZ/2nITvnriNSQpeaBe2yWzPvJHcz4iZC1y94FM8ds1g/LUUhJ4JVcxHSnl7WBqoDxcWu+NVkMhlJ/c1pTjIvtTnhrlaao978v8o6c89+eP3nxNAyLb/W/OTb0dYWyZBD0rum4WOnyfnMetZaWFCPLlc71DUy6zUZU9Raungwpx3tvFcIKMBLV4CyidKZ5+mcMpW+2eEriT21o0ig1tBnxx5Eoh9M3r/Z8UnVMq5A3RfRaBtpCsGe+sD9yXvPNVDwV+/fKjMnZmAeiSCX1gv+lVJwy44kubd9Y3E0fcNRswlJnBkMfVdqhcIgvo=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2019 16:08:41.4251 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c134f93-4a28-45e5-a369-08d6eb626902
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.28];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0701MB2052
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:spf.smktg.jp
 include:_spf.salesforce.com
 include:mktomail.com include:spf-0014ca01.pphosted.com
 include:spf.protection.outlook.com include:auth.msgapp.com
 include:spf.mandrillapp.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-07_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906070109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_090907_416927_2185E94E 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.86.201.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>, Richard
 Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 BrianNorris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Rob

Thanks for reviwing this.

The 02/22/2019 14:40, Rob Herring wrote:
>EXTERNAL MAIL
>
>
>On Tue, Feb 19, 2019 at 04:19:20PM +0000, Piotr Sroka wrote:
>> Signed-off-by: Piotr Sroka <piotrs@cadence.com>
>> ---
>> Changes for v2:
>> - remove chip dependends parameters from dts bindings
>> - add names for register ranges in dts bindings
>> - add generic bindings to describe NAND chip representation
>>   under the NAND controller node
>> ---
>>  .../bindings/mtd/cadence-nand-controller.txt       | 48 ++++++++++++++++++++++
>>  1 file changed, 48 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt b/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
>> new file mode 100644
>> index 000000000000..3d9b4decae24
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
>> @@ -0,0 +1,48 @@
>> +* Cadence NAND controller
>> +
>> +Required properties:
>> +  - compatible : "cdns,hpnfc"
>
>Only one version of IP or is that discoverable?
In general IP is configurable. There are a lot of configurations options.
Most features are checked in runtime base on controller registers.
Some of capabilities are not shared by registersn. But there is not sense to create
all possible configuration here. I think more compatible may appear if
sombody add here a SoC.

>
>> +  - reg : Contains two entries, each of which is a tuple consisting of a
>> +	  physical address and length. The first entry is the address and
>> +	  length of the controller register set. The second entry is the
>> +	  address and length of the Slave DMA data port.
>> +  - reg-names: should contain "cadence_reg" and "cadence_sdma"
>
>'cadence_' part is pointless.
>
>> +  - interrupts : The interrupt number.
>> +  - clocks: phandle of the controller core clock (nf_clk).
>> +  - Children nodes represent the available NAND chips.
>
>Need a blank line and remove the '-' as it's not a property.
>
>> +
>> +Required properties of NAND chips:
>> +  - reg: shall contain the native Chip Select ids from 0 to max supported by
>> +    the cadence nand flash controller
>> +
>> +Optional properties:
>
>For child nodes? If not move before child nodes.
>
>> +  - dmas: shall reference DMA channel associated to the NAND controller
>> +  - cdns,board-delay : Estimated Board delay. The value includes the total
>> +    round trip delay for the signals and is used for deciding on values
>> +    associated with data read capture. The example formula for SDR mode is
>> +    the following:
>> +    board_delay = RE#PAD_delay + PCB trace to device + PCB trace from device
>> +    + DQ PAD delay
>
>Units? Use unit suffix as defined in property-units.txt.
>
>> +
>> +See Documentation/devicetree/bindings/mtd/nand.txt for more details on
>> +generic bindings.
>> +
>> +Example:
>> +
>> +nand_controller: nand-controller @60000000 {
>
>space                              ^
>
>> +	  compatible = "cdns,hpnfc";
>> +	  reg = <0x60000000 0x10000>, <0x80000000 0x10000>;
>> +	  reg-names = "cadence_reg", "cadence_sdma";
>> +	  clocks = <&nf_clk>;
>> +	  cdns,board-delay = <4830>;
>> +	  interrupts = <2 0>;
>> +	  nand@0 {
>> +	      reg = <0>;
>> +	      label = "nand-1";
>> +	  };
>> +	  nand@1 {
>> +	      reg = <1>;
>> +	      label = "nand-2";
>> +	  };
>> +
>> +};
>> --
>> 2.15.0
>>

Thanks
Piotr Sroka

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
