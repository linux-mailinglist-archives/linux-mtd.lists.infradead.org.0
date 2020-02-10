Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6F7157242
	for <lists+linux-mtd@lfdr.de>; Mon, 10 Feb 2020 10:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOiQESyhvA7ok5aapeagOrjuV89dHqB1ISS+NHljcrw=; b=b6nxyWDSVr2agO
	YqB+BpFt5vpW8tlSVBTii9WE5oorOvQCk3pjwt8GYu+jBBVnJ8L1MkBRe6DZ7aOw8y7b0TwRU2hTT
	sfU2yui1cG6puD97ZzVkTKbUGjwjGoiXjk7vbzv28iN39KeX+uS9+LeCg9QxbBbQcBIFX+wlmBu8s
	023w9q0z4AJxotAUpl3jPayeSzrY1JJa9Xm4Rqu5gyXlOwD8QA0fglrBoVJZtVjbH4DER3e03+Owz
	vm1y1v7jW1ZmhXZJuhIGfaXXLGXqzOTn/E85sVJTbK2uexwPI7lQQfXXZf6MXSoCFnbF1V+zggB97
	+B9lzp/wJrKRWkqGE9Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15qy-0003SD-G8; Mon, 10 Feb 2020 09:59:44 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15ql-0003RP-RZ
 for linux-mtd@lists.infradead.org; Mon, 10 Feb 2020 09:59:33 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: YLFGrQ3eN3S67rQGc15jTpSzRq5FuTBMtFKSgQZ7/zQiO9yfaCKR/gbPpAX/MFQVN0CZtJPYcs
 pbbV+fljvpHlgK8+kyIs/yMiU5trO8xJHBlV/8Wk56cqAJXpYXZ3SxoQ3zpsYg8vkzgptDZiI5
 ql03zIoisLxEh4Q1FEcvqJx+9ymiKJGcH0WXc8HqqVGwTAuzxhnYMFdAUPhFRxY4ZKWNDLewZf
 mGhD5/jvyk9GZvm04cllXInuZBP9ORScFZ5eq9v9oxajtKspSYEVgtWOC705ILPWgIAUepBdTc
 qpA=
