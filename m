Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F66A145E26
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Jan 2020 22:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0jQJ6+JhzxyfL6Qd/1601ZQCKKXPEMLmiOE5p8dUWVg=; b=ow1K81tgtQGWa/AQJFpC9PkABz
	r8xV3tE8sIfPcSoWriGH28HyL8KkIadq1I6hs+9ZcYnTEIvww73UqafiOQj0EhMReADaWIgrsBXFc
	IYOi+MyMxziYpBHoly08xxcHYPHkhN2S3QjR2rVl1Ym5IMgUnm8iXAQNpG8R2euSmxxg9iTvb+RAd
	tljP46+jyT+C5+Xgcsbb5Q/BOK1DfsRNFQLhGJUDcHY3XuKNjhlVy2QcM/V7kgOgQHDTZ6ma8rMHF
	FGQY9mHHXagPFq0F9pL9GCvtuF9JiXmJIebViRhpWXYWg6BJwfgQK3h2VemiKw9E6HrCxehVYthVz
	GsxjnEQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuNdg-0005AK-Re; Wed, 22 Jan 2020 21:34:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuNdL-00051h-Ak
 for linux-mtd@lists.infradead.org; Wed, 22 Jan 2020 21:33:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so739946wro.2
 for <linux-mtd@lists.infradead.org>; Wed, 22 Jan 2020 13:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xlgFMAe3CXQknrnEstYCKTiflc61mrdbI7J8/Qg+nfc=;
 b=qEEMJ6KodmkvEJk1ow/4ZKAnTI/+H6b+jITcODtPTnFG7MbwU8vSoV3D3TA2z18VpH
 Qj3xLLnnzOIPwu4i2XVGV0RSirNHV5z2pjrXdtHHEKy4ajyrfF0jcLGrQFCz4RjL8CJq
 7rgJlD6O0efiLXmbrARGJb4TnLTmkfqwjWrhr80/Zm2pho9vAb0ra57H3ANhd1gjqjYD
 BDEcLrSeor0SU5F1OIYlsj3aWLyOKHkcKSn+vdRKsdTf+NQNjd7vg7sM322tvfC6vnQU
 XjZxjC/AXQS//GBtBjQDuusPXj2WqjFs2OB7XJ7anmX40ZE13bJF7Kwc34cSZdI1jFG4
 R12g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xlgFMAe3CXQknrnEstYCKTiflc61mrdbI7J8/Qg+nfc=;
 b=oDYxUr3ujJAEeSHsTNPB8ADaaOOWGkzGIIjomHr1xPrutDhFGW5Rqu5wBGSU2fM9mP
 Ra3pSynihFbw5IlsPtJKmvScXR+1K9+F8qjB2kANDtsO8tjXhQWJVwqJjdaL7caNx061
 a0heq31UqWt5bCx/JiZeu7oRAU0bs4T32J+I32ib+wT1WRiyJw3S5si1gFg8bmruu1fK
 kofkK+8/W+M0kF+frtuyfB42V8gHF6TOL5cNDL+0kIdNrh4jxDUctXBrQ6ZIA01doE1A
 UWDdFgqheaTK1vdISSINuUeZkpifj+Ltm/LipceBqK/+kafzRp9bPJbKLMTO/CTdFh7W
 UB9A==
X-Gm-Message-State: APjAAAUxj2XrRvIXjVe78cWX7Zo67rmHiAN1rkrx4J8TsHRMgeiSq6/4
 sZYGmv84+pnY7VizY1zE2m0=
X-Google-Smtp-Source: APXvYqzpnqhxzhO0Avyv6Bhhwq2PJP8KkLIfadSmpO8fWsYydMZxekW0ght2Xvxur4m5mB8jgzv7HQ==
X-Received: by 2002:adf:e290:: with SMTP id v16mr13843989wri.16.1579728833822; 
 Wed, 22 Jan 2020 13:33:53 -0800 (PST)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id w8sm6474630wmd.2.2020.01.22.13.33.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 13:33:53 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH V4 1/3] dt: bindings: brcmnand: Add support for flash-edu
Date: Wed, 22 Jan 2020 16:33:11 -0500
Message-Id: <20200122213313.35820-2-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200122213313.35820-1-kdasu.kdev@gmail.com>
References: <20200122213313.35820-1-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_133355_393998_321BA03C 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Florian Fainelli <f.fainelli@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Paul Burton <paulburton@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 James Hogan <jhogan@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Adding support for EBI DMA unit (EDU).

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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
