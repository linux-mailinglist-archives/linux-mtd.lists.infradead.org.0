Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C621D1498
	for <lists+linux-mtd@lfdr.de>; Wed, 13 May 2020 15:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MODOwsyRc78QUKPjpYxkrfTqXFG5mil6rp6VVsEHhG0=; b=Cryj05JY4Ay6aK
	qbsTa/8TgQ+/FMpqolHOWxBrooMiyozHrD1bAbg5lSlpls2mjIV0Cj+c0O4/vt0sI+1L2dA9u4Mk9
	wWcB+6NsmrH4w7rO2Pxw3FMH47SsAHTMZaKdr4NdOe+7yVMQrAgFKP2/OhC9A99qDlqmqSApP9ZIV
	tqNKmTghYx6NwepppLdJjJ1ZbwWAbuzcUM+1hcK65hZ1AW9+cFcwCHYgPG9p7ynmdOGhNyWwIedI3
	CPOsQJQ6Ug0gDqgJwXI1gxTpIXoVNvCen+bTx49kknuojQIjyZTbUedJtWIB47bRcEcGZOqo2LH0N
	aiWafJUoS6tZWlPnsP1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrMh-0001CI-Rf; Wed, 13 May 2020 13:24:03 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrME-00011R-HJ; Wed, 13 May 2020 13:23:36 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 0B8A4200013;
 Wed, 13 May 2020 13:23:28 +0000 (UTC)
Date: Wed, 13 May 2020 15:23:27 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 0/3] mtd: rawnand: Get rid of the cmx270 driver
Message-ID: <20200513152327.3879010c@xps13>
In-Reply-To: <20200513151737.757513cf@collabora.com>
References: <20200429223134.789322-1-boris.brezillon@collabora.com>
 <20200508121041.64f91276@xps13> <87lflwngey.fsf@belgarion.home>
 <20200513151737.757513cf@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_062334_711597_630EC522 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 13 May
2020 15:17:37 +0200:

> Hi Robert,
> 
> On Wed, 13 May 2020 14:55:01 +0200
> Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> 
> > Miquel Raynal <miquel.raynal@bootlin.com> writes:
> >   
> > > Hi Robert,    
> > 
> > Mi Miquel,
> >   
> > >> I hope someone still has a board to test that.    
> > No, unfortunately I don't have this board, nor do I know of anyone having
> > one. It's the second time I see patches on cmx270, and the question to whether
> > we shoud keep this board in kernel is still in my mind ... given that cm-x300 is
> > fully supported and testable, and no one I know has a cm-x2700 ...  
> 
> What's the point of keeping support for a board no one has or no one
> cares about? I know I don't have my word in this decision, but I would
> strongly recommend getting rid of it, especially when I see such
> crappy/unmaintained code lurking around in the drivers/ tree.

I also agree on the fact that spending time on maintain unused boards
is lost time. We have so many drivers to handle, maybe it's time to get
rid of these "too" old drivers.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
