Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B656145E27
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Jan 2020 22:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3hTjjb9zPRdPu/cODHiCsZmuKm20ZmBFIg728yv2rK0=; b=fVBwJXNO94aoJR5sgbkPbwATf+
	mh+f7ptbMFBUhuxaCRNyl+aBUGtpNkY75kx4qI/vzuUE6Tis7UnddSO2QC0N3A4x/saZhWkemaugF
	QSyn5ktIzlGOP3F0gSif1npHiAw0R36VxC/qRvoJ9oc9bhXymgJP+SovUUz3yBTWHtXpnMMIgXXr5
	r7TAQ59NGH9vFOH9pTOQwUwxUS/sZpvWy7r2T6FK2WsdnqKElLuaLDWnhyu0LLTQvOStkPpYuc/yt
	YNbsRMxO+aFpu+Q2uw2wUTdwBf0aKkIClke2w4zHBj8ENGskj/SyQvpU0WxbpMQRIfzaKggDgQS6w
	aAR1tz5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuNdx-0005Sg-Nc; Wed, 22 Jan 2020 21:34:33 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuNdR-000572-9T
 for linux-mtd@lists.infradead.org; Wed, 22 Jan 2020 21:34:02 +0000
Received: by mail-wm1-x334.google.com with SMTP id f129so275632wmf.2
 for <linux-mtd@lists.infradead.org>; Wed, 22 Jan 2020 13:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hl6268zUhL6vsoc755Rban85Ann3f6TE2I9ILOnslGg=;
 b=oucbbEHTYhjCotp2sb6ssDzQbFbvgrjA80hhWxIL7YS25Dr6LHB0jv2c3iYM073u6a
 rLmIgfT7bKkqtZpwOYM5DDT4Xqh5QYIQkkbpM4n98QjKCuDwH8zeL+VBsGJvyxI4KelX
 ZAU48wLgvuWmcPtEjQ217FAV1SIwk6NXCLY962Hz6gVBFEvStGGFwR3iAiBvp12Va12S
 4p5ByEIHGf4H8++XP3QL9c0nEJhP0rt2/tzjzkUx5cGOvPuq9pVlMPjI6Xr3E6cjFzaW
 cMrq1D4lNTGLuZRD4sB3yb+3QoWa77lwWi6GPcOWeh/TSFKynEZgCtnYxEfNo3jv4MhB
 iLrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hl6268zUhL6vsoc755Rban85Ann3f6TE2I9ILOnslGg=;
 b=dl0KVTx4HntbBZ0u7f3iqziEwiDAqUQWcywpSpljrU0PXi4VFLPBwu7X/RQRlS27we
 RcW9HR4szxw0D8b14Ab2OlNan0xLHadA+bx0Zo/52aVG+RuA48A1dnrtcQYt4Tuq8Mip
 ViOstLz+5Z74tWqSyG1aG3x6fqZOodSoKTBqB/KEEoF8WayeXnhiynIaeTFK8w0tj2cp
 nLOwF6DQoDDuWyBF/Z+oJkKqU1LKhZ1o1G6PORxoK+CLX2pKptfYs4H4dYxr1asblIyq
 zh2JVR6t49ZaGfKUJMPJPC6kj5FxndVcc8aVvma5uqMDKvrEMJXH54bDd7YiSLq0ag8Z
 goFw==
X-Gm-Message-State: APjAAAU72mvO0IJPQ3y3+pxr8RabPHdxFj4LkO9RIkdY5ZlVH5/7lu2k
 vu+t6CyG6dIYnuAlbVqkBM8=
X-Google-Smtp-Source: APXvYqxYDmvDyU69o4TjdtM3UV/rvMxrU5zBZcwAOW20EVKAyf2Sy4b1T2lknJ/zStkHla1AsR9EPw==
X-Received: by 2002:a7b:c190:: with SMTP id y16mr191530wmi.107.1579728838954; 
 Wed, 22 Jan 2020 13:33:58 -0800 (PST)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id w8sm6474630wmd.2.2020.01.22.13.33.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 13:33:58 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH V4 2/3] arch: mips: brcm: Add 7425 flash-edu support
Date: Wed, 22 Jan 2020 16:33:12 -0500
Message-Id: <20200122213313.35820-3-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200122213313.35820-1-kdasu.kdev@gmail.com>
References: <20200122213313.35820-1-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_133401_345857_D16469B5 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
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

Nand controller v5.0 and v6.0 have nand edu blocks that enable
dma nand flash transfers. This allows for faster read and write
access.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
Acked-by: Paul Burton <paulburton@kernel.org>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
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
