Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A41B1B8EA2
	for <lists+linux-mtd@lfdr.de>; Sun, 26 Apr 2020 12:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8W6Jo6rrT0G93Si4yX82sheNyU5JN4vD1L9zISCRorg=; b=Oed
	2ZZp05L3MMaymZCh5jKkclJWBBBSdLMjyoibYUUYNxWPK7azDEzSeFSTkjfQ+KJ3lU1mOQxbvMnUc
	GGR6M7Jvw3PR9PNVw3QWHw3xWSt75BWPUPbBXG5TQKyMXud0KOHgWGY4L6FR9BJtbEt3gSKDVPGaC
	hpcQJgk0hAz2oGOMaT+7eapG6OzuJIS4ILGZa8k9wxpFoinfeljNMlck/def1/icsHFs8g1l1ATsA
	7ikyU1k2C+Os/1qjwdfMAkoInry3yciwMysk4gbOnSSJ+FBLUfkiAxfNKd6CxSytaTUrTEFylmYH8
	4ectJdx+LGKoVWbh7ccWcGJehPW/jDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSe8J-0007xI-Gq; Sun, 26 Apr 2020 10:03:31 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSe86-0007uR-IK; Sun, 26 Apr 2020 10:03:20 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 49A11CA2A2;
 Sun, 26 Apr 2020 18:03:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19267T139854424778496S1587895377527434_; 
 Sun, 26 Apr 2020 18:03:06 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <76275af8ddd67ec61dabce6f96107900>
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
Subject: [PATCH v5 0/7] Add Rockchip NFC drivers for RK3308 and others
Date: Sun, 26 Apr 2020 18:02:43 +0800
Message-Id: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_030318_834587_A117C8EB 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: devicetree@vger.kernel.org, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 linux-mtd@lists.infradead.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Rockchp's NFC(Nand Flash Controller) has three versions: V6, V8 and V9.
This series patch can support all three versions.


Changes in v5:
- Fix some wrong define
- Add boot-medium define
- Remove some compatible define
- Add boot blocks support  with different ecc for bootrom
- Rename rockchip-nand.c to rockchip-nand-controller.c
- Unification of other variable names
- Remove some compatible define

Changes in v4:
- The compatible define with rkxx_nfc
- Add assigned-clocks
- Fix some wrong define
- Define platform data structure for the register offsets.
- The compatible define with rkxx_nfc.
- Use SET_SYSTEM_SLEEP_PM_OPS to define PM_OPS.
- Use exec_op instead of legacy hooks.

Changes in v3:
- Change the title for the dt-bindings

Changes in v2:
- Fix compile error.
- Include header files sorted by file name

Yifeng Zhao (7):
  dt-bindings: mtd: Describe Rockchip RK3xxx NAND flash controller
  mtd: rawnand: rockchip: NFC drivers for RK3308, RK3188 and others
  MAINTAINERS: add maintainers to rockchip nfc
  arm64: dts: rockchip: Add nfc dts for RK3308 SOC
  arm64: dts: rockchip: Add nfc dts for PX30 SOC
  xarm: dts: rockchip: Add nfc dts for RV1108 SOC
  arm: dts: rockchip: Add nfc dts for RK3066 and RK3188 SOC

 .../mtd/rockchip,nand-controller.yaml         |  124 ++
 MAINTAINERS                                   |    4 +-
 arch/arm/boot/dts/rk3xxx.dtsi                 |    9 +
 arch/arm/boot/dts/rv1108.dtsi                 |   11 +
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   15 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      |   14 +
 drivers/mtd/nand/raw/Kconfig                  |    7 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 .../mtd/nand/raw/rockchip-nand-controller.c   | 1344 +++++++++++++++++
 9 files changed, 1527 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip-nand-controller.c

-- 
2.17.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
