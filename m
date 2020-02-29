Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AFB17474C
	for <lists+linux-mtd@lfdr.de>; Sat, 29 Feb 2020 15:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=id5427DRCQwI3C+Bg3i55hKb0ERrvM6ychACXdx2byk=; b=A3njE8HCLywjtU
	DAcZ/IBmMOQ7PfO2CFw5RjKvb64p2ZZlII3UF0krJ2tfrsKsofEHmNdg7j1AzcvoDhMZ2r8tyEM2R
	WOWt7dhR92DLEvUclahq1tYMAg43dtO55ldWiYRq9nV/EJ/JgAiaby7KHHRf1boqCZMUTJavLX8SF
	Q6Ko3fwZCoBZHQzPd/CX7e90IcTA7TypmIgf+bNd/YDT1adbJRlOeZ2yw8Z/lWvUAQldkzdGK/06W
	Sc9miPJGCEBax/l3Mxd1r0mmlY27DKU+k8m5wW8wysAT/MWs86DMiXPrjt9HyAvOEmJ3Vcai4UL4j
	Vaa7aJoUKkFI/lEchIRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j82yg-0005Q6-2X; Sat, 29 Feb 2020 14:20:26 +0000
Received: from mail-eopbgr150108.outbound.protection.outlook.com
 ([40.107.15.108] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j82yX-0005PW-HD
 for linux-mtd@lists.infradead.org; Sat, 29 Feb 2020 14:20:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ADvFIhNJ0l7mXb2LEwBlSdmOMkcrXE/v5oaHZxH9HJmTmiGWIXXmueSoMeQcvbF+lkqj9tpZotCeVwnbuTN+aKorNxVTX7/XbNq6b/X+o041qYWtsbVSyVSlfvddbuVMXAV1SgNqK1IT8M65jbY9TiLdOznFF88mNXR1m6h/pZS/O767VxnhlHuDWlw3rRfT6dNeB5sLyMOs0uj7O9O3aXghOV2KFNvtV78xIGlluuIzrobOjHk0Ukt7G/W41sKrSnTjMfl6LdM6ywyP/tlGRtOSiTcKiYeKR8A44IUzd2jjX870+PNMlxvP8ZrJCDY5XfD6TDhSKC0BpRdp3lpUwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0RKQrSiM5jkJo7n4pnWltlMjYD+dQ0lnpR094MlwHA=;
 b=Clb0Sgumov0H9sPJiMiLAUanpGE7bk2hTM5cuugbRNqcByQUvzaGjeQX3OfzjYbLhlI9p8jqXR2e/P1C0U+3HJHHI9ISI/xTMK06fiEyuvRibEV3Igqwv47xrm9lTnT8RKVVH5tAnX0ZkZZDMLaTr8B4pPVBRNp4gletXTFGIre/at6iis5FSQQSDteqe+SIdCMgdOwJrlpHdm3P9eFFnYF7yq9JAWosDdXLSdVQVz3rZLBXgAFtpMphUMADdS231GbRb8PuWC+0ZJpCFJa4jpVHX3/Qyxhj3yyDEmz0POHW5CmW1BEgdKcjAnZmt5WrQxP4HrXIYfqnL6auN/jHzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=exertus.fi; dmarc=pass action=none header.from=exertus.fi;
 dkim=pass header.d=exertus.fi; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ExertusOy.onmicrosoft.com; s=selector2-ExertusOy-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0RKQrSiM5jkJo7n4pnWltlMjYD+dQ0lnpR094MlwHA=;
 b=IZdneQAbBFXMT0PcSNvAwl+BcWpaAeC9pS4Wpm6ogV3EE3nD8He9sZSy4SulismffBoSzILbrcUy97w5vcjGaUJm7Q+iTq2e4OrmZrRNhXQzS63SbfWZZDnmeOVqvTEE8SDKzAN0+Q76yQxMJkC0u6DwXtPkfmom84c3H13dgRc=
Received: from HE1PR0902MB2138.eurprd09.prod.outlook.com (10.170.255.32) by
 HE1PR0902MB2204.eurprd09.prod.outlook.com (10.171.198.155) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Sat, 29 Feb 2020 14:20:10 +0000
Received: from HE1PR0902MB2138.eurprd09.prod.outlook.com
 ([fe80::a153:af9d:58af:b6eb]) by HE1PR0902MB2138.eurprd09.prod.outlook.com
 ([fe80::a153:af9d:58af:b6eb%6]) with mapi id 15.20.2772.018; Sat, 29 Feb 2020
 14:20:10 +0000
Received: from [10.3.1.192] (193.210.47.3) by
 HE1PR05CA0311.eurprd05.prod.outlook.com (2603:10a6:7:93::42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14 via Frontend Transport; Sat, 29 Feb 2020 14:20:10 +0000
From: Timo Ketola <Timo.Ketola@exertus.fi>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: Power cut leads to "corrupt empty space"
Thread-Topic: Power cut leads to "corrupt empty space"
Thread-Index: AQHV7W5w0ROHw32Dgk6RN8346II1lKgvAwqAgAAJioCAABpqAIAC+sEAgAAaFAA=
Date: Sat, 29 Feb 2020 14:20:10 +0000
Message-ID: <ceddefa5-3525-8649-3be1-f47f4047b401@exertus.fi>
References: <ee9d424c-8b89-c8f6-7b3b-1ab09371e04c@exertus.fi>
 <CAOMZO5BHW7r8aMT_7g91LpGem+WpP+PRKwnsfu9v7yn278pErQ@mail.gmail.com>
 <49a83666-2e08-833e-dc63-0fb820b5c6f3@exertus.fi>
 <CAOMZO5A0wCz6EUB_Qc+oS1UDLrBSLgAKEE0g8SYTDFq8AGLsVw@mail.gmail.com>
 <92909395-0b0b-da7f-a896-a6c1f11a678f@exertus.fi>
In-Reply-To: <92909395-0b0b-da7f-a896-a6c1f11a678f@exertus.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0311.eurprd05.prod.outlook.com
 (2603:10a6:7:93::42) To HE1PR0902MB2138.eurprd09.prod.outlook.com
 (2603:10a6:7:1e::32)
x-originating-ip: [193.210.47.3]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Timo.Ketola@exertus.fi; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68f1cb58-b12a-49d3-cd66-08d7bd227be9
x-ms-traffictypediagnostic: HE1PR0902MB2204:
x-microsoft-antispam-prvs: <HE1PR0902MB2204951220A1F664BA33006F8AE90@HE1PR0902MB2204.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03283976A6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(39830400003)(376002)(366004)(346002)(199004)(189003)(71200400001)(26005)(6916009)(508600001)(8676002)(316002)(6486002)(52116002)(54906003)(81156014)(16576012)(81166006)(31686004)(44832011)(2906002)(2616005)(66446008)(956004)(66556008)(16526019)(186003)(64756008)(36756003)(4326008)(66476007)(66946007)(8936002)(31696002)(5660300002)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0902MB2204;
 H:HE1PR0902MB2138.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: exertus.fi does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: srPeEC20YrzfrWFEuU2+Alxj5h2U7OWb9iczd02QFbaWCAVHDUJpD6wrLOkv+CKWa8mWFzjHlhF7ZiYx3WNIWo86jFIH5YYGmuFBdE+iY6x+GxP7y1rkbmnVO5UsvAeyAGpHcxasZqhOksuxgfn6XR3YsSdYp+EjbMa2PXiWHhWRe7X/wr12f3uxl845KZGBFIHHdGULYOTFWiTm6oPHCmBlbNdcE0I6slvP/4yrEU+IpHG0daxus/qNyqF+ntjYqkWSsmsuRY+IBbzmiHvtYRiDYpMauUZYTGG++cmiU9ru7CVuoPy+sCOipOT86+jnC6poqhlAL2qMoDuhG0s1vm0BLVnCZIrg/2Z9vF+74cM8nmkZm3ei1ABlAjxpW86lS/iQ6PecWgg5RUyQhSHWGdl7QHqQIwP7emjXnEl4qJy3IfZ2YtsWoWOUDP4dzKtL
x-ms-exchange-antispam-messagedata: 5kX4GvfW0bM8JYmdDVOOD+8kPkJWOHM2Nb0q0NxHKwS3fc4nBNldap4ETuHD9e2OVddGD5wYdxJTEPEaZcpGpaMDNFVEBAOH2bF96H18lXwOSB5Yr/2DYDtikEO8HPdywuUlMQGshRoZOWjt/8Va6A==
x-ms-exchange-transport-forked: True
Content-ID: <30FF6AC18B399E4C9BD7BE85EE0F519C@eurprd09.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: exertus.fi
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f1cb58-b12a-49d3-cd66-08d7bd227be9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2020 14:20:10.4077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ff5ff20-bcb9-4615-b2a6-3bbeefd7b8e3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AMMldKKoGuIVplQzclb1a2P7+hSCQsmsoeIfREtmq1rfCQ6ejn3VIFKXPO8f0iIQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0902MB2204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_062017_618738_B4FEB44A 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.108 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Han Xu <han.xu@nxp.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 29.2.2020 14.46, Timo Ketola wrote:
> I had to put 'nand-ecc-strength = <8>;
> nand-ecc-step-size = <512>;' into the device tree

Actually, I tried these but they didn't help. They are not there any more.

> and make this change
> in drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c:
> 
>> @@ -507,11 +507,11 @@ static int common_nfc_set_geometry(struct gpmi_nand_data *this)

That was needed.

> Still, it seems to erase correct blocks when trying to write BBTs.

This might not be true

>> Transfer from/to chip 1, pio[0] 930006, naddr 5, addr 00 00 C0 FF 07

I tried the same in my v4.9 kernel and saw very (exactly?) similar
transactions and it works:

> Transfer from/to chip 0, pio[0] 830006, len 6, cmd 00 00 00 C0 FF 07
> Transfer from/to chip 0, pio[0] 830001, len 1, cmd 30
> Transfer from/to chip 1, pio[0] 930006, len 6, cmd 00 00 00 C0 FF 07
> Transfer from/to chip 1, pio[0] 930001, len 1, cmd 30
> Bad block table found at page 524224, version 0x01
> Bad block table found at page 1048512, version 0x01

--

Timo
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
