Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF991B1184
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Apr 2020 18:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzHCgqs5HksjSRjz6Sfbgv9sJQ9wSxPKbicnWWC0BGA=; b=tNGOZCUpcbnIZ9
	+UgghMGcOEi7Hi4A8Gw8ldKl/FexzDRxLpAG2CZyDNL0LhtB4Gp/K78UVuTl6x/peZBNsYj2irmjw
	OdKQrjVN0MLs5UpYeeM8OB8MNG9VUWhF9/zyLQ+uDw3KraGBh0Ozbn0UdfulpcgWAwYNAjckrTJMe
	woNubovENa7d+hONng4ceiQJOLEJs6qsjY8T3wkJftXwAC1uIFajhtBsb3JJbXpwtfoDzfaMFY6sw
	Ym7wGVnSH7/4hTZZ/h1yK5rdwmJFW42Dn+YD1HLyfSfIPxYZ6ghlbfAXX38a3ThK7WJNTbWVdlcET
	QIvAsEvQSoEUDhNpX8EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZFW-0007gi-LO; Mon, 20 Apr 2020 16:26:22 +0000
Received: from alln-iport-6.cisco.com ([173.37.142.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZF9-0007aG-43
 for linux-mtd@lists.infradead.org; Mon, 20 Apr 2020 16:26:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=851; q=dns/txt; s=iport;
 t=1587399959; x=1588609559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=utCJ3QKeNacrKEBoiI5caG8ulqWSPqIIhsv+lc5RqDo=;
 b=PKhIenephrOj2G7yJauJKE6tiozBS+osFMrnFr+54KS5d8eXQ7fA1kNB
 +4VW1Uw8p09k4S+sGY4mk9Nq77fd+Uw0e9bpwT8WUU2Cu065QakyTuxWR
 AZ1/SbPtFV8dsNnn/nlxwVz7sgJfltr1SJ+Ld57LyjGJ6raMPTCw7JYz1 g=;
IronPort-PHdr: =?us-ascii?q?9a23=3AH7U5mRb4NwwCTV+kv7IMxmr/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gabRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8KavmZio7EcBdXXdu/mqwNg5eH8OtL1A=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BFAQCUzJ1e/5RdJa1mHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWkFAQELAYFTUQWBRCAECyoKh1kDimZOghGPJxSIaoEuFIEQA1Q?=
 =?us-ascii?q?KAQEBDAEBLQIEAQGERAKCDyQ2Bw4CAwEBCwEBBQEBAQIBBQRthVYBC4VyAQE?=
 =?us-ascii?q?BAxIoBgEBNwEPAgEIGB4QFB4nBA4FIoVQAy4BpHwCgTmILTWCJ4MAAQEFhSg?=
 =?us-ascii?q?Ygg4JFIEkAYJiiVYagUE/hCE+hA8KARIBISyFRZBvoRYKgkSNdYlqKQ6cRC2?=
 =?us-ascii?q?PQJxrAgQCBAUCDgEBBYFZATFmcHAVgyRQGA2RWINzilV0gSmNGwGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.72,407,1580774400"; d="scan'208";a="492496551"
Received: from rcdn-core-12.cisco.com ([173.37.93.148])
 by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 20 Apr 2020 16:25:54 +0000
Received: from XCH-ALN-003.cisco.com (xch-aln-003.cisco.com [173.36.7.13])
 by rcdn-core-12.cisco.com (8.15.2/8.15.2) with ESMTPS id 03KGPsUa000491
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Mon, 20 Apr 2020 16:25:54 GMT
Received: from xhs-aln-001.cisco.com (173.37.135.118) by XCH-ALN-003.cisco.com
 (173.36.7.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 20 Apr 2020 11:25:54 -0500
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-aln-001.cisco.com
 (173.37.135.118) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 20 Apr 2020 11:25:54 -0500
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Mon, 20 Apr 2020 12:25:53 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSGUNbY7dya8MiTWF05rAsBgRE92TFLUxXspLfIJ9gP0B0o+39dGrTFmyRYgkfnt2Pieqg1j+8hrzqWF0SuN1v241UbvxG9LXsKJ5bILqpHETCb4fnk9P/JWIPCwAyzxFxYn7xkLKL8ZYOXTTpF+FuXMMn7MpUETUjfZam5PryqJ81Ogy40BDRl0nUL9jnTunWn4p2zmHnhXD4BeN8cZg0VkpzSfqZYLs41RHQZXUbO5tJKImbs/JfmQV11IfbPSc2BuNf/gYwO7O4eFOwdlxVh9wWStDcaofYBEuKm25LJ2kSz6XGBUyYiXwEhntumqGo7Mb08JlrZduLSrx/ydVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utCJ3QKeNacrKEBoiI5caG8ulqWSPqIIhsv+lc5RqDo=;
 b=GFqAu3APjDmRFuJg185jsuaIN/dku33SEr++XJdFtpzI+6CYA8/jnfiqOtylR4rv3PBwdVHQ7IGCHMSaXiYj+2f5JgkgFgiyXFSHl27pGo9dgsxlTB/Z3nsQbTWvTrZdIVKAXKUbBeQnCG24gqD0RCFD84VkrUHN69lKL3BPTfjaDbTLXIpswWvoYicQoxPWGuNmFIJjCB019itQX0mXbyxVvL8UiUiZdfZezK6NojFtpHsfF01NvYPbKVA7Ujb1rKHh0hgpp25CVhFUzoeUPNQZqUEj2wgy1SKfOHXzueoBU1KSSIl+DS9SE5zPDH5Gm+mvOOioRNebNLIvaOnUmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utCJ3QKeNacrKEBoiI5caG8ulqWSPqIIhsv+lc5RqDo=;
 b=JLAboX9oNtKkaMct9BFwarAOT0x5ce9jA3fTpqsHFWhKfbREP8gL9ouTw1k/Xi4LAyNzZFYdJAJA4LFq+2G1HDj+xnZXhEWJvMZ1eB67avdJB+Q4Ra2Ge1STsI78yCA/vU+gty3vORAceB2fvrQMn6fKlV2hmZRvJNlzwn32YTk=
Received: from BYAPR11MB3205.namprd11.prod.outlook.com (2603:10b6:a03:1e::32)
 by BYAPR11MB3336.namprd11.prod.outlook.com (2603:10b6:a03:1a::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 16:25:51 +0000
Received: from BYAPR11MB3205.namprd11.prod.outlook.com
 ([fe80::d015:3039:2595:7222]) by BYAPR11MB3205.namprd11.prod.outlook.com
 ([fe80::d015:3039:2595:7222%7]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 16:25:51 +0000
From: "Daniel Walker (danielwa)" <danielwa@cisco.com>
To: "Tudor.Ambarus@microchip.com" <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH] mtd: spi-nor: Add 4B_OPCODES flag to n25q256a
Thread-Topic: [PATCH] mtd: spi-nor: Add 4B_OPCODES flag to n25q256a
Thread-Index: AQHWFzBbbqQ06SrDG0Ov1Hkds10F6g==
Date: Mon, 20 Apr 2020 16:25:51 +0000
Message-ID: <20200420162550.GZ24466@zorba>
References: <20200417174620.16420-1-danielwa@cisco.com>
 <12178429.kzmL6e4XO6@192.168.0.120>
In-Reply-To: <12178429.kzmL6e4XO6@192.168.0.120>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.9.4 (2018-02-28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=danielwa@cisco.com; 
x-originating-ip: [128.107.241.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54016b60-8d74-4013-feb6-08d7e5477ded
x-ms-traffictypediagnostic: BYAPR11MB3336:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB33363C627A66529D0706AD43DDD40@BYAPR11MB3336.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3205.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(7916004)(366004)(396003)(376002)(346002)(39860400002)(136003)(86362001)(1076003)(5660300002)(4744005)(26005)(54906003)(478600001)(33656002)(6486002)(33716001)(316002)(2906002)(6506007)(53546011)(8936002)(64756008)(66946007)(9686003)(66476007)(66556008)(6512007)(66446008)(76116006)(6916009)(4326008)(186003)(8676002)(71200400001)(81156014);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dPCtW9dovqN52+L24n/PJDMSTR+h71eWuujwtMqeK6aHCn9NbF81Hs89ClSCWwP1K9EM+AK11SfiGqu0w4nvy1CAbnN97fvNrwjYwr7ik6YfAEMqmZoQOyuKmVpMKafJ13/G0D3mlnPkVahEL+NPFAVTqozLVm3GoL78C2KoCMWo2Tv0PV0bJq1fmdkSoB9LzFeNvl7XoZf8KRFIGrYdhu2ZW92MUFztI2Rts0tUL202myAalEtVmmrhaObZFOyzeVXGPHjgCrcKkifWXCozS190LNg5G7n8X1TXiKOoibOj769cVbTa9XitMpnA7+aAtgUW7WAtOQab6jsaKKJInrLcySrp41ooRTc1nyl8swIQAZqTUFKP8f/tcZBs1txvTnNCtlqf8hHGtjTtrovydRkeOHu2g1fxbFftt6Rg2rT4AAQ6Vs22bVyza5CV2RYG
x-ms-exchange-antispam-messagedata: ywWbfZ0jZnkbSgGoxnPaCixZu4udcqIpJ+X5d7a0FB+1GSMx4brbGhMR57iIoxzquuRKFtRVUHfAWjRa3US+jErhrkwhqLXA8dRX150VBEfE6rncEzQgK3HqfuRbI3Robw65WiGTzepzHTw4M24KDQ==
Content-ID: <79F3F390E17E4B4A8410F2424536F794@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 54016b60-8d74-4013-feb6-08d7e5477ded
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 16:25:51.3383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aMIKVq8LPthx6ADaNF2d369iCX9VMq2MiQQMGdKJKmzojZp+zCQzTTL5xeAd/ZY+20GO11OrD/2gjs5jYHgo3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3336
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.13, xch-aln-003.cisco.com
X-Outbound-Node: rcdn-core-12.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_092559_327170_1D391CF6 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.142.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>, "richard@nod.at" <richard@nod.at>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 03:45:59PM +0000, Tudor.Ambarus@microchip.com wrote:
> Hi, Daniel,
> 
> On Friday, April 17, 2020 8:46:19 PM EEST Daniel Walker wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> > content is safe
> > 
> > The n25q256a supports 4-byte opcodes so lets add the flag.
> 
> This is not true for all the n25q256a flashes. SPINOR_OP_PP_4B, 
> SPINOR_OP_BE_4K_4B and SPINOR_OP_SE_4B are valid just for the part numbers 
> N25Q256A83ESF40x, N25Q256A83E1240x, and N25Q256A83ESFA0F.
> 
> You need to differentiate between the aforementioned flashes and the rest in 
> the n25q256a, in order to add the 4-byte opcodes flag.

How do you suggest I do that ? Can I add a new entry into this table with more
specific information about the chips ?

Daniel
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
