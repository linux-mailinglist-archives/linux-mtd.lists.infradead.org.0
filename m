Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B6E130F1F
	for <lists+linux-mtd@lfdr.de>; Mon,  6 Jan 2020 10:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BefRYbuGQnps4FSH3piI4PKLUyWPmAQLsLUGpVvWjAM=; b=Aglcyd4S+ocTUv
	905G2DvRu9KY9m25uK2pgzGFRN0UdnSU85PwKemr4BlFI8Td8uy2GMlaJQL0Yfe1FLRZNLw6oUP27
	0ZuElpmlWCf+Y21zmC8zCmzFMicpIuVXEka61CZBwHG/kwLBolx6+HddoUOQbDQu0lwicWBO6V+if
	YARIt/HazCEmrdAKqMZ5Ib/L64JZA+LH8JbZ6xiUyF9B0bs75F3lzM5y5MwVYgXMa8E/TwZcPYZCA
	bzvvTtomBjT6ifRHhs5cnyi/ak5mEJ3c0EUlqRSNifxHZ/rXmBDsEosOsS09f6D4Mvj5oE5ne+0Dq
	BMBSEHP0WsuqB5PM1Byg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOHM-0003ti-U5; Mon, 06 Jan 2020 09:02:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOHE-0003t9-Nx
 for linux-mtd@lists.infradead.org; Mon, 06 Jan 2020 09:02:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ioOHB-0002cM-Cx; Mon, 06 Jan 2020 10:02:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1ioOH9-0008Ao-Gm; Mon, 06 Jan 2020 10:02:15 +0100
Date: Mon, 6 Jan 2020 10:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Hou Tao <houtao1@huawei.com>
Subject: Re: [PATCH] UBI: Fastmap: free unused fastmap anchor peb during detach
Message-ID: <20200106090215.q346oxb532bhypnu@pengutronix.de>
References: <0000000000006d0a820599366088@google.com>
 <20191220021449.120639-1-houtao1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220021449.120639-1-houtao1@huawei.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:58:43 up 182 days, 15:08, 53 users,  load average: 0.57, 0.37,
 0.30
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_010220_781612_5CC332BE 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 10:14:49AM +0800, Hou Tao wrote:
> When CONFIG_MTD_UBI_FASTMAP is enabled, fm_anchor will be assigned
> a free PEB during ubi_wl_init() or ubi_update_fastmap(). However
> if fastmap is not used or disabled on the MTD device, ubi_wl_entry
> related with the PEB will not be freed during detach.
> 
> So Fix it by freeing the unused fastmap anchor during detach.
> 
> And also don't generate the initial fm_anchor when fastmap is disabled.

I think this part deserves an extra patch. Otherwise the changes look
good to me, so:

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
