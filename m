Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D861E6999
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 20:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f01IwP/9LI3B1VijDYnL5/8rokjDtXrAQD1s64Fd/gs=; b=BFsdqTHh6YrJQo
	hAtkJdK0ZAgutd9jT4Ps1VRy/jeJPVg1bWVoO9ukxRycoqItaqvR6/p5D13uS7h9cl0AducPdK42x
	p39EmiGeuB/XbZZBMOQx9uhzbhfT0ovjE2zp7ltQRwB2ZYujnNV4Gd/qjuJ4xqzDvBTxECGxtRq0M
	XN1yZ8j/9+vk8r0fbbjE2addzYprQRmYk7ZzFO1ZBWUN3UqL5DSYr20eawqYMws5Ph1aUyaiDyCWq
	98xis/8ExGkxPFf73Tqs7RVi47rAv0zUYmAkxb/GksHevuIxjroRMATSTVKV/YD3kPB8g7c1G4ZIp
	d28Hnx/qhXGklUmvnOFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNTO-0004OO-VR; Thu, 28 May 2020 18:41:46 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNTI-0004NZ-8M
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 18:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590691300; x=1622227300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DJNy/U6JZQBTLNlcaasLEMF3o/nqkAzJOUQEQBZLZ/k=;
 b=R2LyOXBJV0MIFPTpM/4cd1WiXixgOEZ1fWhHcWpL8hYOyAKxcb5jNvPo
 9z8fM8Bm+363VV4Ysz6IBLl49Kt+D9Mgx4uKTu+vrsudPBRjjr1T2XpZs
 oawcj1714oWC0Y2lyDGrfozXBfHne1iO+qdz0bwZqmL1wUAWUkhpab6vK
 Us8Kf1WvKkic5AN2IOROcWF1S1DHvQgSGXYvQQdw3j1c/64O64jYZMtez
 GueP13NP/AbzRYm14SxeSSctLEDFouXPLob67nIzWwEO7VM9sL/zKRKa4
 72GCnv7is3+6E/hggEyQgqEb4FtITZkqwEd32lfn0R4NxMNfEq7gzuGSl A==;
IronPort-SDR: LZTKUfnsSoZqEh8fLx8Ayv4VvU6Wvu5vMXnTXXVPEZnQy7o2Trn1KBjCuzvYLhcY8Ruq5uEeGF
 EOHjzCvsVU+o+yRGav+GYSoimgLT2rMBG9WCg9WVrlFSswUl/rqUJ8OV6rAnmBmQhtl618JMd2
 CakuJSczc49vCaqvUAzFvMTH3BC5gto8N/IDFFv7n6Ri8NXntTcG028aNo7GFeJ0F9c4trGcPV
 G1ZXL0edk5w11qhXzO9PhHuov/qCTFXZu++qb7qxhOoKHtwuKdDq4xCPs/eHeBaHx7YQAfsqLT
 rFI=
