Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091F910C973
	for <lists+linux-mtd@lfdr.de>; Thu, 28 Nov 2019 14:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8g7hjm7OgyBR7/K2lRAuznVxXDokWu+jhati36n1+Q=; b=VXVH1eFuOx23Qf
	lY1AakwRrx19vkNAV77Fm0RhdJcnEY1urcKI85vnj5XBGN3k/I1PDRC3OCwZt9e8902Ixf63FT1fd
	AFFsR2ad/7pt3BwtezgfAC8HvlwP1UrOGPges9YZeqx7a5QTWYFolMQeJoJzalM7ihKppclyvSEZ8
	r3KpSM9BUdWhGGh+z/H7YyxI6ch/LK9e5eTqq8dKAffv7bp/L+BlRtJLshSbpGMFyYYHmO0WiAhyW
	0uQbPCv3VO+4f94nkdW1PLhzqtebN0JcsP5WXfK/yPxrItma1IcDFyNXIlZJ9tj7hhczqU+aVqrSN
	sxk5etzOeQj3+XCTvdaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaJqf-0006gL-O5; Thu, 28 Nov 2019 13:28:45 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaJqV-0006fr-WA
 for linux-mtd@lists.infradead.org; Thu, 28 Nov 2019 13:28:37 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xASDQga5021021; Thu, 28 Nov 2019 05:28:25 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=1j8OKNv/6FnUysx+Uq/1D3BAHkY4YrfhgGQ9oC34BJo=;
 b=jeCnXLY9DloHccMoek+VyRuvdNgqoxu/QCvUm1JGYfLgXZGx10Z8fDmiLSFatIbTEkXK
 7fIatbNm3RHXrU9CAoPJ94RdAXyXpijiQ1e3EXLD3gRPRM4PteYo0gFWAw0wkOLMocsh
 CrRT+TSi0ui1aE4Ty2/HAYBEgLqf/vEriVAqRfIkcCiGPbgmmclIvt9lJCJTTvPcHl/K
 2zeZJEa9Rbig9DUvzHMOn9jxVFKBiuDDLqsVSPFXv5EzkxIOAhX9VVp3rouQD/Rs3G1L
 0/CrtKGK+7nYF5zKUCqL1SEdwBdmL9F2P3MkstXUGCmpad4//+zr09q1Hi3GNjHOudIZ Qg== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2whd08qc87-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 28 Nov 2019 05:28:25 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 28 Nov
 2019 05:28:24 -0800
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.58) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 28 Nov 2019 05:28:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EcFFzaKAEo+gYdQbxIRfUa9jF9iV5WaYrcARHGtSbfYdOy9gycCa3gK5jmKTK/3nkPSLGlAKzcnjSpgvlBWzDoWcv4nlyq/2ag3HfpRAEzJHl908hb6+QEQwWxAH9sQW6sTghfXX8iVdkoYkox0bOOjTodDugVn1BT8XIfA8t3z2TrAvV1J36QTzGk5hr2P5ILDlSJGuDKmzTaHpXRC9iWrN3g9T2x6e2kCaH29vv7+1Mm6FMB3Oarx/f0Yvxu1FruRqgr1z1vcsmjIcNhGtSX4gCJNTdIwbKB02XqqAmLcDm5r9+3q+/8mS636AEjGQJu3lgDBcRymeLcYHP8Wk0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1j8OKNv/6FnUysx+Uq/1D3BAHkY4YrfhgGQ9oC34BJo=;
 b=GmQSI9bQTgNyescMTwAoaYbgttqslVzbdYDupo58ljl7d2YWrZzE9v6ZCLlgh7C+e/dXI3yXGTzEwmaUM2MZAuD/C+5junqn1NHS9+unfBk3ZjFZ1VcvKTyaJNEAhdxSjYn6l0dRYpl1PN/hQGlVJCNy5KaTIhrgvHotns220ojGoIx6s2OmeXTSA+t1Ju3uOBH3+Vz3bDe82LmKqRoMbyZ9MTjoQSSB0Z2d0kScCii4VdoCtzg7QwisXvHyergNdOL7bkX2awBIvTihCo/YamuKlj3ILKJ/nI/TUiLonNsTLEMATbDmL0V5dKBk20xZyYkiYGZ2H+Qy+9Z2GKirUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1j8OKNv/6FnUysx+Uq/1D3BAHkY4YrfhgGQ9oC34BJo=;
 b=C2zEKw77mDQtjm6uOwjEF9bLRvLQvA6fq1VPXgWR2kBu5sgwpTHdL7E2ujAui1ziUFDsED/+HkIGnjjVH1O+MQfuvrq8BbslzUbItmnl67v8tXPkCD0ttIqt2t/LjXEMjnrNyYWmluuRbl9CB2MVLXULenDdCQexdTFDhX/4pwE=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB2765.namprd18.prod.outlook.com (20.179.22.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.21; Thu, 28 Nov 2019 13:28:22 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2474.023; Thu, 28 Nov 2019
 13:28:21 +0000
From: Robert Richter <rrichter@marvell.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Subject: Re: [PATCH 4/6] edac: i82443bxgx_edac: use pci_get_device_by_id()
Thread-Topic: [PATCH 4/6] edac: i82443bxgx_edac: use pci_get_device_by_id()
Thread-Index: AQHVpe+0OOeXN/A3hUyun7nCMMonXg==
Date: Thu, 28 Nov 2019 13:28:21 +0000
Message-ID: <20191128132812.tgqg7sak45ccantn@rric.localdomain>
References: <20191128125406.10417-1-info@metux.net>
 <20191128125406.10417-4-info@metux.net>
In-Reply-To: <20191128125406.10417-4-info@metux.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0502CA0002.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::12) To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4159e12-6a41-47da-ba4f-08d77406d678
x-ms-traffictypediagnostic: MN2PR18MB2765:
x-microsoft-antispam-prvs: <MN2PR18MB2765EC5AF867EEF7CD59105CD9470@MN2PR18MB2765.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(199004)(189003)(4326008)(6512007)(66476007)(64756008)(9686003)(66946007)(25786009)(66446008)(1250700005)(1076003)(4744005)(6506007)(316002)(66556008)(6246003)(478600001)(14454004)(7416002)(305945005)(386003)(256004)(14444005)(8936002)(99286004)(8676002)(5660300002)(86362001)(7736002)(102836004)(52116002)(53546011)(54906003)(66066001)(229853002)(6916009)(76176011)(2906002)(446003)(6486002)(71190400001)(81166006)(6436002)(26005)(81156014)(71200400001)(11346002)(186003)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2765;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sAO6A77pv9kXBlPZhOKcDnOriHrrygbPHpJUKJRVk+ZnklXbvCaj1iJU5iwV7M9qRZ3lpYtqtj1eqh2WLHBXi1fIdIeO5V1ZaK7do6ALvBlU4nItrlZaBtMcpnf2v+eeUdrmWyp5Bf1QmKOYylgVnGI0pYjE/kFyYSt9T21x5kmnR9mVlv8nB7Rif3YzYWPtm3W7NF0HlkS8xZ8HpFcqIDckwg9T2RKMQ8oDyBYeHul9S7ysFphdgENf+Q0IARtwsp3+2MnU26qK85y5FFY1m1W152ye4yDFR6SsYUQKkB61IYPbezs69PJ2zUXGChBlvQMwHdlxvflRmUwyPvfIrznxJcH0u3n9WckK1fZQZpWJJ4JoPng0ipvte8XpuSiV4bViqT86QFvNFoXD4Ow4oc6nUYJ3NzeBZXiSWfixQ2a31JVgDOXDgD+S44CvKTv3
x-ms-exchange-transport-forked: True
Content-ID: <2342D6B7712EB243A1530E0A6D4956B2@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f4159e12-6a41-47da-ba4f-08d77406d678
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2019 13:28:21.6104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dc/QHMiIsrm79g4Y9+1fvA8HkuWcJXCu4qa8UawY9v/aO3Nw4VV49pr/cHorxXwdSOEZAOXJq9wR1nrzm6wiEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2765
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-28_03:2019-11-28,2019-11-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_052836_297461_2FFBEDD6 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 "jdelvare@suse.com" <jdelvare@suse.com>, "vigneshr@ti.com" <vigneshr@ti.com>,
 "richard@nod.at" <richard@nod.at>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "tim@buttersideup.com" <tim@buttersideup.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 28.11.19 13:54:04, Enrico Weigelt, metux IT consult wrote:
> Use the new pci_get_device_by_id() helper in order to reduce
> a bit of boilerplate.

> -		while (mci_pdev == NULL && id->vendor != 0) {
> -			mci_pdev = pci_get_device(id->vendor,
> -					id->device, NULL);
> +		while (mci_pdev == NULL && i82443bxgx_pci_tbl[i].vendor) {
> +			mci_pdev = pci_get_device_by_id(
> +				&i82443bxgx_pci_tbl[i]);

I don't see how this is less boilerplate. Since this differs from the
typical pattern for this it is less readable now.

-Robert

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
