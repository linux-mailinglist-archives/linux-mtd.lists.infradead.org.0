Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B448144597
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Jan 2020 21:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oMg148xfQcsV9eRbypi3ioySmB8jHpGSyDhCoxMEqig=; b=VC4
	Mbii3LuIYnNCsfxwmalE8iirAxgNNTeObtaYbP6wjoNR3RH53bexQofcWSWY5Qa5kcuk/bOWgFPqT
	UghvYjnXT2HG1m2/+Eib2CgxbuIQuQ5nQtXpXXgV19WbB1irAJnstoEr87mhxnpn8p/9OnRpbyI7M
	o2ADACiNmNiZVVFRCroRT6iOmZWJ4UIkv7xJ8AcyHqrJ5AvXazJ7pFvNxR9CGi7pX/YabCoOJzDUk
	42sapYOS/uiZC+OOixQKoy2SzoKXaPjBdHdx2qX3jaWpzWNyEDlIi8ccr/SGI5DqTY4873WJuDMAK
	4aEaVzFTaSWIeowmR5f8nGxMyYSiWCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzhq-0003BV-LS; Tue, 21 Jan 2020 20:00:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzhB-0002sG-3P
 for linux-mtd@lists.infradead.org; Tue, 21 Jan 2020 20:00:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so2041995pfn.4
 for <linux-mtd@lists.infradead.org>; Tue, 21 Jan 2020 12:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eeX2JNGz9HgVPRGIoEvaZTiS7IkFyrAlD7or7JXr8vc=;
 b=UlFqOs0X9yC5fqiMCEgHjeGUefzh3fJ/FdvxvkBy25yIKgMFlYTZkUmpDcRVBEdlgF
 ZUR71N8z2yAkKbb01kfMh9nrdSr9a3jQyKklhi8pORyOx2F48pWtCL7SDCV5kUYLFbfj
 A/6zRjM0wgnykN0SLUXAWZmLwNhPwM20CVx7WUKQBeOdwm+e4WLIinqeFaDYPZ0C0sy7
 YjjRflOWXmANDIET32nY3CfBQrUvFa+t+v9HZMVIUgx5LURr/P/Q7n9+R8Q9fpN7OJs0
 i8IcKpfWQcTlzHzCI96q5NwSLtKodwMFHjPce6nR7OGqQaNCAJhNNWcr3hsgODln4HZF
 pxNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eeX2JNGz9HgVPRGIoEvaZTiS7IkFyrAlD7or7JXr8vc=;
 b=r+ij0r6ONJ3qhFYGwlZRaK3eSfSO7gBlU10VIhm2wSWktUkhK32grZStkmBYl+Ovfr
 uI7IAeqbTpotf7uLoUU28DBlDDqwb6LgfmTFL5JB7loDfYle5KAWHke3VYeI4f42w4Er
 BvaSeWArCjU+RESAe1Uop1RjV9SzG1EtRAM0yT3DrSx0CuHVtUrEyy6Qkiaspz/ZtblC
 6zJ6J7sHVLzf7NcoukBJ6HOZqvGXunAXjhL3yY+cL1Yc+Fp/3IO20QSc8Gg+OOo2UJ6Z
 n1XLubWbRvYPKkFngfCoM0UCgITaL4mci3HJm6aefsvxJalKozQeIniwjQT1oQyOJrF5
 t1yw==
X-Gm-Message-State: APjAAAUB4GkPdgzjT1vijskFqm7wWWwrw4B1UeiHQi3BUPdEpPxGCarz
 OYa7K4nIFilLtC+4wUZqG20djHTt
X-Google-Smtp-Source: APXvYqxKq2oDlprFk1+QK2TFgGB5hdnvvHi3lXqLm35fMfkoRjqwMH0R05FaBJfIZvrz79we+8RMcg==
X-Received: by 2002:a63:2cc8:: with SMTP id s191mr7137691pgs.206.1579636815427; 
 Tue, 21 Jan 2020 12:00:15 -0800 (PST)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id d2sm261576pjv.18.2020.01.21.12.00.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 12:00:15 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH V2 1/3] dt: bindings: brcmnand: Add support for flash-edu
Date: Tue, 21 Jan 2020 15:00:06 -0500
Message-Id: <20200121200011.32296-1-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_120017_188362_2FE3B7E6 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>
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
