Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996F71E7E72
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 15:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1A9PUx9TVTIoZXXdN8oUjdhUFMJbBaL8RHiLgDOTNXA=; b=oBTTgl14uPp6KK
	/OPUL+vYuE/v6I61KOuXMSILB7DXxkSfaYUMvuJ9+IrWdv33same9c0YZei1soSdhHeX3aquaxMll
	lL+MLW/YXxsY3HO4TV33ZHkenQFv+PNZZ1n0gbMPM7qkwyUsfWvIfb2cogGSphx2qIWvteEf0vFok
	OLQJm2bwJi5OY1XhrKSDhjwWy+PZFsd9wM1vcvB9pigojbL+X9buW5Cqyi1m2UmN9ytvASHiRMMVP
	QvPHwLq5X+s9bpmhzxlAJdEVKkTLr/4sAR2+cTiMpYw+d7AVWmnnLldEgZ6YdYUi2I+VrWVPVg1UB
	dh0ddxTmm2k/dn/uyEcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeesj-0001eI-7a; Fri, 29 May 2020 13:17:05 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeert-0001F2-5f; Fri, 29 May 2020 13:16:15 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 94D42FF813;
 Fri, 29 May 2020 13:16:03 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v8 0/5] Preparation to the generic ECC engine abstraction
Date: Fri, 29 May 2020 15:15:57 +0200
Message-Id: <20200529131602.21532-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_061613_354356_37999901 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Su <juliensu@mxic.com.tw>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This is a respin of the end of my previous series, just the patches which needed to be fixed.

Changes in v8:
* Split "Convert generic NAND bits to ECC framework" into several peaces:
  > added two helpers
  > converted SPI-NAND then raw-NAND.
* Fixed a comment.
* Used the _ooblayout suffix instead of _layout.

Miquel Raynal (5):
  mtd: nand: Convert generic NAND bits to use the ECC framework
  mtd: rawnand: Hide the generic OOB layout objects behind helpers
  mtd: rawnand: Write a compatibility layer
  mtd: rawnand: Move generic OOB layouts to the ECC framework
  mtd: rawnand: Move the user input parsing bits to the ECC framework

 drivers/mtd/nand/ecc.c                        | 314 +++++++++++++++
 drivers/mtd/nand/raw/Kconfig                  |   1 +
 drivers/mtd/nand/raw/arasan-nand-controller.c |   2 +-
 drivers/mtd/nand/raw/atmel/nand-controller.c  |   5 +-
 drivers/mtd/nand/raw/davinci_nand.c           |   3 +-
 drivers/mtd/nand/raw/denali.c                 |   3 +
 .../mtd/nand/raw/ingenic/ingenic_nand_drv.c   |   6 +-
 drivers/mtd/nand/raw/nand_base.c              | 380 ++++--------------
 drivers/mtd/nand/raw/nand_toshiba.c           |   2 +-
 drivers/mtd/nand/raw/sunxi_nand.c             |   3 +-
 drivers/mtd/nand/raw/tegra_nand.c             |   5 +-
 drivers/mtd/nand/raw/vf610_nfc.c              |   2 +-
 include/linux/mtd/nand.h                      |  23 +-
 include/linux/mtd/rawnand.h                   |  17 +-
 14 files changed, 428 insertions(+), 338 deletions(-)

-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