X-IronPort-AV: E=Sophos;i="5.73,445,1583218800"; d="scan'208";a="74798972"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2020 11:41:37 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 11:41:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 May 2020 11:41:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NFBgfX6w/OqIQ0eO0NDcMdNTW/B3CoOKYUCIyKaNsHqS83rr2g6xtPcBL9Z3BxLzI7DBwOxVODbv3zC6YaisZOl5DZBYGOX6+rlRhb7Mvyze0mvoVZwD+H5Egy17qFWXeF9MjmhOczpok5BPzlrYFpWXNJZvUWnF/MkZOVIvNgEz3XrTU+bcyjDHTP997h4J7OMnMSsxhXu+VdmRqaDQW/5DF/pAqFetNd2b4dONQX3KvkiktwkAQ2cTUvDD3Iwp8fU+xSSLlcIuzWECNK4qopfZWKdaL63PdCuINCzJ/YYHr/1kQuTE9Q5iR6NACBAfmrsgU26bBIWvnggXq2mFAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnMraFO11CWmJMKesD4z3qcQtm/Ev8BM0olQa9kzbws=;
 b=VPwoor397b7sNOuwmTehsyD8+EtvcpymXLZJN+occ3Y4ZCWSI4Xift76w88LvDR7pF4QG8s5QAfTuLq4ZbVFPgCHEq406HQ63gs+AzQB/aDuZY5SNRb2TIMk/wgVrU2sS1MMzK5YwgeIh671PncTR2nMm2bvI/sYeBlXmIJFD7i+vgsRkziT1MQ5HunmYNXt/ajHdc4BApJcEDcRmFUZwHg4eycI7rEIjtJGNdE7gov3oQVYyAPiNUCRZ/BSkrkfNscu71Jy54aF2EJZSLw4y/vWBrmKaVMWULj3yto8VQWVQpEke30nYc6T2fBpCt/RU4RnZkBgPWxM8RDOLYuzsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnMraFO11CWmJMKesD4z3qcQtm/Ev8BM0olQa9kzbws=;
 b=IyXanwmidHgbwufYj4OzKF4nxPgjS2rm43yaDNIXzvu9bYRRAdS9DGfrrqU0gtlz2lHGDFCudio/4+trHUuNplc1tOlAX/AWFc3CcO56/NOK6shB/+Bi1R1oy1i66ToFQzm0gI3PU6JIqnzmwlg1HwdyJ/MYeMBa8kwYSeQTMqA=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4085.namprd11.prod.outlook.com (2603:10b6:a03:18d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Thu, 28 May
 2020 18:41:35 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 18:41:35 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>
Subject: Re: [PATCH v2 2/6] mtd: spi-nor: cadence-quadspi: Provide a way to
 disable DAC mode
Thread-Topic: [PATCH v2 2/6] mtd: spi-nor: cadence-quadspi: Provide a way to
 disable DAC mode
Thread-Index: AQHWM0FZdMrQfpcZVUCj9p3WoPBZUqi92LYA
Date: Thu, 28 May 2020 18:41:35 +0000
Message-ID: <2690575.R1takI9ffF@192.168.0.120>
References: <20200526093604.11846-1-vigneshr@ti.com>
 <20200526093604.11846-3-vigneshr@ti.com>
In-Reply-To: <20200526093604.11846-3-vigneshr@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72ea0703-6349-44d3-7181-08d80336bff4
x-ms-traffictypediagnostic: BY5PR11MB4085:
x-microsoft-antispam-prvs: <BY5PR11MB408562ADB4D68EA5CF59D7CDF08E0@BY5PR11MB4085.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AqHxYGDaJd24vpiiJaAJdUU+hcdv+6aP7mp5d3a/bUqsnZSh+kM7bL0AYY9CjFLZeMNrZQnvqmlhOnkpyst/ROFn+JwAi1soG0htu+b6Ch9Rf/XwCaxfDWVNDtY/Xfsfxws0/4R49US23quobZjxTfbHQKVSYxg+QrUX0sVpjsWrl7retX/o2rOsLoqLtHut10itlqPFeWEth4pTvBx6NDxWlwA12dAGRNoqLtAP373tT5tTbWLQtm3xY+Ft+h4sZNud9ZfOMAmHGqqZlhbgCOJ+lV9gCrHinp6ay3eEdFST04JfcKcdwlzday9y5fhC8utQGnm1ALJG6za3j1vepPoTAcEp4z/DX+noUTH8Kmw4IZZn56IuUVaVUZqFT3zPEFZ6rhz3YU/02Rj03PkfEw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(376002)(39860400002)(346002)(136003)(316002)(66446008)(64756008)(66556008)(66476007)(2906002)(186003)(4326008)(86362001)(4744005)(8936002)(8676002)(6506007)(6916009)(53546011)(76116006)(91956017)(6486002)(66946007)(5660300002)(9686003)(14286002)(54906003)(83380400001)(6512007)(7416002)(71200400001)(478600001)(26005)(39026012)(43043002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 6qW/yydW2lhYyOaF7z9vE56Wfw55c4biR0Cc0DhkTTl3xX8z4VA9R+INjW6N3ti/PMg2b5395+r8EG3ugx0cHTK8WdeLuSjW0cVhqoKczHNd79Ac1mTmkiSeVFY604TWMtLLo7wDf21T8IWDPp+lKwfj52/et03lPUI5y9xcu1/kjqETPkCxmvGz2wDuM1r+fNHGO5XCSTi118/88w3yt5V1RqmznV98FpX3CuWXBHNOdFZRErSdXqaKZ+6i2+YNfHtLPrcQNRHr9AwRq2JoQgtMBE3m8w5KxoxhX7zE4NAiDMUVYhkNAZNxRuuS/4y348t5qoh4KfB+tC67Ivth6EEJrdlH/kajbhqDJl6PeYBwC4niH/b1joB9b1TJvJm8L1E9oOb5hq8hIH8IBAJO4W2rVnjblN4eozdab/Nrs5evXUMvw3UGh2aOhBGG3bQ7G/gVuuAfYNvtkCJqN3Z0MLd3m/ONORiDbSUh3ON5qoA=
x-ms-exchange-transport-forked: True
Content-ID: <47753298B8923749A91118FADD2111CE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 72ea0703-6349-44d3-7181-08d80336bff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 18:41:35.4901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qL4LOsX0QbJOVz6EbLx24FbaQHvOkpcVKLKdLCtoiQcoFMDdlWqIscvYOdfseR1yzZ643ffwhbzCmhaadqdlY2D0xO99c57pevYfaXL9HKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_114140_363591_EB2C7905 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: marex@denx.de, bbrezillon@kernel.org, dinguyen@kernel.org,
 simon.k.r.goldschmidt@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, vadivel.muruganx.ramuthevar@linux.intel.com,
 broonie@kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tuesday, May 26, 2020 12:36:00 PM EEST Vignesh Raghavendra wrote:
> Currently direct access mode is used on platforms that have AHB window
> (memory mapped window) larger than flash size. This feature is limited
> to TI platforms as non TI platforms have < 1MB of AHB window.
> Therefore introduce a driver quirk to disable DAC mode and set it for
> non TI compatibles. This is in preparation to move to spi-mem framework
> where flash geometry cannot be known.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  drivers/mtd/spi-nor/controllers/cadence-quadspi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
