Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D9D1C990B
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 20:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXaMq7WRY5nibMueVQmzCUTyEiciBP8dkAbthrQKyGo=; b=phEYTo6rk/qAqN
	4Vf9NS6w9CCA9hOdmnL7byJg+eijRAVO78uIC21DC7LquA8htjYKeetdcB4a/WCQ2m1SOFuTswN1Z
	fTRt+fauj5Smxo0JlMbtzNtOhoRUF21ga2LIasItgPwsHPQrP7jKj9PRvaFxEA4uwHGMD0P1cT29+
	sKvFKEyxXXN9eFPgQeR9el0vhdoUsqogvw0NHbUjBSiwohbS8uctMN4Qxn/3mp4yzIvPFi/k9ssIn
	QPuk0m6HhKPZMqsenPNCxTQ+FJuW7RZWcmHUGe5VNVyKS9yW2P3Xn0D5PFDPPlaPtGThvaUWmpaGu
	4sq8uaC+uZSpQWdBjoTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWl2C-0003Gb-DW; Thu, 07 May 2020 18:14:12 +0000
Received: from rcdn-iport-1.cisco.com ([173.37.86.72])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWl22-0003Fo-DO
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 18:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=962; q=dns/txt; s=iport;
 t=1588875242; x=1590084842;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GXdNlxcBEYSgPFPiebcVwmxlpLrmnUXOZovSyEDGJ48=;
 b=EMiTu0kxaze2AjQRicgALXCVEbTjCgYv48QbLL1glhv2SHTOOejZIiI6
 ZrFre5pGm+RdQBqrIYl0HJdWNtqTg4s6OuTFSDcLZpEm/KLdI+4qTj4S3
 ksWMRyrBnxcBhRAF2hAri0q1AVBiUhzfRtEVrMkxZ9rbNhoRq6FH6zTeP I=;
IronPort-PHdr: =?us-ascii?q?9a23=3A2CfjZROJSkuoU8cXBLcl6mtXPHoupqn0MwgJ65?=
 =?us-ascii?q?Eul7NJdOG58o//OFDEvK433k7AUYzF8+hNl/vLqKCmUmsFst6Ns3EHJZpLUR?=
 =?us-ascii?q?JNycAbhBcpD8PND0rnZOXrYCo3EIUnNhdl8ni3PFITFJP4YFvf8Wy74TcMAg?=
 =?us-ascii?q?/2KRtoPeSzEYnX3Iy70umo8MjVZANFzDO2fbJ1KkCwqgPc06tegYZrJqsrjB?=
 =?us-ascii?q?XTpX4dcOVNzmQuLlWWzBs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CtAQCFT7Re/5pdJa1mGgEBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBARIBAQEBAgIBAQEBQIFHAoFSUQWBRi8qCodfA4sxghGPMRSIcIJ?=
 =?us-ascii?q?SA1QLAQEBDAEBLQIEAQGERAKCByQ4EwIDAQELAQEFAQEBAgEFBG2FVgxCARA?=
 =?us-ascii?q?BhR4BAQEDEigGAQE3AQ8CAQgOCh4QFB4nBA4nhVADLgGlQAKBOYhhdIE0gwA?=
 =?us-ascii?q?BAQWFLBiCDgkUgSQBgmKJYRqBQT+EIT6EToVykQ2hSAqCSJgKKQ6dEq0zAgQ?=
 =?us-ascii?q?CBAUCDgEBBYFpIoFWcBWDJFAYDZBCg3KKVnQ3AgYIAQEDCXyLT4RrAYEPAQE?=
X-IronPort-AV: E=Sophos;i="5.73,364,1583193600"; d="scan'208";a="755692647"
Received: from rcdn-core-3.cisco.com ([173.37.93.154])
 by rcdn-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 07 May 2020 18:14:01 +0000
