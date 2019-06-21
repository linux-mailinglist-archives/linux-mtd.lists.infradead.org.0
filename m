Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA564E081
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 08:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Be5/E1bGk6zXGe1ZGdrUGtyoXKZX54+W3Lpis0hpeo=; b=VoCM+qsxF1zFrE
	yGNOjBq/g9UJAAehkS/t0QRuude+Y9O/JTWnH/flSZ5deFuU46WI/VIKS+pVq/FDdPI09tyOZldWq
	oj0TmJ2pC/b/F2ukKsug/ahiUgzrW97y/i4E8uXOFiX+XbVHDn8ZDEiwPoVUW2KLoP3qVT38N4fKf
	HOe2VU02jBdElRQCLijrqQyj/g9lwiryhRHF66I9vtSacL4oSE/JJld3SlLBGQ0L8if9ISPRj3juo
	3CIXZS+NufQYvh6kEQzDjN5p5EHxHXetxWCeIrlmYSiDmuAr9ErXcKJ+upzkxxITe6t90EMAxUvWQ
	645OtuoWYWHG5hcoMsgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heD0V-0003CX-DR; Fri, 21 Jun 2019 06:26:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heD0M-0003C9-Jo
 for linux-mtd@lists.infradead.org; Fri, 21 Jun 2019 06:26:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9915020673;
 Fri, 21 Jun 2019 06:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561098393;
 bh=XYbXweMpuaynOcY+nT1g0YPrH1Rpfi5GHw7WUdRg77s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lTRHYMfgF0ipxXwUgC3S6fbt4sKSxVZMpRmn0VZOujrxh3Aa2r11A6d/nGGvHedCY
 +QuP7k2kHdXU48sZdzp/ISJfmgkxVXse4jrh1pwExfvi1WyWj92pQ+J0n0FyrIh1uD
 LTWmHrYTjnTuXLUyrg3oJD28j6dEwsz1xi5PeAFQ=
Date: Fri, 21 Jun 2019 08:26:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] mtd: mtd-abi: Don't use C++ comments
Message-ID: <20190621062630.GC11084@kroah.com>
References: <20190620155505.27036-1-natechancellor@gmail.com>
 <CAKwvOdk7ZTcWEXPTBASPzk1SjOdnONawtQJkR-jU=REFSo1hVQ@mail.gmail.com>
 <20190620201549.GA65397@archlinux-epyc>
 <CAKwvOd=okFdfSfGpXTAUqyF=vfnaZFgdwHC-i+CnaFxGSh2Thg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=okFdfSfGpXTAUqyF=vfnaZFgdwHC-i+CnaFxGSh2Thg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_232634_670788_31BDF8CC 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Richard Weinberger <richard@nod.at>, LKML <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 01:29:47PM -0700, Nick Desaulniers wrote:
> On Thu, Jun 20, 2019 at 1:15 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Thu, Jun 20, 2019 at 12:56:58PM -0700, Nick Desaulniers wrote:
> > > Should there be a fixes by tag?
> >
> > Normally, I would have added one but this issue has been present since
> > the beginning of git history. According to Thomas Gleixner's pre-git
> > history tree, it would be:
> >
> > Fixes: 7df80b4c8964 ("MTD core include and device code cleanup")
> >
> > but since that hash doesn't exist in the normal git history, I don't
> > think it is worth adding. Of course, if the maintainers want to add it,
> > I won't object.
> >
> > [1]: https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git
> 
> LOL good point; I wonder if the stable maintainers have thoughts on
> that or how they expect us to signal that case if we even need to do
> anything at all.

If you want it applied "since the beginning of time", then just do:

Cc: <stable@vger.kernel.org> # 2.6.0+

or some such marking.

thanks,

greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
