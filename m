Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D76551E3C97
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 10:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIkO5UZZeJKX1nIJUswu5YkTcNkR9IQ3xqlgImVtLMc=; b=GPPqbKgVvzkmfG
	ZzD0VJquWynFSk9tKRDrb9jVDZt+SkcPODMZFD1MdQtXjPcMnr1bMeDvi3lJVpJc4dtuQLIjLCuec
	bgFlg0fB/sbX4U8yZ4hFInqKllxugTpqZnSO6yRijw6z3fA0XKj/LyqzDlcWTLVsnq3KMJstbDSQR
	ZxLRTZvD8ZJ6xomlLRxSeZYMvbs/Som2JavCLZ2ctjd3qBt6UPhzprs1yi/+kvUM76ABcdBoo3uVb
	U5gGCoBV+DV8YOHiNc7fAS3EHwbz2uIl/IpLOZhCyXKAiwSDdi4F5iGQmxOxXMhv4TfpGiTG1wqsT
	GsQCbS9Qo/uiAvrKBetA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrkg-0004CB-Hx; Wed, 27 May 2020 08:49:30 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrkT-0004BK-Ad
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 08:49:18 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1D198240015;
 Wed, 27 May 2020 08:49:12 +0000 (UTC)
Date: Wed, 27 May 2020 10:49:11 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v5 28/28] mtd: rawnand: Allocate the best data interface
 structure dynamically
Message-ID: <20200527104911.77679eeb@xps13>
In-Reply-To: <20200527103519.0863732c@collabora.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-29-miquel.raynal@bootlin.com>
 <20200527002844.7e54aa22@collabora.com>
 <20200527095732.467db722@xps13>
 <20200527103519.0863732c@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014917_506031_EF3A4C52 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 27 May
2020 10:35:19 +0200:

> On Wed, 27 May 2020 09:57:32 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Maybe I misunderstood your request, you were saying that allocating a
> > "best data interface object" would be good, so I interpreted it as:
> > rename it, and allocated it dynamically. I'm fine keeping
> > data_interface and just declaring it as a pointer.  
> 
> Correct, renaming it into best_iface_cfg is probably good, but then,
> maybe we should have a current_iface_cfg, so the core/drivers always
> have a pointer to the currently applied config (which after a reset
> can be the reset config for a short period of time).

That's why I created an indirection on chip->data_interface.
nand_get_interface_cfg() is here for that -> the drivers do not care
about which one is applied. I don't think we need more than I already
proposed:
-> there is one default reset configuration object that can be used by
   anyone
-> there is a best configuration

If the best configuration has been derived, then it will be used.
Otherwise, the helper will fallback to the default slower one, and this
covers all the cases :)

> 
> > 
> > Anyway, I like talking about the "interface" rather than the "interface
> > configuration" which is implied in my mind, I saw you were asking to
> > add "configuration" sometimes, do you have something in mind that I
> > don't?  
> 
> Well, to me a configuration is something that you can manipulate without
> necessarily implying it's the current state the HW operates in. For a
> configuration to be active, you have to apply it. And that's pretty
> much what the nand_data_interface describes, a configuration, that can
> be retrieved, tweaked, and finally applied. Hence the renaming I
> suggest.

Fine.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
