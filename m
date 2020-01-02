Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FC912EA29
	for <lists+linux-mtd@lfdr.de>; Thu,  2 Jan 2020 20:07:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HaNFV7vmgEMjbK21zXad78v/5C1ZZopkUH0omrj+RSc=; b=LKAV14ruPVCdIo
	f7VUnPsEGCJiH1qcT5zVt5fJwLgv3Og0eqTyUWS5lEe11GFsCrLl51SZajKwRSkwQiLKUCCwIPRAQ
	MA08CbhpnaOlk4IVCUvS0zsT6guAs3U7MiYrz9x5jV0sBjqmkbn4rFaOB0W24MobzqUWS25/LxJzC
	yBZQBLh8K5UUZaDbcsjyB3kXEwLviAEimBg7qQV83q42p+YTlapA2xOm7aSMDDJ9dysZtZD92Gv0+
	Bzhwm4b68cXBPJd0FsGU1AzyEM7D3o8kY0tvt4BGropWtstjo3RGVialdIrY+yfiWS9/80cCTWias
	AXVrOqVYGSvjmllYt+nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in5oj-0004QI-GF; Thu, 02 Jan 2020 19:07:33 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in5oY-0004Pm-4t
 for linux-mtd@lists.infradead.org; Thu, 02 Jan 2020 19:07:24 +0000
Received: by mail-qt1-x841.google.com with SMTP id e12so35362306qto.2
 for <linux-mtd@lists.infradead.org>; Thu, 02 Jan 2020 11:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QOra2Z1fvqyEGLEJ3mMnqfCHYr9XOcD8c/4WT/RhtDg=;
 b=HpM3nOSMAFHVgr7CwuE+5ImklLy49fdrxbBydRejynNUs+FDXJfR56stlFj4Bf51Ja
 nZ6hVdYELrxWhIgfZqZiU/iqzwzhuoN3ktKcSSK8vGvMOX1HEFYfP3H+pj+UwaHENHZu
 gyDdHq54wIMIVmEsVaSpwHxMf181voU6bbXoxES+kTaT/JG6Wotbh5riRnzg1pwaJoZq
 aoHlKtZKq4t8TkMgmu1gxA9DyFmSNaou2szq0KNBdbrD+cKBUVogmmDvmhYqUpQyPImP
 K80MUtFIVTlt2925gqaDvWehxDBkyua1CcnYcrlrPcyuLIGXco0sUqmOb3whrGmwmCxM
 6c/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QOra2Z1fvqyEGLEJ3mMnqfCHYr9XOcD8c/4WT/RhtDg=;
 b=bL+9y0hWMhUED7yMo17JnEJqacjz5gWbaYnsfgtkzGwlU91aXGiLttZCpbuYhDx/9Y
 UCSUpaUFCZB4E0cFwVuQUUfGYzuoQV58Td2x58EHmF4AniauCS2W3Nn50pk+720fSk2B
 iWJpdmEA44vrkKBQ2reRTspLOpkWqbRL48JlyLUkhd0Uk21+FOjMzac8pbDk8S3go2CT
 wA5pCcGMM3GEaG7qTBdxDNMbZpXrU78XwhvxiHxXgQcIvt8V+vlQlakfYpBzr73yINE7
 VrUevMClmeibMi6celVtkJbPoFd5K6U1CTxSkSGX9vVfB1++2kylavPwlt2hW6x8OjIC
 ImHg==
X-Gm-Message-State: APjAAAUBwakLtny48UkQqxFZi+VkmkIiUwNJdDW8gJJyzG6v56BIbN94
 D2KSoTKZpJ82WT3p854QYeMQjvQYySyY0D587ME=
X-Google-Smtp-Source: APXvYqx7cYF1pfoRP8gG9XOXpEuHlVsWVmEDQqUG8z1BwMpsDyif2e6A0ViQXx+tY/7EHA9vE63Zd6fjw/+DzSnnYrU=
X-Received: by 2002:ac8:36dd:: with SMTP id b29mr60523167qtc.285.1577992040445; 
 Thu, 02 Jan 2020 11:07:20 -0800 (PST)
MIME-Version: 1.0
References: <CAF_dkJA2DFr3Vgk5ie=V5YitZr8HaiXWuQ+SKsHzzmLBFnhyeg@mail.gmail.com>
 <23922253.ayd0uQntjt@blindfold>
 <CAO1O6se0aPh2FScDStqrK50PPipBbsgEnEPbMHvOdXt2cbxtvA@mail.gmail.com>
 <CAAEAJfCfYV6F4L00m=P60BFdENyhY1CsD3yC-jpOx=kKLL88Kw@mail.gmail.com>
In-Reply-To: <CAAEAJfCfYV6F4L00m=P60BFdENyhY1CsD3yC-jpOx=kKLL88Kw@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 2 Jan 2020 14:06:53 -0500
Message-ID: <CAF_dkJDeYfsWhqQKdyrm8Nj04VO73Yp3ErVbx-7fBzAXV8O+xw@mail.gmail.com>
Subject: Re: [PATCH 1/1] ubi: Allow ubiblock devices nodes to be created by
 volume name instead of volume ID.
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_110722_213811_50090B07 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wpdster[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>,
 Emil Lenngren <emil.lenngren@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 12:32 PM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
> Hello Emil, Patrick, Richard:
>
> What we _could_ do, is extend the current syntax, passing
> a format string to the kernel. Something like this, provided
> a ubi0_0 volume, named "rootA".
>
> ubi.block=0,0,ubiblock${dev.id}_${vol.id}
>
> would create block device as "/dev/ubiblock0_0".
>
> Where as, ubi.block=0,0,ubiblock${dev.id}${vol.name}
>
> would create block device as "/dev/ubiblock0_rootA".
> Does this make any sense... or it is pure insanity?
That would work for me... as it is... the first project where I needed
this got shelved, and the second one grew an initramfs so I no longer
need the patch.  I would be happy to see others benefit from it, or
from some other, better mechanism.

--wpd

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
