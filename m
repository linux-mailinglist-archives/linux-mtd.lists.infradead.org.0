Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24655F4617
	for <lists+linux-mtd@lfdr.de>; Fri,  8 Nov 2019 12:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLeOcNs9v4CGVjhhKywqMgUiU6zxoZm4cQJUW6hDVcE=; b=KeaTZ4yZg7P95v
	M8Tj58n1hnj6BwvblU3dKFPY4Lpm9mWNoD3OuLE1grS7IwOiL9XXVNLy61+sRiAGrkve3p1J0gPpi
	TrzbEm/6+4fcubKrc4ytTNTYhcXMOhyP067e9yV7YEve7tMrmBBABUeE1HnaqRRLN8PnCJW6vD53G
	c1n7tWvW0S5Hq4USSdeohsWeIBtTC5mvLOF4MGhOsVixajug7h1TPq51KVuCdcORi7eAewAfaLN34
	JJ8g0la9IwCcbK7100+979Z0MnQ15POw1kR6t7F5tLadsjRnai8wO5Dkq7GrfyHf+hb+jYbUB4Ino
	unOYYDjc/Oe0ggU99mJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2cX-0007eO-1i; Fri, 08 Nov 2019 11:40:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2cI-0007av-LV
 for linux-mtd@lists.infradead.org; Fri, 08 Nov 2019 11:39:52 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7490222C2;
 Fri,  8 Nov 2019 11:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573213190;
 bh=FJvlhdFxsqprxnNVbN95u0jbEh0Nno/W3yfaEzFlnI8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BpQc1NoqGN1YJc8D0rgEU1T0Fvp5DReOV9424XPYNW5WJ9kBlvo6cSfBfxf+6q8uU
 1RSjLctu06Amw5WnDNqPNyqIQ682Ujhw/gAQ+xvrpsYt24M4pjiuDkq77aJKPzp6T5
 mD8kMR7rEeRyCgIt/nYRR9mLbY1B8AnXZlplZGmo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 080/205] mtd: rawnand: marvell: use
 regmap_update_bits() for syscon access
Date: Fri,  8 Nov 2019 06:35:47 -0500
Message-Id: <20191108113752.12502-80-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108113752.12502-1-sashal@kernel.org>
References: <20191108113752.12502-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_033950_740066_AAB3F2FC 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>

[ Upstream commit 88aa3bbfc020d14b13d67af3f5c08aa992d82cd8 ]

The marvell_nfc_init() function fiddles with some bits of a system
controller on Armada 7K/8K. However, it does a read/modify/write
sequence on GENCONF_CLK_GATING_CTRL and GENCONF_ND_CLK_CTRL, which
isn't safe from a concurrency point of view, as the regmap lock isn't
taken accross the read/modify/write sequence. To solve this issue, use
regmap_update_bits().

While at it, since the "reg" variable is no longer needed for the
read/modify/write sequences, get rid of it for the regmap_write() to
GENCONF_SOC_DEVICE_MUX, and directly pass the value to be written as
argument.

Fixes: 02f26ecf8c772 ("mtd: nand: add reworked Marvell NAND controller driver")
Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/nand/raw/marvell_nand.c | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index 9c90695a885fe..7a84a8f05b46d 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2710,24 +2710,23 @@ static int marvell_nfc_init(struct marvell_nfc *nfc)
 		struct regmap *sysctrl_base =
 			syscon_regmap_lookup_by_phandle(np,
 							"marvell,system-controller");
-		u32 reg;
 
 		if (IS_ERR(sysctrl_base))
 			return PTR_ERR(sysctrl_base);
 
-		reg = GENCONF_SOC_DEVICE_MUX_NFC_EN |
-		      GENCONF_SOC_DEVICE_MUX_ECC_CLK_RST |
-		      GENCONF_SOC_DEVICE_MUX_ECC_CORE_RST |
-		      GENCONF_SOC_DEVICE_MUX_NFC_INT_EN;
-		regmap_write(sysctrl_base, GENCONF_SOC_DEVICE_MUX, reg);
+		regmap_write(sysctrl_base, GENCONF_SOC_DEVICE_MUX,
+			     GENCONF_SOC_DEVICE_MUX_NFC_EN |
+			     GENCONF_SOC_DEVICE_MUX_ECC_CLK_RST |
+			     GENCONF_SOC_DEVICE_MUX_ECC_CORE_RST |
+			     GENCONF_SOC_DEVICE_MUX_NFC_INT_EN);
 
-		regmap_read(sysctrl_base, GENCONF_CLK_GATING_CTRL, &reg);
-		reg |= GENCONF_CLK_GATING_CTRL_ND_GATE;
-		regmap_write(sysctrl_base, GENCONF_CLK_GATING_CTRL, reg);
+		regmap_update_bits(sysctrl_base, GENCONF_CLK_GATING_CTRL,
+				   GENCONF_CLK_GATING_CTRL_ND_GATE,
+				   GENCONF_CLK_GATING_CTRL_ND_GATE);
 
-		regmap_read(sysctrl_base, GENCONF_ND_CLK_CTRL, &reg);
-		reg |= GENCONF_ND_CLK_CTRL_EN;
-		regmap_write(sysctrl_base, GENCONF_ND_CLK_CTRL, reg);
+		regmap_update_bits(sysctrl_base, GENCONF_ND_CLK_CTRL,
+				   GENCONF_ND_CLK_CTRL_EN,
+				   GENCONF_ND_CLK_CTRL_EN);
 	}
 
 	/* Configure the DMA if appropriate */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
