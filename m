Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0685E8428
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 10:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nsyx1JdugXyq4CVZEobSeMURUNXCh2sCjCglOIwzOnQ=; b=MoUr7d593e+OU1
	S4RgGqseiHzErg1lBfXuDIYHF2kFkAXhw/fLk3/xUAX9zp6C+pbuhGApjXlF0TS3Nqjny9ayWQmqq
	PQtm5cyAibcM5aRzt5+3WJXBqgCLybPnGSLs8XbfDJeF/OwPR9qPjBSq0tnccD+V4Q8U6xmnAuE35
	ztNIjUG7YabKLZelu7GBBdOd4ZGe9UF/A1dT7iPHXD7i7wmmCCRZY6jp+NCA+TBh39ETR4znDVgIM
	9aw3rWOKABtncf2AvQkpgNerwj2jmNAVpk0xV9vlwLmtNw1EHnMn6rQL6qkErQ0zHuglxq6s98ePU
	q41hSwD3Ujd/n2O8rZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNgh-0005Ak-1T; Tue, 29 Oct 2019 09:21:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNgY-000594-Ij
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 09:21:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iPNgQ-00044P-FT; Tue, 29 Oct 2019 10:20:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1iPNgP-0002iK-23; Tue, 29 Oct 2019 10:20:57 +0100
Date: Tue, 29 Oct 2019 10:20:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Zhihao Cheng <chengzhihao1@huawei.com>
Subject: Re: [PATCH] ubifs: do_kill_orphans: Fix a memory leak bug
Message-ID: <20191029092057.fsklsibqrmbmacar@pengutronix.de>
References: <1572339670-68694-1-git-send-email-chengzhihao1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572339670-68694-1-git-send-email-chengzhihao1@huawei.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:14:52 up 113 days, 15:25, 93 users,  load average: 0.01, 0.09,
 0.12
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_022106_623751_087760DC 
X-CRM114-Status: GOOD (  18.22  )
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
Cc: richard@nod.at, yi.zhang@huawei.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, dedekind1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 05:01:10PM +0800, Zhihao Cheng wrote:
> If there are more than one valid snod on the sleb->nodes list,
> do_kill_orphans will malloc ino more than once without releasing
> previous ino's memory. Finally, it will trigger memory leak.
> 
> Fixes: ee1438ce5dc4 ("ubifs: Check link count of inodes when...")
> Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
> Signed-off-by: zhangyi (F) <yi.zhang@huawei.com>
> ---
>  fs/ubifs/orphan.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/ubifs/orphan.c b/fs/ubifs/orphan.c
> index 3b4b411..f211ed3 100644
> --- a/fs/ubifs/orphan.c
> +++ b/fs/ubifs/orphan.c
> @@ -673,9 +673,11 @@ static int do_kill_orphans(struct ubifs_info *c, struct ubifs_scan_leb *sleb,
>  		if (first)
>  			first = 0;
>  
> -		ino = kmalloc(UBIFS_MAX_INO_NODE_SZ, GFP_NOFS);
> -		if (!ino)
> -			return -ENOMEM;
> +		if (!ino) {
> +			ino = kmalloc(UBIFS_MAX_INO_NODE_SZ, GFP_NOFS);
> +			if (!ino)
> +				return -ENOMEM;
> +		}

This solves only part of the problem. There are several places in the
loop that just return instead of jumping to out_free. These need to be
fixed as well.
I am not sure if it's worth it to allocate ino on demand. It would be
more straight forward to allocate it once initially before the loop.
Not sure though what Richard prefers.

Regards,
  Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
