Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB931AFA2A
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Apr 2020 14:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jKFyYupK3gQWLFL2pINJ950ZBGr0Xt9Y9aFaQJi+780=; b=a8QrycXiD6fM+S
	zShEsYM1PiGUoGSWC2QHgJ4H7eL/RrdoVxt6z0WSHFCBA2zjvCBvtG2zxD8c2hYjen7CWdgC02b7i
	CG7HO9PeBTmB4zxfJ3M8DZ6RBLOqCz1Swy8bHk7EPUYMkLqzxuS+AAZogo853aVrjxZVDyN5YABnf
	VZi1HZiRGqGhpNlzNu7UXfbE1dGLalansGPFSo2njNDdAx7TWzDwgc13rCUEeRzD39ZG3KaeAuuSX
	DRXqH6774wi8+aLpMvyAZMxa4c03iDijwA5BDQuhEHsT/TL/2ZJQoW0VHg+MNc/mxktAB66dwKHSX
	hpEqB+ToOXaY2c8KTzzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9QY-0005vX-7K; Sun, 19 Apr 2020 12:52:02 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9QI-0005sW-BS
 for linux-mtd@lists.infradead.org; Sun, 19 Apr 2020 12:51:47 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 63CA827E609;
 Sun, 19 Apr 2020 13:51:44 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 0/9] mtd: rawnand: bcm47xx: Convert the driver exec_op()
Date: Sun, 19 Apr 2020 14:51:31 +0200
Message-Id: <20200419125140.1307309-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055146_520203_35019090 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

Recently I've been CC-ed on a few new driver submissions that were
implementing the legacy interface, which made me realize the only way
to prevent that from happening was to:

1/ convert all existing drivers to exec_op()
2/ document the new way of doing things

#2 is definitely needed, but I don't think it's be enough, as people
tend to re-shuffle what they had in their downstream kernel when
they submit something upstream, and those downstream drivers were most
likely based on the legacy cmd_ctrl/cmdfunc() interface.

So here I am, trying to convert existing drivers one by one. I'd be
grateful if someone from the OpenWRT community (Rafal?) could test/help
me debug that one as I don't have the HW myself.

Regards,

Boris

Boris Brezillon (9):
  mtd: rawnand: Add an is_last flag to nand_subop
  mtd: rawnand: bcm47xx: Drop dependency on BCMA
  mtd: rawnand: bcm47xx: Allow compiling the driver when COMPILE_TEST=y
  mtd: rawnand: bcm47xx: Demistify a few more things
  mtd: rawnand: bcm47xx: Implement the exec_op() interface
  mtd: rawnand: bcm47xx: Get rid of the legacy implementation
  mtd: rawnand: bcm47xx: Simplify the init() function
  mtd: rawnand: bcm47xx: Merge all source files
  mtd: rawnand: bcm47xx: Move the driver to drivers/mtd/nand/raw/

 drivers/mtd/nand/raw/Kconfig                  |   3 +-
 drivers/mtd/nand/raw/Makefile                 |   1 +
 drivers/mtd/nand/raw/bcm47xxnflash.c          | 353 ++++++++++++++
 drivers/mtd/nand/raw/bcm47xxnflash/Makefile   |   5 -
 .../nand/raw/bcm47xxnflash/bcm47xxnflash.h    |  26 -
 drivers/mtd/nand/raw/bcm47xxnflash/main.c     |  77 ---
 .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  | 450 ------------------
 drivers/mtd/nand/raw/nand_base.c              |   2 +
 include/linux/mtd/rawnand.h                   |   2 +
 9 files changed, 359 insertions(+), 560 deletions(-)
 create mode 100644 drivers/mtd/nand/raw/bcm47xxnflash.c
 delete mode 100644 drivers/mtd/nand/raw/bcm47xxnflash/Makefile
 delete mode 100644 drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
 delete mode 100644 drivers/mtd/nand/raw/bcm47xxnflash/main.c
 delete mode 100644 drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c

-- 
2.25.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
