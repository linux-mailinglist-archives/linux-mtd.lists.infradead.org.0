Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935261B10A2
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Apr 2020 17:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wv78B/fhcqZGNBGKEK/GN1QXQJ5giW2R5J+v0Jead9Y=; b=RtiUZ5DHv3+k2o
	JNEovxncYCXSRJjWcUDkOuskoulzPRSUYltLzYlUEoJicO3kLB3fP0laAl1UZ6slPHOGhH39XY8os
	fFodAmbX1QTTPUpoBRv17eBBkx3chrhReTccI1NOLZEBc6jfsJFX6OXP+shgViGDrZI2G3dMDHMTN
	Znh0RQ4EHSaFQRd0uANB7eD1keQkl4z0KyY0jCuN642kOko9cO+B2GTBmQhDda0FdS8WhvTFzP3GV
	CQSa4+HeX3ZJi86gPnyKltBKrNHDcM4suIuztYmJhkMCxMJzBX2ktYYnsbP7iBshDtvrGzTIbE/1P
	gn48c5R+TwSDh/mSHKAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYco-0004tG-SL; Mon, 20 Apr 2020 15:46:22 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYcd-0004sj-LX
 for linux-mtd@lists.infradead.org; Mon, 20 Apr 2020 15:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587397571; x=1618933571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IeixYrnq8WBuQaD8WkLO6TuYgYWiEAIkJmmt0/8ojTs=;
 b=CaeLnZDJQJlVrNT3TTBRXTp81aAR7Wo1s0Fbkw2TzZx17no2z9hN/IIg
 eu8PoJDvaV7LTM1xE7aImKL14pnbJTtDAAhzCRFlblgnQZUPeXSUgW6v4
 9fTQi8BT/RQ2vhLO+lZ1N5E9OqmQqgkzuJkIlSNoRxHGxzt3J4VmbIpAp
 NkLsSpb1XDJWDM4cS8/RVjuF+0wTW1IArIM16JLoL3OAeu4Uoec1UDtb3
 l1xwoBZ3pdIeGeYt99F3MsXymK1CK+K6tWQQTJHswC5q52zyA0fGBJQnu
 0Ov6mjfypD8orM9+cUtDxQysriRyZzd1v+vLWNS15nuMI1Vv/ajuAidYf Q==;
IronPort-SDR: mGQBMKhE8bVolKRXywiDcqOrWpP7vtGf2LSwmP63YSrZ/z66q9KdH9U2Ue9/AFjdZsSW1y+SUy
 63sYWGnw8fTa3H/ep665itUAP8xBgQHsMoqV3G/aGDmFFSNVSpCfzpeCRVfqYLgXosE0QYzQmg
 3qsX12CZokt8UaaVNUH7Nod0DvXPzEOWi3FHLwdzwEHnXT8z+9VZJ/ke8ej1qmqgvGjsApwp8n
 3xsONaPFiu5IRLdH4fyYDPQsvYE0YIhhFQ3VbkecHESC+xN+j3/FhaLgHGLJf/XM1T7jAEEI6K
 3Pg=
X-IronPort-AV: E=Sophos;i="5.72,407,1580799600"; d="scan'208";a="73916794"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 08:46:03 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 08:46:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 20 Apr 2020 08:46:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L9qgvNAE9OWsPTuTklF4GHKeEp5o+aqn8yCLXQEQ+SV2feUJmA0qjVu0nsqpiPv/flBNRfJyqy22dmn3qdgt6/82moaZe50m/ALJ4nUHYVt2eLyHxOsmYXQyesCChltKPrbDIr00Tzm4dRzqm4S7U1smTOQoQWu1QLw1NBZcIjlGV565hWoJO4G2dB5cxCyc6hhcMnsSDWUaYB/BRJoHh8pof1nFfG1PGoHztFN9/isoYaWttobCfBmqL31IR/ZjSDZ8JGP6xoIa/E3O/EHwacN0SHV26tNRiTz+AHqUYy4QdioH5daoVc+CZmmJtt5AmUVPRVPRnAvtYX0uvjm96Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P84WZnxdce9MQKhpjBP5O9EyHoER9WVXIe3XM6UMtbI=;
 b=X9KsxYOnwL60JpvguUr3eewF9MiDCkZ8IfZ4ZWQFULPGMH6lWmFC42JCQZ7Urgy2TD55v9cF0DKvA/bizmOUj/c9vQWvF3lOAiWFKsTSaN/QJ2RzHFiNfEdWGF11CaFlLVLAhqT1lP83NoYBaRBGpNnkJY5LN+vQIzqX9DqNfjsBCaJChMt7mX6l2u7b8vdmyNor+6pQ0mT2vPrDZH7rmYRXP+ql8gQUOBF8e/wWULt6VyWFKJLlomb02LhwBkGqKfA6bySKml9U+1CfB1pJ5iAQd1dLfu9IgX9uFbTL+zuYN6+5OVNfbTMbhOTI2C52HRqMgubz4gQahtDiQcqTlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P84WZnxdce9MQKhpjBP5O9EyHoER9WVXIe3XM6UMtbI=;
 b=J1REPUv5+XEcIX6gT8fnLnYawKeBc7v3HaAvMXLrQMZSh+pVqaHZgVEb/a7jVUkKtbkXJZE6Gxq3ZmtR8ECg8mkArKDC0H2TbGOeCriSIUCQRUneIXgBAreN8/v9Wcb/ngh7KBtcbWPrUi76w+R2+i87u517DZo/C7xBhTzSAV4=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 15:46:00 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 15:45:59 +0000
