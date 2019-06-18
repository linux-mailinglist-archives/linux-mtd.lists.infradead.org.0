Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A191497AE
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 05:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Q/oBwu0hXxstSEWHyvZDr4vpPMLrgtPSvhzWz0Y+ouE=; b=r7s
	g+wjlstosWevsB11MCdyTPEgxwuaFP7xbxhe6s2OB88o4GNKE24q7Ca5Bi6PQeorc7aRJcjQ7/RKL
	0PKEncASMIOsHiITAbCPusNenQ64Aga/rupJAQUHYklN5aDuR1p7TcStoJXv4vWRNGf5q73fMkn44
	On4ohyBULUm7F0bpJUG90LntERhZFwxandpIvDAeU9mr59vYs/up2hG69OoFTlf8k+HkruDtdszU+
	6SWaCvFaP8HNGs+OMoCdufMjneoIc9kOsIF/E4eyUxzpN2i0+/dyPh6ZjniGshatJVzFxWJ4B4PUs
	tkPj8ZG6DSVjwcVFHKpQRgkvMcwoL+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd4Vn-00077z-S7; Tue, 18 Jun 2019 03:10:19 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd4Vf-00077P-6c
 for linux-mtd@lists.infradead.org; Tue, 18 Jun 2019 03:10:12 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x5I39ceS006664;
 Tue, 18 Jun 2019 12:09:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x5I39ceS006664
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1560827379;
 bh=w4XaL6DWiMYpTTLcCsZBTR/341ShCtHYlKihuEWxr64=;
 h=From:To:Cc:Subject:Date:From;
 b=VCqGRQfqg7FKlT6XeLpvCjmUWP/l/a5jGC4yCAMB5tT8HiAkKBU5yPYOse0+DHylm
 t4ucw7vLHJX5d8laPEl2rYvJKjwQYLBozaAjxFXI9Ev2TDg1d9ZJaV+qS6TZlXjH8h
 +BtM/qmZLZ8+Tz8Gvcr0OsBvMXdN7dEDV4GBnVqjj2D9vQ2Z6fBqn12huGQkby9ep1
 hfEoHadDNqLmxptfBc7RttKdpktJoLEZKICRwS13qctmF+ZaHV7P4GRA1VPR5Wb2O0
 Rh6XGQpYCnt3+1sfxVvyQm7hGeCFx6jM/t+iykeq0/mmkDcaeQkTEibbbOPEYsbdH/
 UmL1tFervQqFg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2] jffs2: remove C++ style comments from uapi header
Date: Tue, 18 Jun 2019 12:09:26 +0900
Message-Id: <20190618030926.30616-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_201011_566089_8871D7D1 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Linux kernel tolerates C++ style comments these days. Actually, the
SPDX License tags for .c files start with //.

On the other hand, uapi headers are written in more strict C, where
the C++ comment style is forbidden.

I simply dropped these lines instead of fixing the comment style.

This code has been always commented out since it was added around
Linux 2.4.9 (i.e. commented out for more than 17 years).

'Maybe later...' will never happen.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
  - Delete the comments entirely instead of fixing the comment style

 include/uapi/linux/jffs2.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/include/uapi/linux/jffs2.h b/include/uapi/linux/jffs2.h
index a18b719f49d4..784ba0b9690a 100644
--- a/include/uapi/linux/jffs2.h
+++ b/include/uapi/linux/jffs2.h
@@ -77,11 +77,6 @@
 
 #define JFFS2_ACL_VERSION		0x0001
 
-// Maybe later...
-//#define JFFS2_NODETYPE_CHECKPOINT (JFFS2_FEATURE_RWCOMPAT_DELETE | JFFS2_NODE_ACCURATE | 3)
-//#define JFFS2_NODETYPE_OPTIONS (JFFS2_FEATURE_RWCOMPAT_COPY | JFFS2_NODE_ACCURATE | 4)
-
-
 #define JFFS2_INO_FLAG_PREREAD	  1	/* Do read_inode() for this one at
 					   mount time, don't wait for it to
 					   happen later */
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
