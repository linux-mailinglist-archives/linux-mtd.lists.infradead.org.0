Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D61BEDA1C
	for <lists+linux-mtd@lfdr.de>; Mon,  4 Nov 2019 08:49:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfMg/1VnWjbxxNUyImbbXcQg2Z/ZRiSIJM5CYRz68lE=; b=dUyCe8Zj8+xJd8
	cPqZXpSeOiTriSWfa6MNk7mnVWzMyA9AItUGrJ5zDHzWnI2ECXYH/WBdxcvzG3GbYB536IVbpLFsP
	UuEaFDGofCD5pWDGR++QQDu+6rAinf4u4vqNt5FrwzYFbKFIQ6D5DDame7w53lSUFbRgfko3rQWFv
	Yk4INvHNPc93w2GgkhMZYe5HEl+ZaHaZgbftcvTTN5NtSS6gtag5bIwXtw5Ui+/G2VPRA/Tn6o651
	w7BwM3xdoKmCVUfbgci/29XMxHqK5PhW8mIJyUd/ny75AZtPYRLUCruWp/meXv2Npgo2FtS2XRg8z
	AeJG8j328+ZBaiuV8qTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRX6q-0000jm-PC; Mon, 04 Nov 2019 07:49:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRX6j-0000ik-FV
 for linux-mtd@lists.infradead.org; Mon, 04 Nov 2019 07:49:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iRX6f-0004bU-Of; Mon, 04 Nov 2019 08:48:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1iRX6d-0003bW-Jo; Mon, 04 Nov 2019 08:48:55 +0100
Date: Mon, 4 Nov 2019 08:48:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 01/10] quota: Make inode optional
Message-ID: <20191104074855.plqnfznzvdzxdotf@pengutronix.de>
References: <20191030152702.14269-1-s.hauer@pengutronix.de>
 <20191030152702.14269-2-s.hauer@pengutronix.de>
 <20191101180721.GB23441@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101180721.GB23441@quack2.suse.cz>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:47:43 up 119 days, 13:57, 109 users,  load average: 0.14, 0.14,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_234901_518461_8E87AD5E 
X-CRM114-Status: GOOD (  12.19  )
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
Cc: linux-fsdevel@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 07:07:21PM +0100, Jan Kara wrote:
> On Wed 30-10-19 16:26:53, Sascha Hauer wrote:
> > To add support for filesystems which do not store quota informations in
> > an inode make the inode optional.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Umm, I don't quite like how the first three patches work out. I have
> somewhat refactored quota code to make things nicer and allow enabling of
> quotas only with superblock at hand. I'll post the patches once they pass
> some testing early next week.

Ok, thanks. I'll rebase my series onto that then and repost after
integrating the other feedback from you.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
