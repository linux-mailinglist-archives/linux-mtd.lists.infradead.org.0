Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE05195CFF
	for <lists+linux-mtd@lfdr.de>; Fri, 27 Mar 2020 18:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twvkpzAFukX+rIPOazUmtCS/oyzN9s+OG6BRnYLzfmQ=; b=SGvvnZqD6C5EJw
	9pKZAtMFAQZ7LDMa+/9J7LVPfxG79pRqqeFoqmcEyZKcMrnviFiZr+Xnw9d8RRWQCnuPKuNBxvfzo
	sFWWKBOqGvca1rCXWuNgvUdMLn9K3kStKJQPhBfeAEs1xhGs96zzHLMAwOQ3aFoEt9j1puRuhRgD9
	A5l3xf9w/QArTzXYNM7TFblHCayAk7N2Go/1AahBMLhkoOdebIf+kXgYcnxeRXXywzboQ6jB4mpX+
	MuwchGpYaD7NFTX4cCJ8FK9oNZB6gfdZb6Tr2SDmPWZnVTF8HjyBjGjNR1gjjKtmXyJZLXT10FVf8
	JUbELzrKOLsfMfX+wMXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsxD-0003KL-5t; Fri, 27 Mar 2020 17:39:35 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsx2-0003Dq-Gh
 for linux-mtd@lists.infradead.org; Fri, 27 Mar 2020 17:39:25 +0000
Received: by mail-oi1-x244.google.com with SMTP id w2so9524081oic.5
 for <linux-mtd@lists.infradead.org>; Fri, 27 Mar 2020 10:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=78fDiWwNe9+AXx9cXDUn9UKdDldo1s8Ed69AghNIjbw=;
 b=nWHwV9E1D7txdDqz+Vx1WBzKMGIlwycWz0ZSUOTfNe3oj8k4V494n7w4ursCrg6/MV
 4Yp/ELf+HWbXeZWVRZQSJc8lwDmOkRSnaJ3HVa4Wmuw7CwT+royjuXDn4CoFyu+KIgkC
 yJ2b1ZWOcfpShDFpCS4LDHgCLxzDv3+y73qUTB9zrV2F5SXLkyxgRpg5n+TTSrgSQn/h
 wGV0OZtKMXY/av1e3Xfag8grqG9XBdcDen1/Q7zLHzd8GGOjihMHTNg7Grt6RhTfkyFj
 iUWmdeMWaWqyq+/Vj7kzxqY49QtCH8XSgW+C61obtRZSGCC3alENO6OUJpLLnT9lE/W1
 QeuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=78fDiWwNe9+AXx9cXDUn9UKdDldo1s8Ed69AghNIjbw=;
 b=Jk2dMeaONklwhaoN02VhZzCbq5cZqLmNO7TJtWz4vJ0IMPao23ci3b2ERTMk3VtNmH
 i5QERpe/IKnyfjLq2vCxf13Xk4w9W4gGKmQI2FGaI/0LZbbLH4WMWnm1MoggQbRVO66b
 NVPE1wbCZr3sdWUjIlUdc8TkV2Y81ndtFM0K7tgK0LCkjMFEvZxCiVxSVwGcjvmZvUh8
 qKUVi3SHIhczSfBpFnzflAMWLZJlL4JufQM3pM7q7jjLm8mqZ1slV8VGwHGq0zALR7Io
 pHGB7gavCSq9xfakfFa7sqwgJ7L0MBsFz0i3UjJHfyIDyAEjFpC8u1dG8oDpNyeeQuCh
 aV0g==
X-Gm-Message-State: ANhLgQ33klkQvIc6PHyqlcKp/mUAILhnOClZ7wqCupFW8VCd2RdfYHgM
 P358rfMekpxmxk2EOExerp58OOzaXxqJWLjVG2HxYw==
X-Google-Smtp-Source: ADFU+vs9v8aMKfSS26X8DhRpBGA1l4hep2Ihd7lR/GLpuhKlV/mYINn66dn9OfRyU5Bw+2h+uBvZcxm4NwhV0dYLors=
X-Received: by 2002:aca:1e1a:: with SMTP id m26mr4829876oic.39.1585330763445; 
 Fri, 27 Mar 2020 10:39:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAP6exYJ3xk46PODgT=5WAdiLDNY=9MggxyaEwov6qyDQstLj7g@mail.gmail.com>
 <CAP6exY+W+zTtEB1LmHYDnhEnPj26Y97Ld9TBAxsgX3vGDb4LnQ@mail.gmail.com>
 <CAP6exYKrAs_OpC_qkoW2cH0MxpqxDrgP2nhJGkp=2BX-6kAWbQ@mail.gmail.com>
 <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <CAP6exYJ_jzrB0D=RLXMNeegu4BwQq8raXVOMugkqzX2ZP_JSqw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com> <20200327171907.7a7ffc73@xps13>
 <20200327164802.GN2564@lahna.fi.intel.com> <20200327175238.784cf47c@xps13>
 <CAP6exYJ4-pBBZKA0z8TKPqh_0tKzJadjXEBZk9dc9ij8BJ9Xew@mail.gmail.com>
 <20200327171619.GO2564@lahna.fi.intel.com>
In-Reply-To: <20200327171619.GO2564@lahna.fi.intel.com>
From: ron minnich <rminnich@gmail.com>
Date: Fri, 27 Mar 2020 10:39:12 -0700
Message-ID: <CAP6exYJWWT2SFLjPCdjAEEjmZYwqYuTxd_aRaf=xEELmXqfMpA@mail.gmail.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
To: Mika Westerberg <mika.westerberg@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_103924_558159_9F444767 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

yeah, :: is not so bad, but you've got a lot of corner cases as you check for ::
mtdparts=0:
for one example.

Covering all the ways things can go wrong gets messy. You can pretty
much guarantee all those corner cases will get exercised ...

And people are going to mess this up and end up with hard to debug errors:
mtdparts=0000::0:1f.3:parts

That could be a hard error to spot.

I still wonder if we should not just define some character as
available in addition to :. I realize | was pretty awful, but ... is
there some other character we might use? I kind of like the simplicity
of the current scheme; there really would be no issue had it been
almost anything but a : :-)

But if the sense is that :: is the way to go, I can give it a shot.

ron

On Fri, Mar 27, 2020 at 10:16 AM Mika Westerberg
<mika.westerberg@linux.intel.com> wrote:
>
> On Fri, Mar 27, 2020 at 10:05:52AM -0700, ron minnich wrote:
> > I did try the \ thing but found it a bit tricky to work with, with
> > lots of potential for simple errors.
> >
> > It would require cmdlines like this
> > mtdparts=0000\:00\:0.1f:etcetc
> >
> > A lot of these mtdparts definitions are produced by scripts and
> > Makefiles and there are many, many places where \\ have a way of
> > vanishing.
>
> Right. One option would be to use the printf() style escaping and make
> :: to be literal : in the same way %% is literal %.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
