Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2211BAB5D
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 19:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dxg6dY6FxJESkXI7gPHmR2XBNPqy5X0hKuLY06/O2lA=; b=SLJLHyk9+69ZMg
	Om282BzvmFP808A4379ZEpzS1s77Z1CJRkRAXMUpTg2iMr57GuLj63UdfVkDRMBI8zmvM4hGfG2yM
	RzzThb9srbq6ocHublQULPYsNc9/6D24Hv1C0ypZwntiKApIEsmlVkpTTpSYLSlTE3zwS2fM2LAtf
	DLe6ADeZoAyWF4SMG6x3j+aqB24J1/tp7B3geU+FZU44eJB1/YN+It7wdR/pUISZ4H90O4KW97nBB
	tcusyXaJKdxyNTVjt8je1mgShPbBWsmUKPyFmEhpXzzrgMW8b40J5MqzYDmTaIQs2awkf70dL4H8G
	5ktrz6W3ReCaGtuxBR7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7d9-0002f7-H7; Mon, 27 Apr 2020 17:33:19 +0000
Received: from smtprelay0057.hostedemail.com ([216.40.44.57]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7cx-0002df-31
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 17:33:08 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 1D04C1802915B;
 Mon, 27 Apr 2020 17:33:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1605:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:2895:2896:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:4321:5007:6119:6120:7903:9036:10004:10400:10481:10848:10967:11026:11232:11473:11658:11914:12043:12296:12297:12555:12683:12740:12895:13071:13439:13894:14180:14181:14659:14721:14819:19900:21060:21063:21080:21433:21611:21627:21939:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: hot35_721b618e1162e
X-Filterd-Recvd-Size: 4856
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Mon, 27 Apr 2020 17:33:04 +0000 (UTC)
Message-ID: <e2c8b5ea654600ac36949f8f0621913ceaf96ddc.camel@perches.com>
Subject: Re: [RFC PATCH] mtd: lpddr: Fix bad logic in print_drs_error
From: Joe Perches <joe@perches.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Mon, 27 Apr 2020 10:33:02 -0700
In-Reply-To: <20200427152913.47a48b46@xps13>
References: <2e19547dcec386b47923211896f43053b60ebc60.camel@perches.com>
 <20200427152913.47a48b46@xps13>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_103307_187192_0998A289 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.57 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.57 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 2020-04-27 at 15:29 +0200, Miquel Raynal wrote:
> Hi Joe,

Hello Miquel.

> Joe Perches <joe@perches.com> wrote on Mon, 30 Mar 2020 12:56:59 -0700:
> =

> > Update logic for broken test.
> > Use a more common logging style.
> > =

> > Miscellanea:
> > =

> > o Coalesce formats
> > =

> > Signed-off-by: Joe Perches <joe@perches.com>
> > ---
> > =

> > Found by inspection of include files using printk.
> > =

> > It appears the logic in this function is broken for the
> > consecutive tests of
> > =

> > 	if (prog_status & 0x3)
> > 		...
> > 	else if (prog_status & 0x2)
> > 		...
> > 	else (prog_status & 0x1)
> > 		...
> > =

> > Likely the first test should be
> > =

> > 	if ((prog_status & 0x3) =3D=3D 0x3)
> =

> I had a hard time understanding the patch just with the commit log, I
> think the above text is as important.
> =

> In fact, would you mind doing the printk->pr_notice in a first patch,
> and fix the wrong condition in a separate change?
> =

> > And this function is only used in drivers/mtd/lpddr/lpddr_cmds.c
> > perhaps it should be moved there.
> =

> Agreed, do not hesitate to move the function as suggested in a third
> patch.

You are the maintainer here no?

I think you (or perhaps the author Alexey Korolev but he hasn't
been active in a decade) should be doing all this.

I just identified the logic defect.

> >  include/linux/mtd/pfow.h | 31 ++++++++++++++-----------------
> >  1 file changed, 14 insertions(+), 17 deletions(-)
> > =

> > diff --git a/include/linux/mtd/pfow.h b/include/linux/mtd/pfow.h
> > index 122f343..1c08e75 100644
> > --- a/include/linux/mtd/pfow.h
> > +++ b/include/linux/mtd/pfow.h
> > @@ -127,31 +127,28 @@ static inline void print_drs_error(unsigned dsr)
> >  	int prog_status =3D (dsr & DSR_RPS) >> 8;
> >  =

> >  	if (!(dsr & DSR_AVAILABLE))
> > -		printk(KERN_NOTICE"DSR.15: (0) Device not Available\n");
> > -	if (prog_status & 0x03)
> > -		printk(KERN_NOTICE"DSR.9,8: (11) Attempt to program invalid "
> > -						"half with 41h command\n");
> > +		pr_notice("DSR.15: (0) Device not Available\n");
> > +
> > +	if ((prog_status & 0x03) =3D=3D 0x03)
> > +		pr_notice("DSR.9,8: (11) Attempt to program invalid half with 41h co=
mmand\n");
> >  	else if (prog_status & 0x02)
> > -		printk(KERN_NOTICE"DSR.9,8: (10) Object Mode Program attempt "
> > -					"in region with Control Mode data\n");
> > +		pr_notice("DSR.9,8: (10) Object Mode Program attempt in region with =
Control Mode data\n");
> >  	else if (prog_status &  0x01)
> > -		printk(KERN_NOTICE"DSR.9,8: (01) Program attempt in region "
> > -						"with Object Mode data\n");
> > +		pr_notice("DSR.9,8: (01) Program attempt in region with Object Mode =
data\n");
> > +
> >  	if (!(dsr & DSR_READY_STATUS))
> > -		printk(KERN_NOTICE"DSR.7: (0) Device is Busy\n");
> > +		pr_notice("DSR.7: (0) Device is Busy\n");
> >  	if (dsr & DSR_ESS)
> > -		printk(KERN_NOTICE"DSR.6: (1) Erase Suspended\n");
> > +		pr_notice("DSR.6: (1) Erase Suspended\n");
> >  	if (dsr & DSR_ERASE_STATUS)
> > -		printk(KERN_NOTICE"DSR.5: (1) Erase/Blank check error\n");
> > +		pr_notice("DSR.5: (1) Erase/Blank check error\n");
> >  	if (dsr & DSR_PROGRAM_STATUS)
> > -		printk(KERN_NOTICE"DSR.4: (1) Program Error\n");
> > +		pr_notice("DSR.4: (1) Program Error\n");
> >  	if (dsr & DSR_VPPS)
> > -		printk(KERN_NOTICE"DSR.3: (1) Vpp low detect, operation "
> > -					"aborted\n");
> > +		pr_notice("DSR.3: (1) Vpp low detect, operation aborted\n");
> >  	if (dsr & DSR_PSS)
> > -		printk(KERN_NOTICE"DSR.2: (1) Program suspended\n");
> > +		pr_notice("DSR.2: (1) Program suspended\n");
> >  	if (dsr & DSR_DPS)
> > -		printk(KERN_NOTICE"DSR.1: (1) Aborted Erase/Program attempt "
> > -					"on locked block\n");
> > +		pr_notice("DSR.1: (1) Aborted Erase/Program attempt on locked block\=
n");
> >  }
> >  #endif /* __LINUX_MTD_PFOW_H */
> > =

> > =

> =

> Thanks,
> Miqu=E8l


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