X-IronPort-AV: E=Sophos;i="5.70,424,1574146800"; d="scan'208";a="65372851"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Feb 2020 02:59:28 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Feb 2020 02:59:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 10 Feb 2020 02:59:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b8rJM5br6dJJIVPXKV5NQFzVIY4N8X4JgvLzkP7KB3FHaJGxtKHOFxNTb+gQ4L6tvTrMgsy2kfC2tzWk2CvvR5D08WZol0sKVqsMyVOcRMnMR86Q/Yw4SBAx+sjvkWs0MMdA3ZEK1DKMDq7bBnezlHCWrA3SDv9HCmxMgKQpLI4SAMxLkDTFtMZXy6+YvhrhZcAESPyuLiz4TIM2kQzE8VHY9XcYAujmdAcapxggmyFE97n5/bufxeE1BEKv+2a0epLy5KTHJ7HLgDXh+vG6OYKvnrR2RI2ZHMA8KSc2sFZ6lwCCccE3ZECfHORLciCAgXFy1WyY/2IgUnA+wEZs8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HxgtHx7KTbT6v+wr4cgnJ/xQBbgQrNgwpZk/Rx/xCMU=;
 b=BcRrNjrXeVHl8tQomeeEDKsfrjSQKjqh1Xw26VXS4nuUkdQMUxi5Y0iVMEirPntW9Hj1SqgIrH7Q3xm6fgPuyK2o8bPv4GtdIv2CkUrUJzgsvj57Au/BiXA1R9MYE4H9YaQoT9R23pMEc8DFTDmNUXJmJ8WOXzqYa2NY1zhP/FlG2G3mTHIwbdP4wHTDrMMa/WFFsD+B950xyhWUcriUkSD5m5ScT1OPe4FtBk8KjIXZ1dltz5A2vlsVN1UEAG74hAPfhpjG5A4/HrJGcRvngT01Vn86y5n10iMD/1EbFJJUNlGBNPJHY0nnFgWcPjWKdUd5AQiDNF7gknHEp7VjJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HxgtHx7KTbT6v+wr4cgnJ/xQBbgQrNgwpZk/Rx/xCMU=;
 b=LRGTEeMsm+NPOPqmsxH+DNbMRuNoeHDZFgAf26oWD2mkRaskH9MNAI30X6ACOqZ9CktcwPqro7ue+SliYmFuorBgVE5FTYzd50zwlmbDFclnevuLX6FmzvVu27alys8G9NUNqTwM6/Cp6umWLkz1fFYcz55mzpHibzBbByjPwKg=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4400.namprd11.prod.outlook.com (52.135.37.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Mon, 10 Feb 2020 09:59:26 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2707.028; Mon, 10 Feb 2020
 09:59:26 +0000
From: <Tudor.Ambarus@microchip.com>
To: <michael@walle.cc>
Subject: Re: [PATCH v3 2/3] mtd: spi-nor: add 4bit block protection support
Thread-Topic: [PATCH v3 2/3] mtd: spi-nor: add 4bit block protection support
Thread-Index: AQHV3bCHi2pGqMNGHESG9Z9T0h6ocKgUNioA
Date: Mon, 10 Feb 2020 09:59:26 +0000
Message-ID: <2959960.PApuY8DcOC@localhost.localdomain>
References: <20200113055907.9029-2-js07.lee@samsung.com>
 <56a82fb7956ef9004828569f0dbe8e8d@walle.cc>
 <4000296.ZurDTCRVlM@localhost.localdomain>
In-Reply-To: <4000296.ZurDTCRVlM@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81da68a5-9117-4885-a70a-08d7ae0fe9e1
x-ms-traffictypediagnostic: MN2PR11MB4400:
x-microsoft-antispam-prvs: <MN2PR11MB4400BF265D4DB74E3B7BFB6AF0190@MN2PR11MB4400.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(39850400004)(396003)(366004)(199004)(189003)(478600001)(316002)(6916009)(4326008)(54906003)(6486002)(9686003)(6512007)(8676002)(81166006)(8936002)(4744005)(81156014)(66556008)(66446008)(91956017)(5660300002)(76116006)(2906002)(64756008)(66946007)(66476007)(26005)(53546011)(71200400001)(6506007)(86362001)(186003)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4400;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DG8o/KgiJeLwo9yr6vFX178hi6GxUFGEnmNfI25xRv09JUHVEH4U39MofhOG/fHejzwhTG3JPNRrrgJPcHkFk7S1Rdrn/DOqkkjZxmJZyBNbVa1riCx8BCIVrXgI+nJo4VJVL7ySwHAPR8mThhDAH56ihgDGAlP99e5udyXGV1Bkve4101HJ4dOuzZptF4+8CrpatU375nhdjWGcxQxiUqqVLNdJ7Ax1kbHlLq82dNhdRN+8u+hmZmRzouM6JMgJp+eBJx0sQxuC2b2ISrhjkx7FQrCt6XqeXTW4tytuncAlG45sGFhzqTtCqq/23ffnmb8jZRL9ZdGUEFddOxHKZ1ao7y533wjcrgZ+EzGurh2yXvdAqSdMF013AjZ8szwUsot7Zc8ZFHW4qkyK/qhMTxF3CDrwm9/qplih3BFQytreN5iKM9dMjjTXljUKDtCT/NRAV6myYlZ8NdAxWbZ9m4hbVCxn0gxmw8eJqoTG7gzK7J2hl6PIXB+zJynTBy+S
x-ms-exchange-antispam-messagedata: yAgyrYO8U0/ir08c5ege+63/cxyqVGhWaAM87Bp6UyqV38JHtuwT5Is5NbhlhpRaMeRkdyyeuCI4xwRfzrWugRWZLh94qHrYMuyQZYG2aCKr2EVL+kOA6pR9+lcysvntSRONJ3kKMj7QIAH5eI5yIA==
x-ms-exchange-transport-forked: True
Content-ID: <C1FCF8B0FC25C7448AD2B5CAF5BC3AA1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 81da68a5-9117-4885-a70a-08d7ae0fe9e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 09:59:26.6057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7YgjIrEtG1h22q6GfgeRg7yTXBi+QCXpfEQwAclJLQJtfNuKAULXiSaLW1G28NAg90vvzruo5DoQtrQjk1pP28grmJ+27dYJG1lmlkZVgwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4400
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_015931_927611_475EE11A 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: js07.lee@gmail.com, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 js07.lee@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Monday, February 10, 2020 11:47:23 AM EET Tudor Ambarus wrote:
> > btw. we should catch the two special cases:
> > - lock none -> 0 (that was already the case)
> > - lock all -> all BP bits
> > 
> > The latter is important if "bp_slots_needed < bp_slots_available"
> > because there
> > are multiple settings for protect all. Most flashes will define any
> > remaining
> > setting for "protect all", but I've also seen flashes where the
> > in-between ones
> > were undefined (not mentioned) and only the "all bit set" was protect
> > all.

I re-read this. Do you have such an example of flash? Aren't the BP bits in 
this case marked with "X", i.e. don't care? If not, probably we can mask out 
those undefined slots.
> 
> This case is addressed by using bp_slot_count and bp_slots_available. We're
> in the else case from above. From bp_slot_count up to the
> bp_slots_available, those slots are "protect all".




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
