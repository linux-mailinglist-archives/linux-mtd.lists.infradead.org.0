Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F981E76D0
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lycSq5/ipeMR+awR6h6X1Ey3mhHvA0PSatzbG0rv6Xs=; b=KJ/
	YSlrb7A1KwiWFzxAHv6hhQvamRe11t5QN5jO0CMLGZryzZDiSSnbStmYchjgtLrWCcphhnKX/uGnC
	Qa7TyJECoF+vYDg15WAYbcYmznSFYj6BKO0nyPaVLNI1uqrbHJdIIhsOBqDO4HI2whFQ6tdVviIir
	6P+SXHkHEu0EMCZ0mWcoGf1nIYmMTHhRB8niE+IKi/5YJSOUf4PO1nWONcLrVygODUgSRU42SANOI
	dFwNxwWRhm71QDjD2mZ9TpMPmahGTB9qJqS2b4JkaOj8qn6YHYlO4hkBbmECoiE4jWMxoii5bmQHx
	ouGLxCaNgQvvN570lRCub9qXyGbuiBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZa1-0001Eg-RU; Fri, 29 May 2020 07:37:25 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZZW-0000qp-Ev
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:36:56 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id 04T7aHpu067318;
 Fri, 29 May 2020 15:36:17 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: broonie@kernel.org, tudor.ambarus@microchip.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, boris.brezillon@collabora.com,
 matthias.bgg@gmail.com
Subject: [PATCH v4 0/7] mtd: spi-nor: add xSPI Octal DTR support
Date: Fri, 29 May 2020 15:36:08 +0800
Message-Id: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
X-MAIL: TWHMLLG4.macronix.com 04T7aHpu067318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_003654_797398_D403BFB8 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
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
Cc: juliensu@mxic.com.tw, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 Mason Yang <masonccyang@mxic.com.tw>, p.yadav@ti.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

JESD216C has defined specification for Octal 8S-8S-8S and 8D-8D-8D.
Based on JEDEC216C Basic Flash Parameter Table (BFPT) driver extract
DWORD-18: command and command extension type.
DWORD-20: Maximum operation speed of device in Octal mode.

xSPI profile 1.0 table:
DWORD-1: Read Fast command, the number of dummy cycles and address nbytes
	 for Read Status Register command.
DWORD-2: Read/Write volatile Register command for CFG Reg2.
DWORD-4 and DWORD-5: dummy cycles used for various frequencies based on
maximum speed of device from BFPT 20th DWORD.

Ccommand sequences to change to octal DTR mode:
The length of each command sequence is 8 per byte for single SPI mode and
patching driver to parse and execute these sequences for octal DTR mode.

By Vignesh's comments, this patches set is dependency on Pratyush's
[1][2][5][7][8] and [10][12].

Tested on Macronix's Zynq PicoZed board with Macronix's SPI controller
(spi-mxic.c) driver patched on mx25uw51245g Octal flash.

[1] https://patchwork.ozlabs.org/project/linux-mtd/patch/20200525091544.17270-2-p.yadav@ti.com/
[2] https://patchwork.ozlabs.org/project/linux-mtd/patch/20200525091544.17270-3-p.yadav@ti.com/
[5] https://patchwork.ozlabs.org/project/linux-mtd/patch/20200525091544.17270-6-p.yadav@ti.com/
[7] https://patchwork.ozlabs.org/project/linux-mtd/patch/20200525091544.17270-8-p.yadav@ti.com/
[8] https://patchwork.ozlabs.org/project/linux-mtd/patch/20200525091544.17270-9-p.yadav@ti.com/
[10] https://patchwork.ozlabs.org/project/linux-mtd/patch/20200525091544.17270-11-p.yadav@ti.com/
[12] https://patchwork.ozlabs.org/project/linux-mtd/patch/20200525091544.17270-13-p.yadav@ti.com/

Summary of change log
v4:
Removed Pratyush's patches set part.

v3:
Add support command sequences to change octal DTR mode and based on
part of Pratyush's patches set.

v2: 
Parse BFPT & xSPI table for Octal 8D-8D-8D mode parameters and enable Octal
mode in spi_nor_late_init_params().
Using Macros in spi_nor_spimem_read_data, spi_nor_spimem_write_data and
so on by Vignesh comments.

v1:
Without parsing BFPT & xSPI profile 1.0 table and enter Octal 8D-8D-8D
mode directly in spi_nor_fixups hooks.


thnaks for your time and review.
best regards,
Mason

Mason Yang (7):
  mtd: spi-nor: sfdp: get octal mode maximum speed from BFPT
  mtd: spi-nor: sfdp: parse xSPI Profile 1.0 table
  mtd: spi-nor: sfdp: parse command sequences to change octal DTR mode
  mtd: spi-nor: core: add configuration register 2 read & write support
  mtd: spi-nor: core: execute command sequences to change octal DTR mode
  spi: mxic: patch for octal DTR mode support
  mtd: spi-nor: macronix: Add Octal 8D-8D-8D supports for Macronix
    mx25uw51245g

 drivers/mtd/spi-nor/core.c     | 151 ++++++++++++++++++++++++-
 drivers/mtd/spi-nor/core.h     |  41 +++++++
 drivers/mtd/spi-nor/macronix.c |  55 +++++++++
 drivers/mtd/spi-nor/sfdp.c     | 246 +++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/spi-nor/sfdp.h     |   4 +
 drivers/spi/spi-mxic.c         |  98 ++++++++++------
 6 files changed, 562 insertions(+), 33 deletions(-)

-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
