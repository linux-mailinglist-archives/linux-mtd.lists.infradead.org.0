Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FF97D3B1
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 05:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NaaA6kXDkzDFqR8vs630XmJxQW0FgVpjxPY/GPWk0JU=; b=EqU
	EvxDMWsfoSOzVEGy29kWwWoDGdzPHP01FO5dl+RJficmqztczK3A1y7YPDaZbCqvEVLWipAanYaL2
	o/hsKgiH4tcsrWdrrmLJDfFTEkE4IH3BlQpX0yiI6dA+/U21VukOGfvDL67IWMX/w7Yi62XB0fimd
	yfwo8Gw+gPCTqjwdW0aHCPWj4CJFJSRg5AEaSiuV+5J+zqHIg6H/Mmju7KbtvfgemKtWqY/SUnxze
	elTQM+fdGe581ogTZAbdHS88u/1KSn2YnivAG1KbmxzNkViUOGioIOFI0qJVuX4q3Y3udDkTrQoUu
	fXENqsvGLufCsyCnWIlOQLVECVTs0iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht1pK-0002yb-FG; Thu, 01 Aug 2019 03:32:26 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht1p5-0002r6-46
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 03:32:12 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id x713UuOU087114;
 Thu, 1 Aug 2019 11:30:56 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, marek.vasut@gmail.com, bbrezillon@kernel.org,
 dwmw2@infradead.org, computersforpeace@gmail.com, vigneshr@ti.com,
 richard@nod.at, robh+dt@kernel.org, stefan@agner.ch, mark.rutland@arm.com
Subject: [PATCH v6 0/2] Add Macronix raw NAND controller driver
Date: Thu,  1 Aug 2019 11:55:08 +0800
Message-Id: <1564631710-30276-1-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
X-MAIL: TWHMLLG4.macronix.com x713UuOU087114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_203211_432984_DD613D51 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, anders.roxell@linaro.org, juliensu@mxic.com.tw,
 linux-kernel@vger.kernel.org, paul@crapouillou.net, paul.burton@mips.com,
 liang.yang@amlogic.com, linux-mtd@lists.infradead.org,
 christophe.kerello@st.com, masonccyang@mxic.com.tw, lee.jones@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

v6 patch including:
1. compatible rename to "mxicy,multi-itfc-v009-nand-morph"
2. remove xxx_clk to xxx in DTS and driver.
3. patch mxic_nfc_data_xfer()

v5 patch including:
1. compatible rename to "macronix,nand-controller"
2. handle three clock in one
3. other minor patches

v4 patch back to only raw NAND controller driver instead of MFD,
raw NAND and SPI driver. This is based on MFD maintainer, Lee Jones
comments:
MFD is for registering child devices of chips which offer genuine
cross-subsystem functionality.
It is not designed for mode selecting, or as a place to shove shared code 
just because a better location doesn't appear to exist. 

v3 patch is to rename the title of SPI controller driver.
"Patch Macronix SPI controller driver according to MX25F0A MFD driver"

v2s patches is to support Macronix MX25F0A MFD driver 
for raw nand and spi controller which is separated 
form previous patchset:

https://patchwork.kernel.org/patch/10874679/

thanks for your review.

best regards,
Mason


Mason Yang (2):
  mtd: rawnand: Add Macronix raw NAND controller driver
  dt-bindings: mtd: Document Macronix raw NAND controller bindings

 .../devicetree/bindings/mtd/mxic-nand.txt          |  19 +
 drivers/mtd/nand/raw/Kconfig                       |   6 +
 drivers/mtd/nand/raw/Makefile                      |   1 +
 drivers/mtd/nand/raw/mxic_nand.c                   | 554 +++++++++++++++++++++
 4 files changed, 580 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/mxic-nand.txt
 create mode 100644 drivers/mtd/nand/raw/mxic_nand.c

-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
