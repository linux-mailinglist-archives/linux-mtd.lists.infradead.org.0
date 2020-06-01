Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99E41EA29B
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 13:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=15sB2kqt+XqBAL3f4no9CRPvPoEBH1dhK8IbueELQko=; b=VF45Ykc1GODY2M
	Z/5we6AbjWRKTu21rXvH15hcuT7mY0tEXRKetqpis7jlR+9pDjYKHUTjE+UbewcsMpRw81KbKVY+n
	NLRKz90hKtTABGh+qlTHVJXXktbz253AqWt7dvq7JdpvHXMPldxYA0W8KAVRS5n4OhXfZxQpGKqvx
	O5pNhsUCU74yERVZD4hS1as0oDsKICAaKRpwUsZxNJG02fZ8tPVUPNct8A8AQM5T1LvlKTRQczzld
	hDBkXS2TlntqF3HFQg3mpb9lT3YVLhVHYMZgQ50uN/KgNuAr4O/poaQ3Os7Aho33lTIpGYsWIss4H
	WrR+C9Htc1vMpZZ1k0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfibm-0007Jh-BO; Mon, 01 Jun 2020 11:27:58 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfibf-0007Ie-9W
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 11:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591010871; x=1622546871;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=u0HJJJrm9gKy+Xv4sbCi53lTGioiqeP5UqZAbAghS2Q=;
 b=gFW/UgC2dzWeKtKnwI2ByaEiCYlHfTPB9/JTggqfqOa6LM0bpDRILcJe
 MYE6x+8X0juLm494ZqRCUl+436CRwjv1qpOnxhbPZ87OwLdAHeNh4G86/
 Sp1M8fExEh6xg6ykHSbfnsQF3txKNsKeXq/cRDR5zl4IcC8IdZg4bJ/Ln
 jlBP/d3Ypo0e8v263HRzhOipWJ92z+5RCTRsZB/+XO3xVY7qY4d862pU5
 jHro33+Hyet7kcKang3sd/ZBLZfHKBeFN2E648tI3yl4xJRtyuQ6R0tNB
 KhFm9s7DQKVy+AD9Y1Fpbs2hZo65Ye6WXvINcNYpj/XZHkg6nDGJsr6cH Q==;
IronPort-SDR: TSIs8SR+GseAQIKSlWS0lNQBoQNyvw9SnsATr0T32H1doewakdXPW3uXK1NXoUhUjfrknqy5PP
 AB6c/cErd2j8zKsYEC6kPDr098JQoR1LCewkB3HPahdu7R6nfg/dz/1qBkAU+me6g9ncQwgx1B
 v2VeT3HDo37924wCiuaOdxw9xyJmIN+7h/Q/NjcLI5LZ6uaaYFp4+RGqrYfVPASaU5lSi9nQFf
 DHOn0uy8o4AzXDOxMRYbF6ujUPZTogTEpuQFHhVHAY1DqsXxZJ/8541phNMOmX3zaBWmoPcQQX
 MaU=
X-IronPort-AV: E=Sophos;i="5.73,460,1583218800"; d="scan'208";a="78475078"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jun 2020 04:27:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 1 Jun 2020 04:27:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 1 Jun 2020 04:27:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IGOP1CjmV0/dbRXbd0Zkpx0bKthgr6u1FW4I4+phHJBRmxPc8yEYlxShTsP9mlvVnXhQTGz+BZ1cxZV2GEo08FjIdWnTpb9RLnhIOXz3UaLe67Lrg3GNVragyH2B8m6Qui8KfBHRe4NjXA4l//ZoGP1ichIOz/G5TxAHXzAJG2Bdm/4+dVWUnjhNOfBWe6UJxBlFmXHgyp5qaNVQN1TBV3rB283vB5JT3H17ecrmPQgyxbMnVBUyhy70/ldXoMUrcnOHDRISuc7g8dLDdAAIrT+OMIb7KcgXMiYCsxk5/34KfgOMNFGXUP3Z2aI9BMWsfz3fU6AP7+CFBHO1NF/RGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qVBvDiBZuFlUZB4aQxsUBm5JR9R9tGHdfgqNDCUKx0=;
 b=LYxhakQb2ifJFKiNWvWk1QI+zPweCzDwsfnjxco5cYUkAA8l/zu8a1aDW9/qj306VdNuhdHcAsaPkBjNB87W4YKTdhSbWsU8eHBdOxrf0j/BRz8CvkazW5L1fsGRQfx6b3F+190Tk1su+DI9tPQG1Cazczv7pgxAMBZVBoZuALvMkVrE+WX7biWPljzvCw9KXMCLZpwHYbH1FH9xLei5AUWpnBDS1/M2UJAt0qaYupa7DrNLwwC0bfEmBjqSrwJ/T8J7Vs6dMsJP9rJdhjdlPIBF6VVwRwS9A/xl4pgyMnCaSPerVwb7w10hecHL7Braxw45slslzi3v6H3nHaFCXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qVBvDiBZuFlUZB4aQxsUBm5JR9R9tGHdfgqNDCUKx0=;
 b=K4cqF2Hj3j0z3wHbY/hgdBPGWCmjuwJ9VR6BO9ksLSUOjGGTo//sMKM2qv0QjAKg5lRubJvwgqVwlEFJgk9cXjgH+hSfb7KrQFMWS4NLZYwm9pVNf/xMqXwVJeIT7AXPzYqFQYYlfvP5PGYPdrVZM1IgS57ZKY/zLaErAzy3l94=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4337.namprd11.prod.outlook.com (2603:10b6:a03:1c1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Mon, 1 Jun
 2020 11:27:46 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 11:27:46 +0000
