Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF1D141CB7
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Jan 2020 08:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXlo5SL+NjpKj4/mQ4xJ61Z5xewqB8vWhDbyGRkyj6k=; b=RrzzV5BxB5t6qe
	2epi0Ttzi9oc3loc/DEChMB+oGzSjgtxcuNbdsX9Ub4lDXaFJ7aQBq2QTf/Bx+l/52OW4vsuA08k8
	DUZ4HBamkCEb/CbB1vHr9fmeVBbndjVXd4Z50IvIzH/xYk6QLGprinmFzcrRDXV8ViaFPdBapvIbn
	un6BXi45wNcrxVc6Kl+PgpTXEevqp+zxJ1EStiksB4VDIOwCGIFz/uW5WpPKnOawRnRsUe+NregTA
	WV0kE7umxrNmTKWH0P29Et+fkU/Hobg4ao1x3CYDvafKSGqwrSsMDofluaGjreXp1ytsNN6esMGGz
	HeMyW5njHiXUgtXNlOtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it4ml-0006tX-2b; Sun, 19 Jan 2020 07:14:15 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it4mY-0006sh-F4
 for linux-mtd@lists.infradead.org; Sun, 19 Jan 2020 07:14:05 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: x8DbnDvsNTquR0e2BCvVFD6M1f4S3QGD+Yg8AHk6r4y8hyeOZMRvIsDt93xphVVtBLR4+nEYnK
 sDjApQ5viL6DuilsbKFTPLYPfokbhxqUzHrPuDb/fsAorof5HT1P+ZDhkuzPLmwRO9e7qcLxWZ
 kKT/OP4RvOO+vCntnE27eVntTuuBVDR8ZFzh7bHaLCOrp8VK/3GJHSBiZnmx72YkLP8oJk9CT5
 7LrLzWBaiGqX9eVSWI8Bo9moVJH9/nL+6yl3dCFEjGPKtMXxifdWVnM57mic3FuE48saA05Rg/
 aH0=
