Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C4112AF6B
	for <lists+linux-mtd@lfdr.de>; Thu, 26 Dec 2019 23:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fi+AH3ibTggjtcIj5fxtA1+NJaQJ2A5dtPEDXYCvQRs=; b=L0KKe4DKRTAmgo
	g+uO3ihjh7Red5k4oDKdzuXOh6apfvjFxqa+fV8++Qwnp2NehUvg9S5D/cVeqLWRdsvJMeS/nfP4T
	iUjCkKaH1cYUstbk2FDq777OS8RLQ1G4PFYq2y2QtuXW7kDZlDo6ZLcx4+K6dD4AZ4aS+BoGG2t55
	oNkmCad4PawpfWAxaI34dSt/Hp7mcQcjxG+T5Uz9jmzatLgD1KNmeqq/OUs7TLl7AvyGh7PKejwMJ
	BQfz8w1rEkuWXy+9BVx50UUBRsYPsHC/YYcLxfvDxas/9EGwF6WrJWYPdqKHCdgBTGAV0G10ihHR5
	Mw6QI5/+nB0M+XDT6Mxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikbxg-0007T4-P4; Thu, 26 Dec 2019 22:50:32 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikbxP-0005tU-8I
 for linux-mtd@lists.infradead.org; Thu, 26 Dec 2019 22:50:16 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ikbvG-0000uN-8v; Thu, 26 Dec 2019 22:48:02 +0000
Date: Thu, 26 Dec 2019 22:48:02 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: Re: [PATCH] fs: jffs2: fix possible sleep-in-atomic-context bugs
Message-ID: <20191226224802.GR4203@ZenIV.linux.org.uk>
References: <20191217135143.12875-1-baijiaju1990@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217135143.12875-1-baijiaju1990@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_145015_329110_B8B48377 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: richard@nod.at, dwmw2@infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 09:51:43PM +0800, Jia-Ju Bai wrote:
> The filesystem may sleep while holding a spinlock.
> The function call path (from bottom to top) in Linux 4.19 is:
> 
> fs/jffs2/malloc.c, 188: 
> 	kmem_cache_alloc(GFP_KERNEL) in jffs2_alloc_refblock
> fs/jffs2/malloc.c, 221: 
> 	jffs2_alloc_refblock in jffs2_prealloc_raw_node_refs

... gets called only if jeb->last_node is NULL.  I've no idea
whether it is possible on those call chains and analysis is
certainly needed before applying that kind of patches.

It might very well be real, and certainly worth asking jffs2
folks to look into.  But this kind of "defensive" fixes
is no good without understanding of the situation in the
code being (hopefully) fixed.

It's a good catch; even if there is a reason why we never
hit the blocking allocation in there, that reason should be
spelled out in the code.  It isn't, and that can easily
grow into a bug even if it hasn't done so already.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
