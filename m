Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37C7E2ADC
	for <lists+linux-mtd@lfdr.de>; Thu, 24 Oct 2019 09:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QQ2Q+iFdunzV6YUnnoj0pvymSgjZgRnh6Gkqlr3v35A=; b=ad+
	1U6KVkSVg4CSjtOx55xX9WBe5uSYdPBB/ns0CBw5PPeL5HpGswOL1bmv1Os6g72PTbtVP66hH04kT
	B5Fx0eOFKhJBHI6K37jz68557f9zZMh1Ak5zuhbGCAY250l8kwvCnIDnt4GcVVlfRrePO/53n5tba
	5muHUif75I9H4x46yPu/bTZ7i/JHyy7GnhJozrPyZ9jczDSGKvKphAO/DAKjRbHM33vWEK8YBTs/V
	ZNRRQ+0oXrqhgrHkiEjwcXbu6OrGOltBUNVUrOGJU0dS2s+J1ActVydWHMy4rXdE+LWAu9xSNrjS4
	8aUP2ZkNPsDIpSUkpP3ReYe4YT3sJBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXL4-0003RH-G9; Thu, 24 Oct 2019 07:15:18 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXKw-0002AP-9E
 for linux-mtd@lists.infradead.org; Thu, 24 Oct 2019 07:15:11 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id x9O7E52u080302;
 Thu, 24 Oct 2019 15:14:05 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, marek.vasut@gmail.com,
 dwmw2@infradead.org, bbrezillon@kernel.org,
 computersforpeace@gmail.com, vigneshr@ti.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v4 0/2] mtd: rawnand: Add support Macronix NAND randomizer 
Date: Thu, 24 Oct 2019 15:40:05 +0800
Message-Id: <1571902807-10388-1-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
X-MAIL: TWHMLLG4.macronix.com x9O7E52u080302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_001510_595072_879F5FD8 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: juliensu@mxic.com.tw, devicetree@vger.kernel.org, masonccyang@mxic.com.tw,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

changelog
v4:
coding patch & add a new DTS for randomizer enabled.

v3:
To enable randomizer by specific DT property in children nodes,
mxic,enable-randomizer-otp;

v2:
To enable randomizer by checking chip options NAND_NO_SUBPAGE_WRITE

v1:
To enable randomizer by sys-fs

thanks for your time & review.
Mason

Mason Yang (2):
  mtd: rawnand: Add support for Macronix NAND randomizer
  dt-bindings: mtd: Document Macronix NAND device bindings

 .../devicetree/bindings/mtd/nand-macronix.txt      | 20 +++++++
 drivers/mtd/nand/raw/nand_macronix.c               | 69 ++++++++++++++++++++++
 2 files changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/nand-macronix.txt

-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