X-IronPort-AV: E=Sophos;i="5.70,337,1574146800"; d="scan'208";a="61501712"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jan 2020 00:13:58 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 19 Jan 2020 00:13:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 19 Jan 2020 00:13:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JBLezzuKgNpyqjtXu5BD0kO6/WjUYlDwt2sNtaqLrIlR7wtDCAFhSNWUySb2WvMak7zjoCLii8VbmXGjaGFeqTnNjTCwAxv3UIpTPyTiKuFIJg701NdU+oh5NUFXSOJWrLOw/kurRn7EIlbmPybNDPE+lP6JpqGfSefQiFmbhSiVpOkdJDzbsbLvS/tSw00tHWQvSlKWD7BoceFJ3KutXXF8mItKb2Mg+h8+JfnzcAOe+5vWgDsHNC3iFkYwaa4VKjhqoyigTG+fg1IFVrB9ZP55+k4iYfuYnmUIgvVdvHQjZDliHJbymtY/qNNHGsp56YJMwS1ICfC9oqbBf1ZKQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9E8qYiRT2kka4zgpaVPmZf1kxtAlvPWL4XJOKu9ADyg=;
 b=hmE5xyFZHFXvpk+U5hZokq78tX51HQdJCQ5s/xZ/E4qt6Ncmeiyej7JapGHPgFJ5o9wYw53a3FzT50kcnmTrYWsCi16VcQ5gdTDeiRHYS1Iz9x7fXSbXOPccuPPOIGH0FschFnFIxaUozerAbQ3dcmRrcw8GTDglX3+wq55h5WFCSBPsGqhPGGgOrYxAUiClvee2pJLfkTmiibJZN9N93dMjv1gFmSAfUfMaAupYCiDHl691NZDAHg70BH+torRROl0bOxeoyuUyBEHy932GvKlHDw4s4UCESX1vb0BRMBmq36jtoy7L8ERQbLdR++mfOa8bths0e91V2wtTVig6qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9E8qYiRT2kka4zgpaVPmZf1kxtAlvPWL4XJOKu9ADyg=;
 b=fCG/1hrHRf1E2kcDkb0CrvYm6t+Kqf4FQcvLw78j9Uv8KaF+115n/8BdCVzUGGaab0ZfR2r4Zj/YNIECj2A2dvNn7Z94elBY2PDM8pn1lSPUMskXsdTmQ7/CfWQEOdWKMaKsg/VP8oAWNtkRlpw4z8ykBnAx4qOZq8zC9ZoYrnw=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3629.namprd11.prod.outlook.com (20.178.252.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.21; Sun, 19 Jan 2020 07:13:49 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2644.023; Sun, 19 Jan 2020
 07:13:48 +0000
From: <Tudor.Ambarus@microchip.com>
To: <michael@walle.cc>
Subject: Re: [PATCH] mtd: spi-nor: Add support for w25qNNjwim
Thread-Topic: [PATCH] mtd: spi-nor: Add support for w25qNNjwim
Thread-Index: AQHVzpf32dqEzZAPf0S4HyMwJjELNQ==
Date: Sun, 19 Jan 2020 07:13:48 +0000
Message-ID: <8021667.67K7kvUAe6@192.168.0.113>
References: <20200103223423.14025-1-michael@walle.cc>
 <2dffc658f21da502dff8c5721ec1b0a7@walle.cc>
 <8ce5f803c9a59a1ebd55ae287fa2e6a9@walle.cc>
In-Reply-To: <8ce5f803c9a59a1ebd55ae287fa2e6a9@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd8dd2e1-14c0-4cdd-3297-08d79caf2159
x-ms-traffictypediagnostic: MN2PR11MB3629:
x-microsoft-antispam-prvs: <MN2PR11MB362901437BC7C77D6428CB76F0330@MN2PR11MB3629.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0287BBA78D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(376002)(346002)(396003)(39850400004)(199004)(189003)(26005)(6486002)(5660300002)(6916009)(186003)(71200400001)(14286002)(316002)(2906002)(54906003)(66556008)(4326008)(9686003)(6512007)(66446008)(64756008)(86362001)(66946007)(8936002)(66476007)(53546011)(81156014)(6506007)(91956017)(478600001)(81166006)(76116006)(8676002)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3629;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hRZY90gz77leaaMDZYygXtVuOA/CtaTDgE4xce6o7/YObHMkVGNOS6X4DJbAWszGokyX5lfsqQYx4jJ8qAyq1eiPqSrbWdrmcABrGNti1ZchWIlGukDh8er393g+RkkttXOdlJVboCqqHuZa7jUquY0Hfkxh/fBpxAK7BvYwLZ2y3N2AYVZXpXookP1ZTiZ2VYNoQ2kka18GYzzVWBo+9Nj8NOU24ugx0gx1w2y5oMZAIzZzigrgseFT7YqIkDGRarmOlkGUADRfJk4o6TCB3mcgpXJxHeiFj5SOwCvimuwEBFFgyC6Ef2j3+cmt8BTUMPg2kI6+jSfy/ZmDsMkjehkCQT+ToW4F3otte6e7HDE+lZO1jgkFY/SdXWT+4GKp8ED3FhvB9GTXh66CcdN/+rE5VK7Fe9tBmlwXt7GtmeQyCqp8dVe79dv/tovqSoeEodqwpk+1N/BseAkcaD54vZcfDt+pczzDVFw8KOXnUtgi3JSQeeE1c+y6IoRl+UJi
x-ms-exchange-transport-forked: True
Content-ID: <1077114645ABDB4B8AF75F2097BDC4A6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cd8dd2e1-14c0-4cdd-3297-08d79caf2159
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2020 07:13:48.7658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I2/1O0cdyWRUAz/pp/4FfbcdtyGPPTv+lXw9SneL+o7ipAiTfvRUIXHgr8f4tZ7K4vxVo488S1gW1beGHQUAI3XvXXiYDY0c90+GWbOvPbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_231402_598876_EDDD98DE 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: richard@nod.at, miquel.raynal@bootlin.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Monday, January 13, 2020 3:15:15 PM EET Michael Walle wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> Hi Tudor,

Hi, Michael,
> 
> Am 2020-01-13 11:07, schrieb Michael Walle:
> >>> Btw. is renaming the flashes also considered a backwards incomaptible
> >>> change?
> >> 
> >> No, we can fix the names.
> >> 
> >>> And can there be two flashes with the same name? Because IMHO it
> >>> would
> >>> be
> >> 
> >> I would prefer that we don't. Why would you have two different
> >> jedec-ids with
> >> the same name?
> > 
> > Because as pointed out in the Winbond example you cannot distiguish
> > between
> > W25Q32DW and W25Q32JWIQ; and in the Macronix example between MX25L8005
> > and
> > MX25L8006E. Thus my reasoning was to show only the common part, ie
> > W25Q32
> > or MX25L80 which should be the same for this particular ID. Like I
> > said, I'd
> > prefer showing an ambiguous name instead of a wrong one. But then you
> > may
> > have different IDs with the same ambiguous name.
> 
> Another solution would be to have the device tree provide a hint for the
> actual flash chip. There would be multiple entries in the spi_nor_ids
> with the
> same flash id. By default the first one is used (keeping the current
> behaviour). If there is for example
> 
>    compatible = "jedec,spi-nor", "w25q32jwq";
> 
> the flash_info for the w25q32jwq will be chosen.

This won't work for plug-able flashes. You will influence the name in dt to be 
chosen as w25q32jwq, and if you change w25q32jwq with w25q32dw you will end up 
with a wrong name for w25q32dw, thus the same problem.

If the flashes are identical but differ just in terms of name, we can rename 
the flash to "w25q32jwq (w25q32dw)". I haven't studied the differences between 
these flashes; if you want to fix them, send a patch and I'll try to help.

Cheers,
ta

> 
> I know this will conflict with the new rule that there should only be
> 
>    compatible = "jedec,spi-nor";
> 
> without the actual flash chip. But it seems that it is not always
> possible
> to just use the jedec id to match the correct chip.
> 
> Also see for example mx25l25635_post_bfpt_fixups() which tries to figure
> out different behaviour by looking at "some" SFDP data. In this case we
> might have been lucky, but I fear that this won't work in all cases and
> for older flashes it won't work at all.
> 
> BTW I do not suggest to add the strings to the the spi_nor_dev_ids[].
> 
> I guess that would be a less invasive way to fix different flashes with
> same jedec ids.
> 
> -michael




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
