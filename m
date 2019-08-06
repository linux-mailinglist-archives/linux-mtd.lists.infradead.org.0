Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F3283008
	for <lists+linux-mtd@lfdr.de>; Tue,  6 Aug 2019 12:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lUjH2pKMIDbHBZ6xa1cwf04GkeyvUT+94S/tcC5oLTU=; b=sOe+vdVpoDe0MW
	lodaByfkRiAcG6wZEEHPw7H6icp2d9oc/b0hhIEIsYOCSgHhMCK3wd6Icry6iAzj3+VOBLCWXVEa9
	ZrpLAvaMxKdxAakLV/XSK71oVhzYZMcZ2Gp00mng6IXm599DIFywIcY++CRRwkAZwW9aeamWTbmx4
	pdGUWZcWtS3OovDCWBacvxZdhlM6pEEc643+uFQA+vMjrdLYFMSMW8H2QKVbvvFUqYUIVP8wcWs3D
	NxyyU2qrEI4K5yk2a+oyvTD14cZbdtg534n1N5c2kcXxnjaxGkOAsSvwogrPVHp+hta/aLL0FTA3n
	qV68f2ozOAnqGmevDH1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hux2T-0005VW-6z; Tue, 06 Aug 2019 10:49:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hux2B-0005Kw-BU
 for linux-mtd@lists.infradead.org; Tue, 06 Aug 2019 10:49:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hux22-0006aI-4K; Tue, 06 Aug 2019 12:49:30 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hux21-00083R-AP; Tue, 06 Aug 2019 12:49:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 0/2] mtd-utils: mkfs.ubifs: Add signing support for UBIFS
 images
Date: Tue,  6 Aug 2019 12:49:26 +0200
Message-Id: <20190806104928.1224-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_034939_410712_73CC03DB 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 david.oberhollenzer@sigma-star.at
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This series adds the userspace part to mkfs.ubifs to generate signed UBIFS
images. With this a UBIFS image can be cryptographically signed in PKCS
#7 CMS format which is then authenticated in the Kernel before mounting
it. The necessary Kernel bits have been merged with 817aa094842d
("ubifs: support offline signed images").

Here is a quick walkthrough for generating and mounting a signed UBIFS image
using the kernel provided keys used for module signing:

- configure kernel with CONFIG_UBIFS_FS_AUTHENTICATION, CONFIG_MODULE_SIG and
  CONFIG_INTEGRITY_ASYMMETRIC_KEYS enabled (assumed to be in ~/linux/ in
  this example)
- build kernel, ~/linux/certs/signing_key.x509 and ~/linux/certs/signing_key.pem
  will be generated
- generate ubifs image:

  mkfs.ubifs --hash-algo=sha256 --auth-cert=~/linux/certs/signing_key.x509 \
	-d root -e  126976 -o ~/signed.ubifs -c 1024 -m 2048 \
	--auth-key=~/linux/certs/signing_key.pem

- flash UBIFS image onto target and mount:

  ubimkvol -N root -s 64MiB /dev/ubi0
  ubiupdatevol /dev/ubi0_0 signed.ubifs
  cat mysecret | keyctl padd logon ubifs:root @s
  mount -t ubifs /dev/ubi0_0 /mnt/ -o auth_hash_name=sha256,auth_key=ubifs:root


Sascha Hauer (2):
  ubifs-media: Update to Linux-5.3-rc3
  mkfs.ubifs: Add authentication support

 include/mtd/ubifs-media.h           |  75 ++++-
 ubifs-utils/Makemodule.am           |   3 +-
 ubifs-utils/mkfs.ubifs/lpt.c        |  12 +
 ubifs-utils/mkfs.ubifs/mkfs.ubifs.c | 172 +++++++++---
 ubifs-utils/mkfs.ubifs/mkfs.ubifs.h |   1 +
 ubifs-utils/mkfs.ubifs/sign.c       | 409 ++++++++++++++++++++++++++++
 ubifs-utils/mkfs.ubifs/sign.h       |  80 ++++++
 ubifs-utils/mkfs.ubifs/ubifs.h      |  22 +-
 8 files changed, 730 insertions(+), 44 deletions(-)
 create mode 100644 ubifs-utils/mkfs.ubifs/sign.c
 create mode 100644 ubifs-utils/mkfs.ubifs/sign.h

-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