Received: from XCH-RCD-002.cisco.com (xch-rcd-002.cisco.com [173.37.102.12])
 by rcdn-core-3.cisco.com (8.15.2/8.15.2) with ESMTPS id 047IE1bj021674
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 7 May 2020 18:14:01 GMT
Received: from xhs-rtp-003.cisco.com (64.101.210.230) by XCH-RCD-002.cisco.com
 (173.37.102.12) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 7 May 2020 13:14:00 -0500
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by xhs-rtp-003.cisco.com
 (64.101.210.230) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 7 May 2020 14:14:00 -0400
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-001.cisco.com (173.37.227.246) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 7 May 2020 13:14:00 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hq0E1shPYyQlqlOQSuQ8CUjvy2ugxVQ/JOR+tnkvbczm8oN6sa0cqvc/56/3BX1OY17RaeiIzsi2zHmgrbVFEYY+NI6VEjE2RfYOcHOUpYt+c3KEkPwv11jqB7kPO1psOHCiBV8z6ilpZc/8o5cIUupX8pqccc3wdDm+x+uEgUkv7oKoxTFg86Z3kIpX5IUT/aXOrD9UVKwYWTNHlurkfAcNKgZdE7dOLYe0rMFECAjfb0tIzncokV7Q+5Re+9/oPCCBtC5V0WnA/oD3xEQ2cgV8ePVtbcsk5uacGzNgl66xXPtYnIxd0lufjd5Eo6bVp05dyd8BY+pz3rjUwbLQSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GXdNlxcBEYSgPFPiebcVwmxlpLrmnUXOZovSyEDGJ48=;
 b=FSaIBsbFSXyLT7wMg7W/i0Ko3+zmh69HJvtfubPQeQvONi7AmSZVDl0s6hAZesqKYwv83l/92S6QkLUbmBgsVuSDRBk7A2oBWPHWUYjD3K7AVbTUypSAJbh1RJpKoxXHVEICR+GMVJbGroxm1SA8uhAU7esBBCWjk+WPS/GZlTV2oU7kVrMVB5T4tPsfEZm0R7z3LdDwoNFdwtStxNft9QMX/+ICtDKa2n2TURMG/HCNTTwiO214i9UV59Jm+PVvgE6QPELihfUeE/rIoGzk0JjGgWiw5NkFqFuVlaVPorpaXfTNJtc3GXXBhd8lwdUsYnagq722IGGVHUs66Ps8aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GXdNlxcBEYSgPFPiebcVwmxlpLrmnUXOZovSyEDGJ48=;
 b=SFN0lOG5risCcQtn/pksY3J7cOvaRKLWe5VtKKyD6U/7CN77sXw7+GCTl8w1muYceNmU6goF8FbQ43nlPhsXPAx2OhuvHND55k2ABQOrlTiNiy5AoZg6aMeNEBwavqWWS0uDkzPkVnMS9jkXD7fYttaeYl4M11iLUGTqZL6ypAI=
