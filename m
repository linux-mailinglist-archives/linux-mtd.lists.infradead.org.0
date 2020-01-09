Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F42136193
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 21:09:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OheN/fBBoCLMiaPTOEjSp4dRmKUkmxgbs0JYRXrBZws=; b=pVg72drB5OVuLY
	ktzMJYh8GAyE7dAiwl2aQj9BE6XoYKH05P9Lvm2L8w/RJNMSjZKkR0Pj+9ALgiIkIISRP661MJHyA
	t6sDDPR88hTP1QfnXkxszHkj/eAfyvytAl7KtmLGrWA3foxOm/yAJFUkO8GUH//EvLo55wqzA0PTJ
	SCcjyZg2Nrhblh4JDDLoaMQpwwcr49RwndrV9e5AuJBBUmkC9OjR4w4/ZPEyU8qrAZ3c5cFAYYDE0
	z72TB+vCOIsqeQfWK1LWJvb1xwYGK5DDwqffPyCIONDQw+j+AkZipVYQQDctgYpM3IY7IYhU8OLw/
	JH6gYStGfS+DK6DV9Mgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipe7p-0000b4-0F; Thu, 09 Jan 2020 20:09:49 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipe7d-0000aE-9b
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 20:09:38 +0000
Received: by mail-il1-x144.google.com with SMTP id g12so6770632ild.2
 for <linux-mtd@lists.infradead.org>; Thu, 09 Jan 2020 12:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aZw32fXMw86fpbf9RJzMhyLDcqHizKEJRkdVn5TpKlc=;
 b=iAi+v0g0a/otanG28TUbCOLcoPhPzOKZHoSXBnqFQtgLbbvcbHYtvKmIwB72Xloax5
 GoaUwMOMEgNdgQpjCnPfPQyHtl8tDtTWGuIQeQeh5MaPyuRvH+HoC8vsPS4h9rzhUvMX
 c19bscr/VVhyG0EZ4H1t9+Srltwlp629+HmXTFwmgBHL0YKav7TIRMuNVwUzo1LTyJM0
 kbFFYV4zypTWyX36HEVYCVVLJWqn87rZ8EN4R//AjguJA6eiIn3E/oyyh28DjEuM2Ivb
 fQBW7BL2FjE6Z71Jl9MDQrr1huGU4ENvAmMT5E9/qds1qT0PrK0sRxdRN+vrDLraMXI8
 QxPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aZw32fXMw86fpbf9RJzMhyLDcqHizKEJRkdVn5TpKlc=;
 b=MrTRi3fWWYxyrelAZmg3xpZFgBRMikQxeJuPujaCzbopqAEqkicCRMJJDBq3xq6iYh
 nnXqLIe1cENo4U2Owrdt3378X9vATpjeMYEzAzcyTF3PXgxHSy6fREYQWoT2zY3c7Jz/
 bF+chwYaa/tf7yunXkQXnpQG6d6YOYFAE9biwvksVkie4uLxEMK3APlZB0RV8qzD8Tq/
 GcpFCEQ4IDtuzx0VDDEcL1ZUiterto/4WzywBb4Q3XW3q+i7RdgKR7/9dCfznINIEaSL
 Zz/0ijCP7do0bT5jvykf6X8s9ulBJwpnEo6JslCm+ZuYQXquZb8fgM+qcenM0Uvx6UBo
 BmlA==
X-Gm-Message-State: APjAAAU0/sBWYHDfrKMTICz2Dh/sKU2PRGcA1m5ZAOV8fuN1Dd1aaoAE
 O+exJ38OFJptdeoUgBFw/4qb/FbsMOah0Qwhsn+hXECP
X-Google-Smtp-Source: APXvYqy3ZoiLSUbJLur5KqGhtON2fPbbKXZVTnPSddOFvpBK67aIEPKD52YFRD5D0QYdFoVcN8bmez/yEf+4D4xurMs=
X-Received: by 2002:a92:d30d:: with SMTP id x13mr10893590ila.170.1578600575056; 
 Thu, 09 Jan 2020 12:09:35 -0800 (PST)
MIME-Version: 1.0
References: <1578589556-683-1-git-send-email-han.xu@nxp.com>
 <20200109200127.0ace18cb@xps13> <87v9pkmm34.fsf@geanix.com>
In-Reply-To: <87v9pkmm34.fsf@geanix.com>
From: Han Xu <xhnjupt@gmail.com>
Date: Thu, 9 Jan 2020 14:09:24 -0600
Message-ID: <CA+EcR23zwQ2SMH5MYewXXDrGLT04hmjZVetZR6JrKvG9D19CQg@mail.gmail.com>
Subject: Re: [PATCH] mtd: rawnand: gpmi: fix the suspend/resume issue
To: Esben Haabendal <esben@geanix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_120937_361794_27ABD8F7 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xhnjupt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, martin@geanix.com,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, sean@geanix.com,
 Han Xu <han.xu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 2:06 PM Esben Haabendal <esben@geanix.com> wrote:
>
> Miquel Raynal <miquel.raynal@bootlin.com> writes:
>
> > Hi Esben, Han,
> >
> > Han Xu <han.xu@nxp.com> wrote on Fri, 10 Jan 2020 01:05:56 +0800:
> >
> >> fix several issues when system suspend/resume,
> >>
> >> - leverage the runtime pm for system suspend/resume
> >> - enable the clock before register access
> >> - re-apply timing settings
> >> - set the proper pinctrl state
> >
> > Esben are you fine with this patch?
>
> It sounds like something that should probably be 4 separate patches.
>
> > Or maybe Han you could take over Esben's patch and extend it?
>
> I don't see why my two patches, which covers point 1 and 3 in the list
> of issues covered by Han's patch, should not be merged.
>
> Han, would you mind re-spin your patch to two separate patches covering
> the remaining issues

I am fine to keep your patches and re-spin the rest changes.

>
>  - enable the clock before register access
>  - set the proper pinctrl state
>
> /Esben
>
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/



-- 
Sincerely,

Han XU

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
