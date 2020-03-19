Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BDF18C31C
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Mar 2020 23:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IQY1OW5R36xGfze70I4hVYUFak1zXdqjDHVwvg5cTLw=; b=e5WBImUJD2H3Qs
	ddjKQw0uso61OKesclY3LPLVz/JS6H3eG8qUphbIs0UzL9K3hj0fe/pMyVcSGqIsu473Ks7fuDcGc
	TQOM4K7hGMJLkFhn9/VOeb9sEHiR//+T0pGCefBbWKZNKOSfoZPOKfHqZw98aR20+1+cZfQWmpPrx
	1+ZDD0inHXPgVJk3PgtzSJ9uV5Tj5Oc6bIiv1l7WBwFRcPxkJK0WDGFWKgBFqEOtWE3Plyg4s3vis
	UWx29Vsn8QNV0IZlyEi9OGKyQpL07X5H0adJbZy8JeqBCgtWXmwBJJHB94Dw5YOv91Tucd/89+1Fh
	gs5nQM2vlOmBKSeslhng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF3rn-0005yE-LZ; Thu, 19 Mar 2020 22:42:19 +0000
Received: from gateway23.websitewelcome.com ([192.185.50.129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF3rf-0005tr-W1
 for linux-mtd@lists.infradead.org; Thu, 19 Mar 2020 22:42:13 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway23.websitewelcome.com (Postfix) with ESMTP id 8DC7E8E1F
 for <linux-mtd@lists.infradead.org>; Thu, 19 Mar 2020 17:42:09 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id F3rdjMNb4XVkQF3rdjdTxM; Thu, 19 Mar 2020 17:42:09 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fZXQ2lbVYWhzhwDm2fGG4/15WKAEdny8dFiE/dwqBkU=; b=zYV/IuBx1Vx/lOzlLWPcjBgSzF
 ZwgRrHiDVAjJOkrSbnSBgLkMoJaR3TjYPoEDyt17niwyA2XBBY0HAvO94DdemuY6ucPlkn7IVxAhp
 J98ZAUGdVvBei9KXigGYX8RZmbT3Oueq5O1bpVTjYUgOH6L9xq2bbXRUi6S9zxPaP8UVsAFgL7Us2
 OTSOhrQmiaFRNgBr1JmMpHJom0GLp++4lB87il+23B7JzKlcGi3dsIi7zeUhcBsxhrA8us6DbSx67
 E7lkgywA/wZ/lkpr0Y0AEvEv9souSqFcjCWUH6cvw86bjCm6WPUwzapnuBeXMoBtk1Bvahiz1/xio
 jkiz5jaQ==;
Received: from cablelink-189-218-116-241.hosts.intercable.net
 ([189.218.116.241]:53956 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jF3ra-002CJD-IU; Thu, 19 Mar 2020 17:42:08 -0500
Date: Thu, 19 Mar 2020 17:42:00 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH][next] mtd: maps: sa1100-flash: Replace zero-length array
 with flexible-array member
Message-ID: <20200319224200.GA25162@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.218.116.241
X-Source-L: No
X-Exim-ID: 1jF3ra-002CJD-IU
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cablelink-189-218-116-241.hosts.intercable.net (embeddedor)
 [189.218.116.241]:53956
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 28
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_154212_126626_163C824E 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.50.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/mtd/maps/sa1100-flash.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/maps/sa1100-flash.c b/drivers/mtd/maps/sa1100-flash.c
index 47602af4ee34..bb1ef650ffd2 100644
--- a/drivers/mtd/maps/sa1100-flash.c
+++ b/drivers/mtd/maps/sa1100-flash.c
@@ -34,7 +34,7 @@ struct sa_subdev_info {
 struct sa_info {
 	struct mtd_info		*mtd;
 	int			num_subdev;
-	struct sa_subdev_info	subdev[0];
+	struct sa_subdev_info	subdev[];
 };
 
 static DEFINE_SPINLOCK(sa1100_vpp_lock);
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
