Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E053632FEF
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 14:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=badpkDCtLox2VbtfBa3YbvJEp9VhHEFhbWpNNMSzt2c=; b=gHDHsiPUSf/pvU
	2FLRhnqsLzNih8mIZf5Ff3+1soG1OaUu5L00udLbd0nWq8u+XO16sFwvbZlbSu7R1q9fBLgf/Y/lW
	WSKRQD94Hue975OvancORz0swNyxkDl+UQIA4wAp5mfOjRhdGyjhVSPBTe6TM73CcaZKVqoXUR80Z
	MyeR8UHtXOkuHe55+x8TBw4VmAD+rrKVLK5OSDfP4B+wKH/Y7NDJeVSIQshCSdukvXB/15iYiNj2h
	2hslRBSEvowcgBhDb8662GIbkYQscf88Wx1tkxLRgC9O8EGuZfuKiK2UDGLqo7c5W2UdYL0S2abUq
	ZJxuf+EeE7G5OeowrbxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmJK-000492-Mn; Mon, 03 Jun 2019 12:43:34 +0000
Received: from mail-eopbgr750057.outbound.protection.outlook.com
 ([40.107.75.57] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmJB-00047x-Fg
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 12:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tUUGMk3MkIrw/PhIngnqJp8/r4yLBUJClqPJHGbfysU=;
 b=Ltb58s6rrL6pZyWiRxY3PSzKbx5rybelOD4D5oQ8JYKZpJ7gQm3+DwPRpR9/XculdMw8gzDmKR9RhR/+GAea4ZrJkyoKmIHxt3kYyxqjp/8JE5kv53tjFWZ1AIKNGTvp5i82S/biteSRnVSealt/fNdzXNB78/G6yWiGqXB6VFs=
Received: from MN2PR08MB5951.namprd08.prod.outlook.com (20.179.85.220) by
 MN2PR08MB5872.namprd08.prod.outlook.com (20.179.86.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.18; Mon, 3 Jun 2019 12:43:21 +0000
Received: from MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::f0f7:f262:a3c6:ce23]) by MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::f0f7:f262:a3c6:ce23%7]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 12:43:21 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>, Brian Norris
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Vignesh
 Raghavendra <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>, Yixun
 Lan <yixun.lan@amlogic.com>, Lucas Stach <dev@lynxeye.de>, Anders Roxell
 <anders.roxell@linaro.org>, Stefan Agner <stefan@agner.ch>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, "Bean Huo (beanhuo)" <beanhuo@micron.com>,
 Paul Cercueil <paul@crapouillou.net>, Frieder Schrempf
 <frieder.schrempf@kontron.de>, Chuanhong Guo <gch981213@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 00/12] Introduce generic ONFI support
Thread-Topic: [PATCH v3 00/12] Introduce generic ONFI support
Thread-Index: AdUaAtp/ATLriW8VSquJuchLDLomcg==
Date: Mon, 3 Jun 2019 12:43:20 +0000
Message-ID: <MN2PR08MB59514E77250C3F0DA76D4801B8140@MN2PR08MB5951.namprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.81.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e97596f8-2c51-45c4-d672-08d6e8210f74
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR08MB5872; 
x-ms-traffictypediagnostic: MN2PR08MB5872:|MN2PR08MB5872:
x-microsoft-antispam-prvs: <MN2PR08MB5872E557374DAD4810A0F6CDB8140@MN2PR08MB5872.namprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(346002)(39860400002)(366004)(189003)(199004)(76116006)(14454004)(99286004)(7696005)(71200400001)(71190400001)(66446008)(5660300002)(9686003)(52536014)(73956011)(66946007)(66476007)(66066001)(66556008)(64756008)(2201001)(55236004)(6116002)(478600001)(316002)(102836004)(110136005)(2906002)(3846002)(6506007)(86362001)(7416002)(53936002)(486006)(26005)(2501003)(8936002)(476003)(33656002)(14444005)(256004)(8676002)(74316002)(81166006)(81156014)(6436002)(68736007)(7736002)(305945005)(186003)(25786009)(55016002)(41533002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR08MB5872;
 H:MN2PR08MB5951.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ro/o3TCaLIO+iKNyLwcyXV12v42Ut+045NvAURHK1X+TeoMHwAhNYlFJTVnT3C+D1z7RZ8C7Seob1kAo5gyhHtt+RF8HNbjqEmdSUwciA0NKFAJMfc/2k+baVpIeZuNbSvDtHvn0dqEt87ApQhVpURIusTND1cZ4z830tj3Pa3Ih+51Q2n0cEHP8PrIphc8rZfVuTkP5EnXMh3q8yneCW9qtK1H7wkm4zo3obXD5z9kKlret+AFFb/LPxB0a44eLmTseefwuRJ022Eiajb470n8A50g4L8l+EnPkFZMmgwayniS98h71tmbAiQ0oKIIxGhxGDr1vVPRE9Q6V2fQcrsUS9fZRYGwxL0o2amCx+BcbdJCoTh4lu2ZT8Xx1pTiAVsmXfzdPg/Ty6MuX9x7sWpoeGtDtARCPWoS33eobcT4=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e97596f8-2c51-45c4-d672-08d6e8210f74
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 12:43:20.8355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sshivamurthy@micron.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR08MB5872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_054325_630141_AA4BB17D 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Current support to ONFI parameter page is only for raw NAND, this patch
series turn ONFI support into generic. So that, other NAND devices like
SPI NAND can use this.

There are five parts in this series.
1. Prepare for turning ONFI into generic
2. Turn ONFI into generic, which can be used by SPI NANDs later
3. Turn SPI NAND core to use parameter page
4. Redesign Micron SPI NAND driver implementation
5. Support for new Micron SPI NAND devices

Changes in V3
-------------

* Rebased to nand/next
* Split the patches as per suggestion
* Addressed the comments
* Some fixes which I missed in last version

Shivamurthy Shastri (12):
  mtd: rawnand: turn nand_onfi_detect to use nand_device
  mtd: rawnand: move ONFI related functions to nand.h
  mtd: rawnand: move sanitize_strings to nand_onfi.c
  mtd: rawnand: introduce struct onfi_helper
  mtd: rawnand: turn ONFI support to generic
  mtd: nand: Move ONFI code into nand/ directory
  mtd: spinand: turn SPI NAND to support parameter page detection
  mtd: spinand: add parameter page fixup function
  mtd: spinand: micron: prepare for generalizing driver
  mtd: spinand: micron: Turn driver implementation generic
  mtd: spinand: micron: Fix read failure in Micron M70A flashes
  mtd: spinand: micron: Enable micron flashes with multi-die

 drivers/mtd/nand/Makefile        |   2 +-
 drivers/mtd/nand/onfi.c          | 180 ++++++++++++++++++
 drivers/mtd/nand/raw/Makefile    |   1 -
 drivers/mtd/nand/raw/internals.h |   4 -
 drivers/mtd/nand/raw/nand_base.c | 236 +++++++++++++++++++++--
 drivers/mtd/nand/raw/nand_onfi.c | 312 -------------------------------
 drivers/mtd/nand/spi/core.c      | 111 ++++++++++-
 drivers/mtd/nand/spi/micron.c    | 107 ++++++++---
 include/linux/mtd/nand.h         |  30 +++
 include/linux/mtd/rawnand.h      |   5 +
 include/linux/mtd/spinand.h      |   6 +
 11 files changed, 628 insertions(+), 366 deletions(-)
 create mode 100644 drivers/mtd/nand/onfi.c
 delete mode 100644 drivers/mtd/nand/raw/nand_onfi.c

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
