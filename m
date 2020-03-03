Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A71772E6
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Mar 2020 10:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S9NzJ3fVOfWorDYQTEzKgmaJ86d+P2V1dG9lbGGK+Ns=; b=CtF
	SqMtjRikdzv57g5pNeLHaxnVVop6Ns8XzPjku5aKFuNqNLvqzo7dkY7OQ/9FxAiBPpxsSgZS2xsL6
	bzvjJeXiA+6UZMKVmFjVqCxt+10j4cR4/8kY3UuQxw3fDws8GwM/TOa6mISjsLIs6zHr4mc3srHCm
	OYFtJQsGHWgGKZPXi1wtlB25wo9PS29jPWbyGmixPsHQKKe/Ur2+3TMJBAnifkeSRFJBAumLV2doz
	KwrQqUMlde6NFfshoOY/p7rupxd5G+PRkpTdvAuIHS+zOHIEuqk02uGi3N4OnYtweqCrQNiq9vLIn
	2EAu3bPpAKImEMHJZ1DKMzd9EUJoWCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j949o-00005s-K0; Tue, 03 Mar 2020 09:48:08 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j949e-0008WN-3D; Tue, 03 Mar 2020 09:47:59 +0000
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2B861A5F1B;
 Tue,  3 Mar 2020 17:47:45 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3521T140169581676288S1583228860405504_; 
 Tue, 03 Mar 2020 17:47:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7a8659cb98305b599d87f49f5915a23d>
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
Subject: [PATCH v3 0/3] Add Rockchip NFC drivers for RK3308 and others
Date: Tue,  3 Mar 2020 17:47:33 +0800
Message-Id: <20200303094736.7490-1-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_014758_351630_D40A7750 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 linux-mtd@lists.infradead.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Rockchp's NFC(Nand Flash Controller) has three versions: V6, V8 and V9.
This series patch can support all  three versions.


Changes in v3:
-change the title for the dt-bindings

Changes in v2:
- Fix compile error.
- Include header files sorted by file name

Yifeng Zhao (3):
  mtd: rawnand: rockchip: NFC drivers for RK3308, RK3188 and others
  dt-bindings: mtd: Describe Rockchip RK3xxx NAND flash controller
  MAINTAINERS: add maintainers to rockchip nfc

 .../bindings/mtd/rockchip,nand.yaml           |   95 ++
 MAINTAINERS                                   |    2 +
 drivers/mtd/nand/raw/Kconfig                  |    7 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 drivers/mtd/nand/raw/rockchip_nand.c          | 1229 +++++++++++++++++
 5 files changed, 1334 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip_nand.c

-- 
2.17.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