From: <Tudor.Ambarus@microchip.com>
To: <danielwa@cisco.com>
Subject: Re: [PATCH] mtd: spi-nor: Add 4B_OPCODES flag to n25q256a
Thread-Topic: [PATCH] mtd: spi-nor: Add 4B_OPCODES flag to n25q256a
Thread-Index: AQHWFyrJEeAl1Y63FkSdbq93yQPoxg==
Date: Mon, 20 Apr 2020 15:45:59 +0000
Message-ID: <12178429.kzmL6e4XO6@192.168.0.120>
References: <20200417174620.16420-1-danielwa@cisco.com>
In-Reply-To: <20200417174620.16420-1-danielwa@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a1e47db-3ea7-4456-9c8e-08d7e541ec79
x-ms-traffictypediagnostic: BY5PR11MB4194:
x-microsoft-antispam-prvs: <BY5PR11MB41942B8E643FF2C9330D28D7F0D40@BY5PR11MB4194.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(346002)(376002)(366004)(396003)(39860400002)(186003)(8936002)(54906003)(316002)(4326008)(6506007)(53546011)(2906002)(76116006)(6916009)(91956017)(26005)(14286002)(5660300002)(86362001)(8676002)(71200400001)(478600001)(6486002)(66476007)(81156014)(66946007)(9686003)(6512007)(66446008)(64756008)(66556008)(39026012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V6oHxLfRo0Y0wxilN8hRjzjQm3iqI1EfXjDU0APTx5l1lfJlH4ljWnxOrjS8KDt2jgYMfkJq5SJddWNK+PDMkvwrvu5qdlu8qfRSrbNezvmCUXGcX30aS4FkRJynszESutseLgFHh4Z8Jvon5B+a2I5gn9pj7qDnYcdnCEK0CXl7GivOLKJHIBG2pPpp4Rc5ZSOW3qAfpvHxH7i3UFgrHo4A90un3PoX6uUNFIkC63siE/rT5dR5YeMcnIQL91x4Q9tqFHxZA4i3f12sPfCN0GaPG3O8eSdheMXoEiW1m6q2XjiM/7Qp6ndgW99ZjZAZliyQ3kM12mpU28kUNsRQWjFjepxIxKdeB0kb2+V9smcVyvgh7R7bhZpwLe0nXrwMAE72NSTPATYJGvBSLXYdaNTOlBfWjB2WRjEC9PUqJLMw0s7OKWUkPcHz71m8FEeGnxvNnmcLhNtub8H6w5J2v/Hhbivsi/ozqKMla1Z1qFvzuzQCCirbWMVkiRwNoZRk
x-ms-exchange-antispam-messagedata: Raz3Ec11Ui3nauPWLK2KcjyMbx2FQ637lseDaRoE1ShEpZEBVYgJLN+n3X2nLFC3NsE7+ABxN5soZfyM579r3erkelFbNO3zuCCsiuUCvsNFo3CLa3ANAHFkUm8jF48bx34XbazYAn9/YY+BM7xdcg==
x-ms-exchange-transport-forked: True
Content-ID: <FC97DAEC90706F478E1DDCA65DE4135E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a1e47db-3ea7-4456-9c8e-08d7e541ec79
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 15:45:59.7853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qb7OpoJykMzv08Ugjdi5wpA3XwztgoOnUVswVWue+i2pRvkIpE+XfyTj+2JATTSVH167HRg7cZ8HDVBckcCR8E41XLJyIRIUfdqwc+N00AA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_084611_714452_8CD6A65E 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vigneshr@ti.com, richard@nod.at, xe-linux-external@cisco.com,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi, Daniel,

On Friday, April 17, 2020 8:46:19 PM EEST Daniel Walker wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> The n25q256a supports 4-byte opcodes so lets add the flag.

This is not true for all the n25q256a flashes. SPINOR_OP_PP_4B, 
SPINOR_OP_BE_4K_4B and SPINOR_OP_SE_4B are valid just for the part numbers 
N25Q256A83ESF40x, N25Q256A83E1240x, and N25Q256A83ESFA0F.

You need to differentiate between the aforementioned flashes and the rest in 
the n25q256a, in order to add the 4-byte opcodes flag.

Cheers,
ta

> Tested on Cisco IoT platform hardware using Marvell A7040 SoC.
> 
> This patch was base on one from Guo Yi <yi.guo@cavium.com>.
> 
> Cc: xe-linux-external@cisco.com
> Signed-off-by: Daniel Walker <danielwa@cisco.com>
> ---
>  drivers/mtd/spi-nor/micron-st.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/micron-st.c
> b/drivers/mtd/spi-nor/micron-st.c index 6c034b9718e2..471fe2bc2ba4 100644
> --- a/drivers/mtd/spi-nor/micron-st.c
> +++ b/drivers/mtd/spi-nor/micron-st.c
> @@ -37,7 +37,7 @@ static const struct flash_info st_parts[] = {
>                                SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
>         { "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
>                               USE_FSR | SPI_NOR_DUAL_READ |
> -                             SPI_NOR_QUAD_READ) },
> +                             SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
>         { "mt25qu256a",  INFO6(0x20bb19, 0x104400, 64 * 1024,  512,
>                                SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
>                                SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
> --
> 2.17.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
