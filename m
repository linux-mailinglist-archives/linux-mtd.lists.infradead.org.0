Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1326C124F48
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Dec 2019 18:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78FX7k+JkbqV6noo+3mFJ8GvjPDSptsxy9+F7rVzDIM=; b=hMh4UJFoXWD471
	zyOc3cixl7WYMoPh8/Udz/uc+IBJ71xZ3RVz+YA909ddLoV7NgVZPdlwW017BDFKrKPqk5xJEGZ6a
	8BDyYKJMlNukfBvZq/xHPiGzxPzOD0zxdn/13ngKAPlB7a6nzXhbdBG0YGJTZxJ53/8hITdFCqOxA
	D7Q8xwNP5o407DWqAg3GT3Gn8NHknTr+wPrCOFoDfm/vTvY1lR6UQCBxIG47UdECvTniWbWWimQvK
	LHu3lfkIALbVG/lVBil09K+o4Sfk+UwTkloqtkhHyMaQNsoYuxN1ONPPdle4OLHRGr67ZxC2SRCAz
	tXyrDNaVYuvSmWL/uh8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihd7v-0001i8-7q; Wed, 18 Dec 2019 17:28:47 +0000
Received: from isilmar-4.linta.de ([136.243.71.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihd7m-0001gR-1J
 for linux-mtd@lists.infradead.org; Wed, 18 Dec 2019 17:28:39 +0000
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
Received: from light.dominikbrodowski.net (brodo.linta [10.1.0.102])
 by isilmar-4.linta.de (Postfix) with ESMTPSA id B81CF200713;
 Wed, 18 Dec 2019 17:28:21 +0000 (UTC)
Received: by light.dominikbrodowski.net (Postfix, from userid 1000)
 id BC1DE20BAB; Wed, 18 Dec 2019 18:28:13 +0100 (CET)
Date: Wed, 18 Dec 2019 18:28:13 +0100
From: Dominik Brodowski <linux@dominikbrodowski.net>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: Re: [PATCH] mtd: maps: pcmciamtd: fix possible
 sleep-in-atomic-context bugs in pcmciamtd_set_vpp()
Message-ID: <20191218172813.GA338501@light.dominikbrodowski.net>
References: <20191218140552.12249-1-baijiaju1990@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218140552.12249-1-baijiaju1990@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_092838_229686_45E1ABF6 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [136.243.71.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 10:05:52PM +0800, Jia-Ju Bai wrote:
> The driver may sleep while holding a spinlock.
> The function call path (from bottom to top) in Linux 4.19 is:
> 
> drivers/pcmcia/pcmcia_resource.c, 312:
> 	mutex_lock in pcmcia_fixup_vpp
> drivers/mtd/maps/pcmciamtd.c, 309: 
> 	pcmcia_fixup_vpp in pcmciamtd_set_vpp
> drivers/mtd/maps/pcmciamtd.c, 306: 
> 	_raw_spin_lock_irqsave in pcmciamtd_set_vpp
> 
> drivers/pcmcia/pcmcia_resource.c, 312:
> 	mutex_lock in pcmcia_fixup_vpp
> drivers/mtd/maps/pcmciamtd.c, 312: 
> 	pcmcia_fixup_vpp in pcmciamtd_set_vpp
> drivers/mtd/maps/pcmciamtd.c, 306: 
> 	_raw_spin_lock_irqsave in pcmciamtd_set_vp
> 
> mutex_lock() may sleep at runtime.

Thanks for noticing this issue.

> To fix these bugs, pcmcia_fixup_vpp() is called without holding the
> spinlock.

I don't think that this is the right approach here -- we lose the protection
against races in calls to pcmcia_fixup_vpp(). Instead, we should change the
spinlock to a mutex, which seems to be sufficient here. Could you prepare
such a patch, please?

Thanks,
	Dominik

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