From: <Tudor.Ambarus@microchip.com>
To: <richard@nod.at>, <miquel.raynal@bootlin.com>, <vigneshr@ti.com>
Subject: [GIT PULL] mtd: spi-nor: Changes for 5.8
Thread-Topic: [GIT PULL] mtd: spi-nor: Changes for 5.8
Thread-Index: AQHWOAesZOnHsKNGgEC69CbwMc0BdA==
Date: Mon, 1 Jun 2020 11:27:45 +0000
Message-ID: <1826007.xKk83PxPNM@192.168.0.120>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nod.at; dkim=none (message not signed)
 header.d=none;nod.at; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bde371f5-71a3-44df-1ac6-08d8061eced1
x-ms-traffictypediagnostic: BY5PR11MB4337:
x-microsoft-antispam-prvs: <BY5PR11MB43373E1708DBE3168D0A1968F08A0@BY5PR11MB4337.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:820;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iScjdnpAW1aU3RUz0h5JqHwNYW9dVkW32HZw/M67fRM/ctxXwzZM7HvmG01DsvTVK0BbDbNIV2+6VM/EN7BXovd/dGyufMEl9Cxxl3QRLmScwD5wpXep5Fr7uAMVEtaItoKV1+T7AQa9BLC45tfcRUgTN0STRp3qsDMtBxWRnDtaTLuig0kEZUCw8ijaGKY0F5Zs9Mr7bCrGY1F1dixvclKsjHqCXPxRp6P2bEsllvN5dHvRefVmeNQPrAIztrPGFbLme4KH6YVdquoaQxLzz6vqIbdAhsGCyCIci0JQs+HdxmMwsEUIx+/ilESRotVqkGe9ZpQ6cWsmTpicRsVIQFnOZJrxaHHnp30C1ic9RKxycIs5GHJM2Emc6TnrgL6Q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(136003)(376002)(346002)(366004)(86362001)(9686003)(2906002)(110136005)(6512007)(478600001)(83380400001)(6486002)(66446008)(64756008)(54906003)(5660300002)(316002)(4326008)(26005)(186003)(66476007)(6506007)(66556008)(66946007)(91956017)(71200400001)(8676002)(14286002)(8936002)(76116006)(39026012);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: SAzDgOw64MTB4hTLePJHbJJFZukfG/xciXP7z7WCWLEN6my2zbKncTX06Fk+oJP3mCZcTzBzkxvfvrjLNH1TR83NivLe9doG9NYey3CAy9fWHtllJk7DYYBrzr3mI0Ey0h/C+IQhrLQ80ft4M5VIbjxBG5jS0l6gmhQ2ybVnd854yTjvUer4uxXF/cbNLTuMEc8X7LnEXOpAnHkdRFaJb6MB5j2WNPr/aWqTy2eyRcl2COHZa+NV4TSZx+bAN+3STuOc8q4/PLKDN3QRCtJrPi9dPB5WF+sfUQ+sYSpoqc4cWkXmo+MKEdTu6EP14n17oMrZJn6ksoQw5LMHxFu6/xiOlVpQ3p2emcbEp/vMVFL2qoliAu+KpfhlJGgFGr77Q9aISX/cPoFJaJ0AGzuVZvO+v0jnj0Bw8Fl4bIFgCCz7jf2yWitTikIyJMa49epTd3KwXRDlUQIHae3ViZvnlz0dSP3aolCMqsHFE38F/Ic=
x-ms-exchange-transport-forked: True
Content-ID: <0889D93AC10BA146ADE2FC20EBE05BA1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bde371f5-71a3-44df-1ac6-08d8061eced1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 11:27:45.9952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g0k8k00EcdnXdYsdE4mIWcQw/7frPGkMEIcmd7FCeynZ9KCe+uefp7fVaz0/DmQ43ThmW6YeaxdoEExWQcpGrG2TlaHnRvBEy2vlws3HV5M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_042751_451224_A06BBC9E 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: broonie@kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi, Richard,

