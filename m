Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15E01BDD61
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 15:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0vA/VMpGzdsdZJsTHxR/ycDkD1GJbG04kI6icUekJmg=; b=LAwZqylDfxaIVs
	btJsuXutTso214KjRw3RV3A4wS2sB29IjwTdmW7aSt0qu5uhwDEEw3UNz/TdFlNbb+D6X4I7jiMQq
	+V+y7ZSeiwvKR3cdHTnt0P1Iy3Te1wtT6zWwMepQAv7yM0+U61s+zdsVF9p9Rhgorlsf4hLgudzKK
	JXrM3Epo3fLOVkZ4zuvPMWphd2UdcbDlq+BCPcyyTPrPypfK+go0X17xTAVNWb8VseIVzzfg/SP+R
	sk0BklZKIymDAP1B/CIz5TGGEVcOLP1+usqvaVNTKWA57udD/P8f/HC81T/quSh2jd/Yrn1P8J/Tf
	qg2awMdPdoUZePyXp2xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTme7-0000oR-KC; Wed, 29 Apr 2020 13:21:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmdw-0000mL-3Q
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 13:20:53 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 400842A2198;
 Wed, 29 Apr 2020 14:20:50 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v2 0/6] mtd: rawnand: atmel: Convert the driver to exec_op()
Date: Wed, 29 Apr 2020 15:20:40 +0200
Message-Id: <20200429132046.583658-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_062052_281787_764911B3 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

This v2 splits changes to make the diff more readable and fixes a bug
reported by Tudor (thanks for testing/helping me debug the issue BTW).
Note that the patch propagating the CS information to sub operations
has been dropped since the new version no longer depends on it, but
will be posted as part of another series where it's needed (the
cafe_nand conversion).

Regards,

Boris

Boris Brezillon (6):
  mtd: rawnand: atmel: Enable the NFC controller at probe time
  mtd: rawnand: atmel: Drop redundant nand_read_page_op()
  mtd: rawnand: atmel: Use nand_{write,read}_data_op()
  mtd: rawnand: atmel: Use nand_prog_page_end_op()
  mtd: rawnand: atmel: Convert the driver to exec_op()
  mtd: rawnand: atmel: Get rid of the legacy interface implementation

 drivers/mtd/nand/raw/atmel/nand-controller.c | 464 +++++++++++--------
 1 file changed, 258 insertions(+), 206 deletions(-)

-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
