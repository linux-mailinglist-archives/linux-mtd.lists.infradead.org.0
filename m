Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CC2432DA
	for <lists+linux-mtd@lfdr.de>; Thu, 13 Jun 2019 07:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNRdcnIvhwOCxE40/sm6Csxmq+pBgAgOXooRBq9dHD8=; b=PVYemzAae8zxlo
	nJbJYpKTSu+aJK0AiqrFx6S2thtm6dJA4k0KnycmD43c+gonyvmg/YHKEqZ9UoOkXmpqov3IplmEr
	/FhNDyeBDDfeDzfZ30wSkxQNr1p3hHRySJFMyLScFtcEX2ynMVp+yPwgsPMrAPfJHvylI+ZgTMKCE
	PdD5OcGwSKEwHcSJKpSABS60w2ZuIpeQFvkcWuL4GoOV6aCJl9wjkkAlXV0wzY1Go6WnVnK+LlC/X
	jR/C8/jQBbguVZ6Ex1E6/coNP21dYBinHleXOVq19rhqFXbIxe25tRIfSJCVghKDSTkU6Z42AUjJF
	M72A+1MVHkIyqwRcc/vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbIaP-0004DW-VT; Thu, 13 Jun 2019 05:47:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbIa7-0004D3-M3
 for linux-mtd@lists.infradead.org; Thu, 13 Jun 2019 05:47:29 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7816B2084D;
 Thu, 13 Jun 2019 05:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560404846;
 bh=p2txWP7VMrpJAMTDy1gy0dhEGma8/h5lA/7cI8LgzKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=woqgM20AXAtrj2GHHrBcVxZPIn7Ybqal3ITnAUkvcIQ53ryn/bDLDAB324sGyUemS
 jOji6NkhjBZhHGkZcYMK8k7RobSrpTQ+TkJ14o1h7ASnea9D5Y4qk09oE4aBiIaC5M
 iy+YRulcJQqTArM4ZMGis8ShiXqcekZPg/AhguG0=
Date: Thu, 13 Jun 2019 07:47:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] ubifs: no need to check return value of debugfs_create
 functions
Message-ID: <20190613054723.GC19717@kroah.com>
References: <20190612152120.GA17450@kroah.com>
 <1642440141.89874.1560365637583.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1642440141.89874.1560365637583.JavaMail.zimbra@nod.at>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_224727_745423_A800762D 
X-CRM114-Status: GOOD (  12.86  )
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
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 08:53:57PM +0200, Richard Weinberger wrote:
> Greg,
> =

> ----- Urspr=FCngliche Mail -----
> > Von: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > An: "richard" <richard@nod.at>, "Artem Bityutskiy" <dedekind1@gmail.com=
>, "Adrian Hunter" <adrian.hunter@intel.com>
> > CC: "linux-mtd" <linux-mtd@lists.infradead.org>
> > Gesendet: Mittwoch, 12. Juni 2019 17:21:20
> > Betreff: [PATCH] ubifs: no need to check return value of debugfs_create=
 functions
> =

> > When calling debugfs functions, there is no need to ever check the
> > return value.  The function can work or not, but the code logic should
> > never do something different based on this.
> =

> why is it bad if we handle errors from debugfs?

Because there is no need to?  If debugfs fails, there is nothing that a
user can do about it :)

> At least a nice log message a la "sorry, no ubifs debuging for you"
> would be nice to have.

I think the lack of a debugfs file is kind of obvious :)

Anyway, the point is that there is no need to check for return values
from debugfs, and the logic of the non-debugfs code should not do
anything different if debugfs is acting up or not.

thanks,

greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
