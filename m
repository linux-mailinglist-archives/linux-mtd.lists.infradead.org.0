Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484E41EC02D
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jun 2020 18:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fej31sbkk2Nrq9GyMv5iVv5fzLJMY5jBYmL24Srk6R4=; b=TQRZtwngptPdgt
	yoUZaKIZs3If+quO9XlStUEsC7C38W+Riyh9ZDLWWbUO2f5rzi+WbWXV0kOt0/Oz4IDjjDES5ohf5
	zTw4UyD5TzzTskEb8+Q+oFD8qzYOqfgbyZl66D2Xao7AdSCqcSbY+PX3MkxUQ6mG4jqKj9Rlmvng1
	vbgcHtTn+LJKJawWJ2xNwdbdCFL+u0PUb00tSVYdzo7ED48krFs1k6ywWgvUDyaI8CgoaLbKgjCTe
	ZPPhA/cLjbooqZClI5unUQHOp8FPoVG8UnAEAdzJaTiv96UfrCXab5YahZGKVKXXwzqctiQgHCMHU
	7R3tFrSZsobnLStyUL/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9uG-000832-F8; Tue, 02 Jun 2020 16:36:52 +0000
Received: from rcdn-iport-4.cisco.com ([173.37.86.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9u4-00082N-60
 for linux-mtd@lists.infradead.org; Tue, 02 Jun 2020 16:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1966; q=dns/txt; s=iport;
 t=1591115800; x=1592325400;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3Jy4jB5DKVN0a1d+emMQLWwHFLERK1rx+dV/bJHbdWU=;
 b=BbEgz3j/TsXWD/kMQ1KMT0wX/QpnF02sMGE0YYVp7uaKRTJItdT/ch8H
 654fF0LEgzxbr3yPqZIN1D1rdp1M7Rhi4nKuBa8AsuPDZ5Qc5E7tAIj8H
 F/IFOGhRndpdQW4QX0oQK6Cd0FC+yP0hF72SoEarA9vCpMFm8J01YuEXe g=;
IronPort-PHdr: =?us-ascii?q?9a23=3A2DkVchITehqg8PB+zdmcpTVXNCE6p7X5OBIU4Z?=
 =?us-ascii?q?M7irVIN76u5InmIFeGvKk/h17SVoKd4PVB2KLasKHlDGoH55vJ8HUPa4dFWB?=
 =?us-ascii?q?JNj8IK1xchD8iIBQyeTrbqYiU2Ed4EWApj+He2YkNUA835IVbVpy764TsbAB?=
 =?us-ascii?q?6qMw1zK6z8EZLTiMLi0ee09tXTbgxEiSD7b6l1KUC9rB7asY8dho4xJw=3D?=
 =?us-ascii?q?=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0B+AABTf9Ze/5RdJa1dCBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQESAQEBAQEBAQEBAQEBQIFKgVJSB4FHLxcVCodhA41Fj0G?=
 =?us-ascii?q?JDIFCgRADVQsBAQEMAQEtAgQBAYREAoIbAiQ4EwIDAQELAQEFAQEBAgEGBG2?=
 =?us-ascii?q?FWQyFcwEBAQMSFRMGAQE3AQ8CAQgYHhAUHicEDgUihVADLgGkWQKBOYhhdIE?=
 =?us-ascii?q?BM4MBAQEFhTcYgg4JFIEkAYJjiWMagUE/hCE+hBkBDQUBCBmFdJE7ohsKgli?=
 =?us-ascii?q?YYiwPgleJCIUPjR2uWgIEAgQFAg4BAQWBaiJmcHAVgyRQFwINkECDcopWdDc?=
 =?us-ascii?q?CBggBAQMJfIsvAYEPAQE?=
X-IronPort-AV: E=Sophos;i="5.73,465,1583193600"; d="scan'208";a="767075513"
Received: from rcdn-core-12.cisco.com ([173.37.93.148])
 by rcdn-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 02 Jun 2020 16:36:37 +0000
Received: from XCH-RCD-003.cisco.com (xch-rcd-003.cisco.com [173.37.102.13])
 by rcdn-core-12.cisco.com (8.15.2/8.15.2) with ESMTPS id 052GabPK015919
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 2 Jun 2020 16:36:37 GMT
Received: from xhs-aln-003.cisco.com (173.37.135.120) by XCH-RCD-003.cisco.com
 (173.37.102.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 2 Jun 2020 11:36:37 -0500
Received: from xhs-aln-003.cisco.com (173.37.135.120) by xhs-aln-003.cisco.com
 (173.37.135.120) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 2 Jun 2020 11:36:35 -0500
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-003.cisco.com (173.37.135.120) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Tue, 2 Jun 2020 11:36:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaCILnNClzt2RS2VNf3+E4q9S6ibHXvG/ocVc9W14PnJBSgpfvGcvDm3R401RNqF/tEUo/g+HC6IaHtxXvAwa2xY3lfiDYqVdupeEfr9yS8NXKHERnAez/tCA9QpXhJ0hA1AItlybhIuzbMMVX4Q4inflOpkrOhsaEK3DNAlKgaejx4gIcppJ/DOtb4gx+oSApHA347grD1OUD5anK+ymEaJJp+ZigMaKBYHSUwyuWDK7YuLscyUWqI8eQMLe4bA7XBdbilW5hWsz/VmW5uQrSXmJTvHXQHyC2Sk9dulF9psPHBjjEfo+H5cdtGRJvHcFp3blCEo551W+XmUCjfajQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hAhwOKGFM9d9l8+2MiQwWzk6nnQDkHNWa6Q4bpTuUec=;
 b=d84o7Q7bnVdbaKVMXQoGoD3SD7FWM/qhRpzJTzmVPc93cG4FhmN7aVxvrYr+dTR1E7MVcS2gxxwEwPZ5+y8cCK5uaqLykA1ibIr06nPXNnNQSLjcyImmjpmoillJHjt6R9tD9owNp9VID+4v3Gjgf7G8z1cpURauwHJUfG+IwwMMB7nc3ALir4X6PZLED5wvhBTxtHPCTzipm/f9toWNOFrA5m3bwPDT/s9WfAIj/5wBBB3z4yJ7iNB8wJvciXi7viIKz+fV+KH+xYSrBC/ElMXs6qLWgI0LQeK4uyWTNKA7nfyLtqXafhGbV9bp0NBdZv4MlVTe3zdmzUYLnAmzOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hAhwOKGFM9d9l8+2MiQwWzk6nnQDkHNWa6Q4bpTuUec=;
 b=Qkx8dETfIg9zPeKFzU6yj+Or7TVROql4Rpe2+snTggDFmTD0dpikZJW/j9bDxx/Wu6P/RM3dR6Vfge2VSZW1qoIVwem2NX6uVzSvBldYaZ+rOkdYGy/5DLLNOi/5kDU+gFDIP24Zu8Cz5giXWbTsVLzCmqchBXGXNwthdPPwEbI=
Received: from BYAPR11MB3205.namprd11.prod.outlook.com (2603:10b6:a03:1e::32)
 by BYAPR11MB2952.namprd11.prod.outlook.com (2603:10b6:a03:82::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Tue, 2 Jun
 2020 16:36:32 +0000
Received: from BYAPR11MB3205.namprd11.prod.outlook.com
 ([fe80::589:9135:2039:62a1]) by BYAPR11MB3205.namprd11.prod.outlook.com
 ([fe80::589:9135:2039:62a1%4]) with mapi id 15.20.3045.018; Tue, 2 Jun 2020
 16:36:32 +0000
From: "Daniel Walker (danielwa)" <danielwa@cisco.com>
To: "Jinhua Wu (jinhwu)" <jinhwu@cisco.com>
Subject: Re: [PATCH 2/2] mtd: spi-nor: intel-spi: fix forced writable option
Thread-Topic: [PATCH 2/2] mtd: spi-nor: intel-spi: fix forced writable option
Thread-Index: AQHWOPv5MjW7nhJ9bE2jDffSfrKqDA==
Date: Tue, 2 Jun 2020 16:36:31 +0000
Message-ID: <20200602163631.GH23028@zorba>
References: <20200518175930.10948-2-danielwa@cisco.com>
 <73a475fa-3c26-89ab-aac6-54f9b5b15936@ti.com>
 <190F24BF-EE4C-4C40-9101-C0AE6C9CEF53@cisco.com>
In-Reply-To: <190F24BF-EE4C-4C40-9101-C0AE6C9CEF53@cisco.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.9.4 (2018-02-28)
authentication-results: cisco.com; dkim=none (message not signed)
 header.d=none;cisco.com; dmarc=none action=none header.from=cisco.com;
x-originating-ip: [128.107.241.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96fb87e8-7d45-43fb-5460-08d807131b93
x-ms-traffictypediagnostic: BYAPR11MB2952:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB29526BDCC3B1BCB3EC520465DD8B0@BYAPR11MB2952.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +3fzTPMF6pmKuGtlrdQpye5/NyMOaaztoqfgAA3XeQrqBozydqTrHsgzzDdjcM0ySoTTa3CBLmK0v18H9CoRdDIaSaKSEZccaAKYi3dN2ngf20NwVq6IC3PqmjXmwxSi0oPWCl33X0ClD5C0w4z+8c+8clnVn9OovAAec2etQYDYhMDmdW0nmE721wrXG6v5RSYG7fDhilUDD00SDzwyNHmSMjgCLaJfF9aFvQfg2dO3ozyuUDtNRk4edMYpQ4Oulnw6GR/A01g8MQUefgty8wW84MrEtTHOOWqgU8hcI4qOu9C5ZSDFOcE8OmL6RoP3kTu1Q+CvitUr06dUHWYv1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3205.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(7916004)(396003)(136003)(39860400002)(366004)(376002)(346002)(83380400001)(54906003)(186003)(2906002)(66556008)(66946007)(64756008)(66476007)(71200400001)(66446008)(6636002)(316002)(4326008)(53546011)(33716001)(478600001)(1076003)(8676002)(33656002)(8936002)(9686003)(76116006)(86362001)(5660300002)(26005)(6506007)(6862004)(6512007)(6486002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: s+6tCNyOJ1N1K2ZT1qV7CrTsgaPB3BPZJEyz069gEzhaNUG4inFAMA0vQ7cZhyIugciOTzIb/gt7TpDSAj53f4Y4bvwmWTUAuNOykZWDCM2+R0Yiz3zNETJMtu/GfxQFm1jaBjVPebFomgpemJ2SBEpoKRgpNFfNaj0xXHrGH/UhmkcrJmDcb7XpQVL9lkHUB89Ll5CEzuwI+8QQKB9qynNV1BOAI6Fam5oycm/5uAVBsFumfFlA63PG3gJZ9HoAYgnh/bUdPRG8edWFcx74dhpQgKawU7esXjOInXCae5HDovIWFD1M4sHUsyuWha2Flp2ejY8a608uOwP/i3PdwAuCIMMbVDAxjuiVBLZ5f4FiE+X+8n/cXSaR7R1GbAcavQtOMLjGvsV61+kSXZJT+cee4WwXQz8zbeun9cmNJFgd6P8RL40C1rUu0qwqU+OLqyuuYF1d7LAS3GWbbZq8I9LJZjNJbr3NDUCOnoacIufZePm5J+KCxlhejifpxYh4
Content-ID: <0C8955D25A42EC4C8A30AF927EDA8A10@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 96fb87e8-7d45-43fb-5460-08d807131b93
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 16:36:32.0059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eZSwPHuSziwUFtyDzLrEOMWA8KOSe7Cht0jXggzvi2Vo2nfT2NWZmh7kYLyGD7zAE5xjUpmF6RfWgEAGs4MHTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2952
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.13, xch-rcd-003.cisco.com
X-Outbound-Node: rcdn-core-12.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_093640_380230_6F45B533 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.75 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.75 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Richard Weinberger <richard@nod.at>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 03:55:21PM +0000, Jinhua Wu (jinhwu) wrote:
> On 2020/5/28, 11:48 PM, "Jinhua Wu" <jinhwu@cisco.com> wrote:
> Hi Vignesh,
> BIOS just locked down parts of flash (such as, code region), others are still 
> writeable. Once the SPI locked down,it can't be override unless platfrom reset 
> and set WPD (write protect disable) will fail, so ispi->writeable will always
> be 0, then the driver will always make the whole flash read only, even if we
> have set the parameter writable = 1. 
> Now the flash is totally not writeable, just part of it is read only. Why not  making
> 'writeable' working when explicitly enabled?
> 
> >On 2020/5/28, 7:02 PM, "Vignesh Raghavendra" <vigneshr@ti.com> wrote:
> >    On 18/05/20 11:29 pm, Daniel Walker wrote:
> >    > This option currently doesn't work as expected. If the BIOS has this
> >    > flash as read-only there is no way to change this thru the driver.
> >    > There is a parameter which allows the flash to become writable with the
> >    > "writable" option to the module, but it does nothing if the BIOS has it
> >    > set to read-only.
> >    > 
> >    > I would expect this option would make the flash writable regardless of
> >    > the BIOS settings. This patch changes this option so the BIOS setting
> >    > doesn't stop the writable option from enabling read write on the flash.
> >    > 
> >
> >    I am confused you say "If the BIOS has this flash as read-only there is
> >    no way to change this thru the driver", so is it possible to override
> >    BIOS setting? If yes, where is the code in the driver?
> >
> >    What happens if BIOS is set to allow writes but writeable is set to 0?
> >
> >    Also please send patch series as thread (2/2 in reply to 1/2). You can
> >    use tool like git send-email
> >



Vignesh, do you still have concerns about this change ?


Daniel
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