This is the SPI NOR PR for 5.8. Small changes, nothing outstanding.

Cheers,
ta

The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/
spi-nor/for-5.8

for you to fetch changes up to e8aec15dd5842b5b11b0e621a2293348d3574a61:

  mtd: spi-nor: winbond: Fix 4-byte opcode support for w25q256 (2020-05-31 
08:34:16 +0300)

----------------------------------------------------------------
SPI NOR core changes:
- add, update support and fix few flashes
- prepare BFPT parsing for JESD216 rev D
- kernel doc fixes

----------------------------------------------------------------
Jungseung Lee (1):
      mtd: spi-nor: micron-st: Enable locking for n25q00

Mantas Pucka (1):
      mtd: spi-nor: winbond: Fix 4-byte opcode support for w25q256

Mason Yang (2):
      mtd: spi-nor: macronix: Add support for mx25l51245g
      mtd: spi-nor: macronix: Add support for mx25u51245g

Pratyush Yadav (2):
      mtd: spi-nor: sfdp: default to addr_width of 3 for configurable widths
      mtd: spi-nor: sfdp: prepare BFPT parsing for JESD216 rev D

Sascha Hauer (1):
      mtd: spi-nor: Add support for Cypress cy15x104q

Sergei Shtylyov (10):
      mtd: spi-nor: move #define SPINOR_OP_WRDI
      mtd: spi-nor: fix kernel-doc for 'struct spi_nor'
      mtd: spi-nor: fix kernel-doc for spi_nor::mtd
      mtd: spi-nor: fix kernel-doc for spi_nor::reg_proto
      mtd: spi-nor: fix kernel-doc for spi_nor::info
      mtd: spi-nor: fix kernel-doc for spi_nor::spimem
      mtd: spi-nor: core: fix kernel-doc typo for 
spi_nor_manufacturer_init_params()
      mtd: spi-nor: core: fix kernel-doc typo for spi_nor_[{info|sfdp}
_]init_params()
      mtd: spi-nor: spansion: fix writes on S25FS512S
      mtd: spi-nor: sfdp: add/use local variable in spi_nor_parse_bfpt()

Takahiro Kuwano (1):
      mtd: spi-nor: spansion: Enable dual and quad read for s25fl256s0

Tudor Ambarus (4):
      mtd: spi-nor: Uniformize the return value in spi_nor_*_ready()
      mtd: spi-nor: Fix description of the sr_ready() return value
      mtd: spi-nor: spansion: Differentiate between s25fl256s and s25fs256s
      mtd: spi-nor: Fix SPI NOR acronym

Xiang Chen (1):
      mtd: spi-nor: Enable locking for n25q128a11

Yicong Yang (1):
      mtd: spi-nor: Add support for s25fs128s1

 drivers/mtd/spi-nor/Kconfig                  |  4 ++--
 drivers/mtd/spi-nor/controllers/Kconfig      |  4 ++--
 drivers/mtd/spi-nor/controllers/aspeed-smc.c |  2 +-
 drivers/mtd/spi-nor/controllers/hisi-sfc.c   |  2 +-
 drivers/mtd/spi-nor/controllers/nxp-spifi.c  |  2 +-
 drivers/mtd/spi-nor/core.c                   | 22 +++++++++++-----------
 drivers/mtd/spi-nor/macronix.c               |  6 ++++++
 drivers/mtd/spi-nor/micron-st.c              |  6 +++++-
 drivers/mtd/spi-nor/sfdp.c                   | 34 +++++++++++++++++
+----------------
 drivers/mtd/spi-nor/sfdp.h                   | 11 +++++++++--
 drivers/mtd/spi-nor/spansion.c               | 44 +++++++++++++++++++++++++++
++++++++++++-----
 drivers/mtd/spi-nor/winbond.c                | 29 ++++++++++++++++++++++++++
+--
 include/linux/mtd/spi-nor.h                  | 24 ++++++++++++------------
 13 files changed, 134 insertions(+), 56 deletions(-)



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
