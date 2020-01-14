Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB8713A3AF
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 10:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PW4rwQ1ZidRrBUBKzKzDLUZ4ptjFI2lt/UUev/6KB1k=; b=pmr1lJniGDLlIf
	DCUEp+TEzdlTBqRX0cmm8UlUpJRGkproJXRprqU4aX2WVBzSDmeYR3nMMnz3aRWMrOCHSwaUAIzGq
	hy3ali7P0p2MJIYOFB27gzYEQLfAv8hpm7ZmFTyIbSbllhUlE38pR8NRoT60c+piQBpQyaL+8EXJa
	MCCgXDtdJIfadEMDJY1mWHGzK2MHO3eAkfSht8cygyZSF0eN+bhE07CL3mxyCM6IU0pQ82BZDqoBg
	+hUwIbRmTRf/I1Q6px4pwf5dPjwe7aIIp+4Rt317mmE4A8k5DaOkbSUl5GFPLrwFpW6A5KbwomcCw
	19q/Kv8jyI2HwXqNBNSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irINq-0007Hq-6c; Tue, 14 Jan 2020 09:21:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irINe-0007HR-0I
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 09:21:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1irINZ-000420-DH; Tue, 14 Jan 2020 10:20:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1irINX-0004kf-RU; Tue, 14 Jan 2020 10:20:51 +0100
Date: Tue, 14 Jan 2020 10:20:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: quanyang.wang@windriver.com
Subject: Re: [PATCH] ubifs: fix memory leak from c->sup_node
Message-ID: <20200114092051.autszasi2rmywtyk@pengutronix.de>
References: <20200114054311.8984-1-quanyang.wang@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114054311.8984-1-quanyang.wang@windriver.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:20:10 up 190 days, 15:30, 87 users,  load average: 0.30, 0.21,
 0.28
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_012058_045194_4F88BBAD 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 01:43:11PM +0800, quanyang.wang@windriver.com wrote:
> From: Quanyang Wang <quanyang.wang@windriver.com>
> 
> The c->sup_node is allocated in function ubifs_read_sb_node but
> is not freed. This will cause memory leak as below:
> 
> unreferenced object 0xbc9ce000 (size 4096):
>   comm "mount", pid 500, jiffies 4294952946 (age 315.820s)
>   hex dump (first 32 bytes):
>     31 18 10 06 06 7b f1 11 02 00 00 00 00 00 00 00  1....{..........
>     00 10 00 00 06 00 00 00 00 00 00 00 08 00 00 00  ................
>   backtrace:
>     [<d1c503cd>] ubifs_read_superblock+0x48/0xebc
>     [<a20e14bd>] ubifs_mount+0x974/0x1420
>     [<8589ecc3>] legacy_get_tree+0x2c/0x50
>     [<5f1fb889>] vfs_get_tree+0x28/0xfc
>     [<bbfc7939>] do_mount+0x4f8/0x748
>     [<4151f538>] ksys_mount+0x78/0xa0
>     [<d59910a9>] ret_fast_syscall+0x0/0x54
>     [<1cc40005>] 0x7ea02790
> 
> Free it in ubifs_umount and in the error path of mount_ubifs.
> 
> Fixes: fd6150051bec ("ubifs: Store read superblock node")
> Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>

Looks good.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
>  fs/ubifs/super.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
> index 7d4547e5202d..a4412c259bb3 100644
> --- a/fs/ubifs/super.c
> +++ b/fs/ubifs/super.c
> @@ -1599,6 +1599,7 @@ static int mount_ubifs(struct ubifs_info *c)
>  	vfree(c->ileb_buf);
>  	vfree(c->sbuf);
>  	kfree(c->bottom_up_buf);
> +	kfree(c->sup_node);
>  	ubifs_debugging_exit(c);
>  	return err;
>  }
> @@ -1641,6 +1642,7 @@ static void ubifs_umount(struct ubifs_info *c)
>  	vfree(c->ileb_buf);
>  	vfree(c->sbuf);
>  	kfree(c->bottom_up_buf);
> +	kfree(c->sup_node);
>  	ubifs_debugging_exit(c);
>  }
>  
> -- 
> 2.17.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