Received: from BYAPR11MB3205.namprd11.prod.outlook.com (2603:10b6:a03:1e::32)
 by BYAPR11MB2982.namprd11.prod.outlook.com (2603:10b6:a03:84::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 7 May
 2020 18:13:57 +0000
Received: from BYAPR11MB3205.namprd11.prod.outlook.com
 ([fe80::e40c:b886:639e:9472]) by BYAPR11MB3205.namprd11.prod.outlook.com
 ([fe80::e40c:b886:639e:9472%5]) with mapi id 15.20.2979.027; Thu, 7 May 2020
 18:13:57 +0000
From: "Daniel Walker (danielwa)" <danielwa@cisco.com>
To: Pratyush Yadav <me@yadavpratyush.com>
Subject: Re: [RFC-PATCH] mtd: spi-nor: add conditional 4B opcodes
Thread-Topic: [RFC-PATCH] mtd: spi-nor: add conditional 4B opcodes
Thread-Index: AQHWJJtGYFQgheIq+0WUH0ne4iHf/w==
Date: Thu, 7 May 2020 18:13:57 +0000
Message-ID: <20200507181356.GZ9016@zorba>
References: <20200507162047.30788-1-danielwa@cisco.com>
 <20200507180346.gwni4hf6kb6gd2e5@yadavpratyush.com>
In-Reply-To: <20200507180346.gwni4hf6kb6gd2e5@yadavpratyush.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.9.4 (2018-02-28)
authentication-results: yadavpratyush.com; dkim=none (message not signed)
 header.d=none;yadavpratyush.com; dmarc=none action=none
 header.from=cisco.com;
x-originating-ip: [128.107.241.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0371217d-c7b8-4349-ccb6-08d7f2b26931
x-ms-traffictypediagnostic: BYAPR11MB2982:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB29826D65761428FE825839DBDDA50@BYAPR11MB2982.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4WYBrpUCOxRux+upY+uZsOF2xcFG2zbuQJBJpxzFNysrRp0dqqPQdE8iEavCBJSSMXhXA8tQbF6n4wgdWeKPmqCnwB329gVpfXvTZ0NdGvIbBQeGSG6TB6qOIradkeoavTh2taBdLMPWbSCupbfmCZz9IMuu1D0dIEutJzdzCy7Y7RvtDrZtiMPVC0LeGcXrxrIkaRifeN1ZcmHTobueD1kBvjeRF24bZIgCe4RSnmxfzY3WhKbN71nqnIKQazS/mHRPxVrvkFpPZ/6RuxpfIxQvvEqFSkDAtEnavtyTG2qbQ0fnXLpYd7DI02OpNFtTYy5i4dy1wX83VjgGRmwFBopb6RY9E4nXgt3BhAKQgMe9wQY1ktVAbqsW4N/FXIAgHjvQeND8eVNU3srLDCyANSVjjFrKzl5eKjGLy0sUGb5FqKVLJ1wEn8/B2ZrylBjI8ArzXdukNrGx9Wfs9mubl7HL/UIgQtu5xOnEqGtcV4/lowe4YBzmlz9Y/rY1MHASujk0d0cUL84EbrfZ70hKNg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3205.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(7916004)(366004)(136003)(396003)(39860400002)(376002)(346002)(33430700001)(33440700001)(6486002)(4326008)(4744005)(8676002)(9686003)(6512007)(66476007)(26005)(66556008)(76116006)(66946007)(2906002)(66446008)(64756008)(186003)(478600001)(316002)(6916009)(6506007)(1076003)(83290400001)(33716001)(54906003)(86362001)(83320400001)(83280400001)(83310400001)(33656002)(8936002)(71200400001)(83300400001)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: DtUqvAxrxbmox3OzvNJI9ZRs42iIyg8B0qMtDatwH5Vp0zwBbYsB7yFO3GMv66ZRMyO4CrUu5FLCaKGSY7a/Livo4iUnd+vS+/r0sZq0R9GCTql4mcaubV4DYhSVcAkBRrghdHZsxEbNYbaE7msxKKbq8zx4sCZdJ6yyzJOCuIiXf7vUkBJ9EPUJ8lv5e4sZ5AUckMkh1BVVzFQK1cFaIZgZzT7iXYUPGpWaQ8k8Xo/tJCK2O/lDvxFWhHBSZvI0SWX6ty6CtPaSuKkyc5XIMzBnK86ZE2EyDVSk/coPt8toMw694pGm2FUK1Eeaeen0UqtQMVNXi1mCzOQgt09Vl3oQz4qCAcq1NHZ/f6MDP5srbSwSg0IY1BzSyqIu+aSQ/waw++WECz0aRQTCvxMmFY4GI/LoxEovklOG2tVCtwHzKFTqL6hpW3PfrPunTWgPN+q9OM7a+OQNq/Kt9V5Jj0Nqto3FbqGhgrG42RdJLdACppJQ5qPUvE2IN/plbxnWHpauKgoJfS9m1EVLYl33q+eAFPKh8eHkTuMo96Xffuc4lcyd0oNEe+mouWtP/UkdRFb3vbwS+HzoKJFinUfdC086n9dYjatpjIG8Nymp1Ev3bFKsml6bmxvgnPJzB9uhQE10By/Xhb9X7E0hXbtif9NpExCKsYlK1wvaWNZcyPZCzTH1CD/H8OHjOLocLIoBdxVtYjNzJh5TKnJi5MkdW+7nQ2SzxkhAbrvwMm2Dhpf9ej+y0rHJ7qk2zR3QajomC2jIUy78TjBgtPvvva0VuLkjIwxV6PJ2sFpdE7WJA/HDW4H/w8ymWuvuEUonWu1i
Content-ID: <B7E923AE7F6B3B48A1052C4130E01958@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0371217d-c7b8-4349-ccb6-08d7f2b26931
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 18:13:57.8027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mQTeL6dO+6LPABct66ZotViBJ+ncE+Vue2Y2A2hpLnld6gBI/US2zgVrXhauHGdxVxfrS5kPpSOfijPcpizLdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2982
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.12, xch-rcd-002.cisco.com
X-Outbound-Node: rcdn-core-3.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_111402_558340_70D82F69 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [173.37.86.72 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Miquel
 Raynal <miquel.raynal@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org





On Thu, May 07, 2020 at 11:33:46PM +0530, Pratyush Yadav wrote:
> On 07/05/20 09:20AM, Daniel Walker wrote:
> > Some chips have 4B opcodes, but there is no way to know if they have
> > them. This device tree option allows platform owners to force enable 4b
> > opcodes when they know their chips support it even when it can be
> > automatically identified.
> 
> Do you mean that two chips might have the same ID but one of them can 
> support 4B opcodes and the other can not? Is it possible to detect this 
> in a fixup hook? I think it would be better to do something like this in 
> a fixup hook instead of via device tree.
  
Yes. The chip I added the option for is an example of this, it's n25q256a. I'm not familiar with the
fixup hook mechanism, but I would assume you need some way to tell between the 4B
opcode chips and the non-4B opcode chips. For n25q256a, we have not found a way
to do that.

Daniel
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
