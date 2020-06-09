Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1571F3585
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jun 2020 09:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GqyPKtytcagtxYvbvbAlssekrlPy23tRC/Db5UNQwlE=; b=EbdrCFxtjgHdDxMJi0l5xlIY2L
	+EzTzuXpm7KcbdlB/2kLoT5Qz3U+TYB8U3Attq1nVx+36EuGa77FxF3ww7h06AcWizS89rxc3O8Mq
	rOmd70WuLJmOr6XXRyyilc0mewCV6nZOFFX5g4gyuGKNqnMr5ZGaZQYBtwkIWUyClI7gWkIEU03Zr
	t69/G0pxqpS/kOjC7WOcqap0Ozo0NWiOcEcDTn85mQUYJiAwW13PCMmxNkLTC8/25DooLoRH4Ldt1
	70LGCcS+PDYl8wy9dLRNR1cx/Q/0IYy7GYGLP561epIqIakW82AVKJ45vDytyOFP2m5+BxKv3Ybrz
	/7WskoqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZ2J-0006T7-MG; Tue, 09 Jun 2020 07:51:07 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZ0X-0002dQ-HR; Tue, 09 Jun 2020 07:49:19 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 9712CC946C;
 Tue,  9 Jun 2020 15:49:15 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3328T139696428545792S1591688948875935_; 
 Tue, 09 Jun 2020 15:49:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fb53448cfdf7ec3ce13533315e27abd9>
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: miquel.raynal@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 robh+dt@kernel.org
Subject: [PATCH v6 7/8] arm: dts: rockchip: Add nfc dts for RK2928 and other
 SOC
Date: Tue,  9 Jun 2020 15:49:06 +0800
Message-Id: <20200609074907.24075-3-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200609074907.24075-1-yifeng.zhao@rock-chips.com>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074907.24075-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004917_807373_CF1E224A 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.130 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add nfc(nand flash controller) node for RK2928, RK3066, RK3168
and RK3188 Soc.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/rk3xxx.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index f9fcb7e9657b..4209ca73af9a 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -273,6 +273,15 @@
 		status = "disabled";
 	};
 
+	nfc: nand-controller@10500000 {
+		compatible = "rockchip,rk2928-nfc";
+		reg = <0x10500000 0x4000>;
+		interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC0>;
+		clock-names = "ahb";
+		status = "disabled";
+	};
+
 	pmu: pmu@20004000 {
 		compatible = "rockchip,rk3066-pmu", "syscon", "simple-mfd";
 		reg = <0x20004000 0x100>;
-- 
2.17.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
