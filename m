Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A8016392
	for <lists+linux-mtd@lfdr.de>; Tue,  7 May 2019 14:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aN0SM898y3oP8z0ZF/esxYCtF6vePlH5iGGohGoHrnU=; b=GG3C2qsdklBFxzoanlxJDTaaaA
	bt2wy8goMcO8+wbvUIL1SZ0im7RsM4tEd8z0U0UmkiruMnKDe4YHtQ3ACCrqOcOS9NPKNdQln7RBQ
	i3qOdaSzZ6xsjb6H393Q1lu5ruxURoGbh1yINMUd92NRznwAYYUWAa/4DiDiIFV9nG9Ff70wQdYnJ
	i/buQkHSKMIqFssKOhR6I+aikk164lwQvjp45xlG9B4ceQ0NMV2/al+xlnDmB8oDNFTm2LUvYsiMt
	z+KWp93f0GG535aOOe/oB2saskEplOjU6irg9nYGfU0jGvwmUeZWGKRvab9SjnRcf0m3nGx6i88+H
	kkISoUng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNz15-0001a2-PX; Tue, 07 May 2019 12:16:15 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNz0x-0001ZM-SC
 for linux-mtd@lists.infradead.org; Tue, 07 May 2019 12:16:09 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3DED31A0296;
 Tue,  7 May 2019 14:16:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A880C1A029C;
 Tue,  7 May 2019 14:16:03 +0200 (CEST)
Received: from nxp.com (lsv03080.swis.in-blr01.nxp.com [92.120.146.77])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id DF372402EB;
 Tue,  7 May 2019 20:15:59 +0800 (SGT)
From: Jagdish Gediya <jagdish.gediya@nxp.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: defconfig: Enable access to CFI-compliant
 memory mapped NOR flash
Date: Tue,  7 May 2019 17:45:54 +0530
Message-Id: <1557231354-11758-2-git-send-email-jagdish.gediya@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557231354-11758-1-git-send-email-jagdish.gediya@nxp.com>
References: <1557231354-11758-1-git-send-email-jagdish.gediya@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_051608_043986_95B1E3D2 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: leoyang.li@nxp.com, Jagdish Gediya <jagdish.gediya@nxp.com>,
 prabhakar.kushwaha@nxp.com, bbrezillon@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Enable below configs in arm64 defconfig file,
CONFIG_MTD_CFI=y
CONFIG_MTD_CFI_INTELEXT=y
CONFIG_MTD_CFI_AMDSTD=y
CONFIG_MTD_CFI_STAA=y
CONFIG_MTD_PHYSMAP=y
CONFIG_MTD_PHYSMAP_OF=y

These configs are needed to access CFI compliant memory mapped NOR
flashes e.g. NOR flash connected over Freescale IFC.

Signed-off-by: Jagdish Gediya <jagdish.gediya@nxp.com>
---
Change since v2:
 Split the defconfig changes between,
 1. Changes as a result of 'make savedefconfig' command
 2. Enablement of actually needed configs

 arch/arm64/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index aff014e..ac06501 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -193,6 +193,12 @@ CONFIG_HISILICON_LPC=y
 CONFIG_SIMPLE_PM_BUS=y
 CONFIG_MTD=y
 CONFIG_MTD_BLOCK=y
+CONFIG_MTD_CFI=y
+CONFIG_MTD_CFI_INTELEXT=y
+CONFIG_MTD_CFI_AMDSTD=y
+CONFIG_MTD_CFI_STAA=y
+CONFIG_MTD_PHYSMAP=y
+CONFIG_MTD_PHYSMAP_OF=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_DENALI_DT=y
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
