Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8040104337
	for <lists+linux-mtd@lfdr.de>; Wed, 20 Nov 2019 19:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oMg148xfQcsV9eRbypi3ioySmB8jHpGSyDhCoxMEqig=; b=EHi
	uVu4kcRwbBw+O+3Ons+Jkdo35YnbNCMZ+gsfacyS1Lz658ye9J5axdreQ3jhwOod+5IrDDcy4whyq
	nT6wL7aQlIElZASjVX0ItUdg/Mfx3XCKggc7/QcHANjZcN4hro//zwc0wHfZXM8TZKOrRM5WBUEev
	ojlAcb4utul0aj6lPpR3ohQHFaiJibro41rJOfzjeW7y7Fy6SI/CdIUiUtPAGaLKFktEfJAB3Ojxs
	3IxjG/4Vj8bFCDQi+rPWwCbXnOZvioHpvCKeL2tDGr1FJ/0C00XLGQ2I9Wrs4QovNgb18UmGnu6p1
	o0SJpSaPEm3wd7BJ2byU1T1RF1EtsQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUcN-00087v-8z; Wed, 20 Nov 2019 18:22:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUcD-00087b-PP
 for linux-mtd@lists.infradead.org; Wed, 20 Nov 2019 18:22:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id s5so1075837wrw.2
 for <linux-mtd@lists.infradead.org>; Wed, 20 Nov 2019 10:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eeX2JNGz9HgVPRGIoEvaZTiS7IkFyrAlD7or7JXr8vc=;
 b=SkynIjmxsxkmxh/wPmUK8pd7PNaphXdyhEUIdnq3SblLrQkpRfaBQ95P7IllqxCE1Q
 bYtNWuLYhAsujPXtTVtvu+Ec8gqz8k4KrLrcrzwzqBFTVDRLl5FCL5SSqpu9xJY/FUmO
 OiQJyBw1pzVcqb+GeRYMTMEp5MwcYYc0qO2it/cLFXLExE3BkxBXB7NpxJ4s7eksSI4I
 4ndtiez1cia0Mt6vB/KRO9T8K2+T6vk2/4YgN4pAGbK0oXClH+jWdvLsLmFMPWeymO01
 f4Wo29TPkN1Jm5DVID+ZcebefoVYBCUR/jwfe5B+HxqIWB5Rx+iQSsK4V5nk5Df05eNi
 klPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eeX2JNGz9HgVPRGIoEvaZTiS7IkFyrAlD7or7JXr8vc=;
 b=TQgoEJhGWAj+/5XVDkMaqTIkhG1D/ts93ltV5OIXz3Wlh2qVpTq3tcpwgk6kcb/gwT
 Fznc/zqNDouEudYjmxMlGP/cayacvFQRo/rjw+OqiriGm3lXREFjfll+C9BwxwGy8A0B
 odlfyepE9ivw3mZSdpF5KZ9ETITIue2/HehsuophOM2RoFl3ldej7GpCMznRtSHNxCUk
 NKOBvaxsLqLuZ1+SQlbNSbP1Sw+Vr8a9wSDSAaA5PCAqzsuB3Kq7CUPhByTdEMsLmbVO
 F96S8waC+a/v+2JtookpmH6dcZtSxuDyS690jSEQSYEY77oW5lMsqC1MC2sZtTNIqHWQ
 wAzA==
X-Gm-Message-State: APjAAAWPoi5SsUQEUu+qe8AG7hK+3lUCjB8bdnvbv/R/WspEJDx9bJxa
 C5CqyhHptLy0kZJrx77HoJUTVVXt
X-Google-Smtp-Source: APXvYqydFnhbveIbTOtqqNnEIOn1jk8I2Y9/1K8cL2fZdPqDactkdjK8DhnZY+GtVUCkWTFR9vhWuw==
X-Received: by 2002:a5d:6746:: with SMTP id l6mr846246wrw.349.1574274127481;
 Wed, 20 Nov 2019 10:22:07 -0800 (PST)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id x205sm151153wmb.5.2019.11.20.10.22.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 10:22:06 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 1/3] dt: bindings: brcmnand: Add support for flash-edu
Date: Wed, 20 Nov 2019 13:20:57 -0500
Message-Id: <20191120182153.29732-1-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_102209_847214_2637587B 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Adding support for EBI DMA unit (EDU).

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 .../devicetree/bindings/mtd/brcm,brcmnand.txt          | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
index 82156dc8f304..05651a654c66 100644
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
@@ -35,11 +35,11 @@ Required properties:
                      (optional) NAND flash cache range (if at non-standard offset)
 - reg-names        : a list of the names corresponding to the previous register
                      ranges. Should contain "nand" and (optionally)
-                     "flash-dma" and/or "nand-cache".
-- interrupts       : The NAND CTLRDY interrupt and (if Flash DMA is available)
-                     FLASH_DMA_DONE
-- interrupt-names  : May be "nand_ctlrdy" or "flash_dma_done", if broken out as
-                     individual interrupts.
+                     "flash-dma" or "flash-edu" and/or "nand-cache".
+- interrupts       : The NAND CTLRDY interrupt, (if Flash DMA is available)
+                     FLASH_DMA_DONE and if EDU is avaialble and used FLASH_EDU_DONE
+- interrupt-names  : May be "nand_ctlrdy" or "flash_dma_done" or "flash_edu_done",
+                     if broken out as individual interrupts.
                      May be "nand", if the SoC has the individual NAND
                      interrupts multiplexed behind another custom piece of
                      hardware
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
