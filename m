Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92000BF4EF
	for <lists+linux-mtd@lfdr.de>; Thu, 26 Sep 2019 16:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IsjDEc5+UKPJjndsistfrZNbP71BMqhJHKGtvNbLlA8=; b=UEVDSHJk88d7li
	Ekf43MqBkoRkd8rmCmekFvkeOv2PabaiFBaoklom3JDEd4QfxKH0SJMB8qIr5YNI5yHqhOrcYObmS
	TBue3v/oSXTY2YSqCXD7Sol9/ll61mH64yRtyukkLhtw8jiNVfSxLYjjZgFg8+EXAaJvV44zNYtNF
	XV6K++ajApQO4up3JLCyuFvuruJCVMN6OfdmmdIvFmClgh/s2Ye4wgd7vuirvjdk4NGq9oabee9Dn
	WDOANrJN2sUJflZLA6+Z+Us2k19FsIOzQtaA/5WeTSDxixNcAzH22BRD1mJ7wBIQe3GqTxJdoCTFH
	+8settRCcpY1Uo53mRtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUeD-0007qk-AQ; Thu, 26 Sep 2019 14:21:33 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUe2-0007nb-Ib
 for linux-mtd@lists.infradead.org; Thu, 26 Sep 2019 14:21:24 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 63B3410CC207;
 Thu, 26 Sep 2019 14:21:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-125-72.rdu2.redhat.com
 [10.10.125.72])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D1A1360C44;
 Thu, 26 Sep 2019 14:21:19 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
Subject: [PATCH] jffs2: Fix mounting under new mount API
From: David Howells <dhowells@redhat.com>
To: dwmw2@infradead.org, richard@nod.at
Date: Thu, 26 Sep 2019 15:21:18 +0100
Message-ID: <156950767876.30879.17024491763471689960.stgit@warthog.procyon.org.uk>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Thu, 26 Sep 2019 14:21:21 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_072122_639641_7ADF20F3 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 linux-mtd@lists.infradead.org, viro@zeniv.linux.org.uk,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The mounting of jffs2 is broken due to the changes from the new mount API
because it specifies a "source" operation, but then doesn't actually
process it.  But because it specified it, it doesn't return -ENOPARAM and
the caller doesn't process it either and the source gets lost.

Fix this by simply removing the source parameter from jffs2 and letting the
VFS deal with it in the default manner.

To test it, enable CONFIG_MTD_MTDRAM and allow the default size and erase
block size parameters, then try and mount the /dev/mtdblock<N> file that
that creates as jffs2.  No need to initialise it.

Fixes: ec10a24f10c8 ("vfs: Convert jffs2 to use the new mount API")
Reported-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: David Woodhouse <dwmw2@infradead.org>
cc: Richard Weinberger <richard@nod.at>
cc: linux-mtd@lists.infradead.org
---

 fs/jffs2/super.c |    2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
index cbe70637c117..0e6406c4f362 100644
--- a/fs/jffs2/super.c
+++ b/fs/jffs2/super.c
@@ -163,13 +163,11 @@ static const struct export_operations jffs2_export_ops = {
  * Opt_rp_size: size of reserved pool in KiB
  */
 enum {
-	Opt_source,
 	Opt_override_compr,
 	Opt_rp_size,
 };
 
 static const struct fs_parameter_spec jffs2_param_specs[] = {
-	fsparam_string	("source",	Opt_source),
 	fsparam_enum	("compr",	Opt_override_compr),
 	fsparam_u32	("rp_size",	Opt_rp_size),
 	{}


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
