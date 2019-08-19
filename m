Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163A294B30
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 19:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wikF5MDPlWyCDxYl7FeTFo2DIqqcqgaw3/l3QR6khPY=; b=KHA6vUyPkr6cSU
	qlPdupQLaijP+DLl80RLYj1IWhRFQdy4Ckx4E49PRR4q8PXMjgoomxHwT9BolKK8MbY9Vp2uMuq1K
	c4TpTIWDu2unFiSEDXdwLhZ1mOKKthUo0KpgBYKyJh+7Q50O1X+eHuN0ezC74WgN0QTcm7iStn9Eg
	lFDQ+fnPAf1cK/TmXa9WT5YJRN3qXEg0LX50cSiCPF6B8mbh+bJq7euC/u32v1gKvD0kSbW4sSRAB
	JIMQfJ9d0hzu/PopOM6NYRSpjzC9cRVY0Sh+NuxzE3Y/5/5fDqyTA37rLQlxsPNn87atACwUSdK44
	z1QKQ6XGmEz+9t9WP0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzl5K-0001RR-Fl; Mon, 19 Aug 2019 17:04:46 +0000
Received: from ajax.cs.uga.edu ([128.192.4.6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzl5C-0001QJ-4Y
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 17:04:39 +0000
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49]) (authenticated bits=0)
 by ajax.cs.uga.edu (8.14.4/8.14.4) with ESMTP id x7JH4UHx024738
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <linux-mtd@lists.infradead.org>; Mon, 19 Aug 2019 13:04:31 -0400
Received: by mail-lf1-f49.google.com with SMTP id x3so1945669lfc.0
 for <linux-mtd@lists.infradead.org>; Mon, 19 Aug 2019 10:04:31 -0700 (PDT)
X-Gm-Message-State: APjAAAXNvBtNtbaICnCB+ttBHmcc6qdrBVDXXopq5lVP28sy6S3zz9ec
 //UK1EdP9aXiprRv2/SAZ9dz9f5R8gGkzBes900=
X-Google-Smtp-Source: APXvYqz0CsDKhWLNGlfpj78P2CP6D94gX7ot0fBFsR3ju2fwmXEgDiy86CgTCeVqq2XiGXOFVsehNclp+9E/5SALqRU=
X-Received: by 2002:ac2:442d:: with SMTP id w13mr13604474lfl.184.1566234269783; 
 Mon, 19 Aug 2019 10:04:29 -0700 (PDT)
MIME-Version: 1.0
References: <1566149993-2748-1-git-send-email-wenwen@cs.uga.edu>
 <e52a548a-0516-55ee-4005-5cc24c3a20b5@microchip.com>
In-Reply-To: <e52a548a-0516-55ee-4005-5cc24c3a20b5@microchip.com>
From: Wenwen Wang <wenwen@cs.uga.edu>
Date: Mon, 19 Aug 2019 13:03:53 -0400
X-Gmail-Original-Message-ID: <CAAa=b7cnsmMNPo+WCBtfKemP6G=Aau5SQBmDyFv-LuTdx5eeCw@mail.gmail.com>
Message-ID: <CAAa=b7cnsmMNPo+WCBtfKemP6G=Aau5SQBmDyFv-LuTdx5eeCw@mail.gmail.com>
Subject: Re: [PATCH] mtd: spi-nor: fix a memory leak bug
To: Tudor Ambarus <Tudor.Ambarus@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_100438_339687_AA163481 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [128.192.4.6 listed in list.dnswl.org]
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
Cc: Wenwen Wang <wenwen@cs.uga.edu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:NAND FLASH SUBSYSTEM" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 2:03 AM <Tudor.Ambarus@microchip.com> wrote:
>
>
>
> On 08/18/2019 08:39 PM, Wenwen Wang wrote:
> > In spi_nor_parse_4bait(), 'dwords' is allocated through kmalloc(). However,
> > it is not deallocated in the following execution if spi_nor_read_sfdp()
> > fails, leading to a memory leak. To fix this issue, free 'dwords' before
> > returning the error.
>
> Looks good. Would you add a Fixes tag?

Sure, I will add the Fixes tag and resubmit the patch. Thanks!

Wenwen

> >
> > Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index 03cc788..a41a466 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -3453,7 +3453,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
> >       addr = SFDP_PARAM_HEADER_PTP(param_header);
> >       ret = spi_nor_read_sfdp(nor, addr, len, dwords);
> >       if (ret)
> > -             return ret;
> > +             goto out;
> >
> >       /* Fix endianness of the 4BAIT DWORDs. */
> >       for (i = 0; i < SFDP_4BAIT_DWORD_MAX; i++)
> >

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
