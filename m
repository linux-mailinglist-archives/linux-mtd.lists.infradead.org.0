Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FE9144599
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Jan 2020 21:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JQ3w1TVakyZQBHbWp9nXEcsDCgl5/b2T10JJ6SO3ElU=; b=Oi3Y39NkrF49C/Qg1k3F5jCoXB
	64Db13KOlSUAA9aCEAu22YeIXo8zv2E3P3X10S7LNCUoGB72/W8paWkYFntqhQbn/F71M69ojh/9Z
	3+AIFraJau0cpQIbwZDGX2LHaxdA0K/MMU2xoOqKAtjjcS/dYfB+psfqpbHzk9QkbyWVebABnN5VH
	gFZPCQQy2vkNNCDwyYtOhleZqCzV7mKpztpByW/ZY3RkaUBRCBBptA9jZv7EpYh0YkBJ/BN/BRMui
	wScz39sjq/KNakCk0d1biG4AHA2LWjs4Ps/YG+dkyNynh0X7RQteoCzeGgrXs+zDWbPXKOdRBcJMn
	zrYQOI8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itziG-0003YN-AR; Tue, 21 Jan 2020 20:01:24 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzhk-0003N7-7b
 for linux-mtd@lists.infradead.org; Tue, 21 Jan 2020 20:01:11 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n59so2125173pjb.1
 for <linux-mtd@lists.infradead.org>; Tue, 21 Jan 2020 12:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kzLVnx6I7dFbl8GGlRwfZsz6Y4gNG6PLh1f7Jaid6/Y=;
 b=P5KYtG59f1k+Yqe22+zjCSiNmrOUvfFutSuM+Nb6W1BwvT+8UmwyeYVhioNj6nsFqy
 Yj34T/5ylDVtZGvmBXfwdp/zw3spki+F2gv8UscDG0CoGS8UO6WVgEYU82yCxNj7XPR8
 0ZsqbISApivCU87Be5eVRw5O37v1pJSyFT32F9kAznVdFcxaM9J9h9seUzf0N73U0O9P
 TSM8gOkyUTqhoephbQIDrWA05//KYOuvqrMST0r1f+vbPu9t5zHSP69FpHS9M/cRpCpW
 S4RYXjSpHrOmCxmvRr/uv7pPtbFQqCLIW5ZhSk7vn2Arokfj5SFUH39hwOCEX2hi0C+W
 nAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kzLVnx6I7dFbl8GGlRwfZsz6Y4gNG6PLh1f7Jaid6/Y=;
 b=MvvzWfIabAAWsz6cW/fdAYu2ao3QSOxDIwJ3kLqAuM9tyoTXpwLeiuewBmykEd3Wee
 x5oik+ctLWkywvgIvwh9ZFCyrsXQJd5fSd2urrO98uajtOLA1eHyRbGfy5oBvAeKOF0m
 Sh2bzzU/FFhQYRl22bLwNl1qbunSqgpF4sC4Psy9+nyu+YTTUELQwY87BYYWBkbTILeQ
 hzblunVe+rIyqN7HVErJ8lqa9BvpL/SFLmonY5t34Q/LmlyejnTb3Z/TnVm5VWkRts1i
 qJeW4fNKCbxPleNc1njDFw78TiC4hATgNI9OrIzgo/zSIxHBwdM+JGSzQmGCJAivG3J1
 pJdw==
X-Gm-Message-State: APjAAAWtBf+1t9pBebNiY/Kag4RgzzKUWIKStZHNFXOQVhFrRDbYTIJe
 JupR74ReplVNfMwcwfmtNS1bfGY9
X-Google-Smtp-Source: APXvYqyv1eUpvO7MITJ+M3cgRICHj72iKltYDNrRQFlAZshLIPuQUQnNPSv2z3H5/XXY4evONk/XIg==
X-Received: by 2002:a17:90b:142:: with SMTP id em2mr145807pjb.4.1579636850683; 
 Tue, 21 Jan 2020 12:00:50 -0800 (PST)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id d2sm261576pjv.18.2020.01.21.12.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 12:00:50 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH V2 2/3] arch: mips: brcm: Add 7425 flash-edu support
Date: Tue, 21 Jan 2020 15:00:07 -0500
Message-Id: <20200121200011.32296-2-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121200011.32296-1-kdasu.kdev@gmail.com>
References: <20200121200011.32296-1-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_120052_336541_B87256B3 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Florian Fainelli <f.fainelli@gmail.com>, Paul Burton <paulburton@kernel.org>,
 Kamal Dasu <kdasu.kdev@gmail.com>, James Hogan <jhogan@kernel.org>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Nand controller v5.0 and v6.0 have nand edu blocks that enable
dma nand flash transfers. This allows for faster read and write
access.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 arch/mips/boot/dts/brcm/bcm7425.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/boot/dts/brcm/bcm7425.dtsi b/arch/mips/boot/dts/brcm/bcm7425.dtsi
index 410e61ebaf9e..aa0b2d39c902 100644
--- a/arch/mips/boot/dts/brcm/bcm7425.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7425.dtsi
@@ -403,8 +403,8 @@
 			compatible = "brcm,brcmnand-v5.0", "brcm,brcmnand";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg-names = "nand";
-			reg = <0x41b800 0x400>;
+			reg-names = "nand", "flash-edu";
+			reg = <0x41b800 0x400>, <0x41bc00 0x24>;
 			interrupt-parent = <&hif_l2_intc>;
 			interrupts = <24>;
 			status = "disabled";
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
