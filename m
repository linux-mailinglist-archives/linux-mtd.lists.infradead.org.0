Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C42AAFBCE
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Sep 2019 13:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwWs+1TbMNukGavAvw9OgdlpBNig0I3pR//PMSrGeEo=; b=g0McYCfUAZOBeQ
	WiqAFO4/pA5F9I87NYegj7kCfYS7IVhRSjrAhv0kyc5C1iIVEpaop2aKd7IchsqMYdB+s4fyJFkwk
	HwirtsM4sPT8CMQVAR8LMbXvuHyqDegIKR+Ri+2sobaWWmaBkGhhbxznUTA5tbBEikjwMEQ+V5R/V
	vizG/qa6n3hC11UKiBNYMTBWP1a8OI/8pE1K7D8xnxvxt7a4zMIleKiEF/zB+8ze9SNjwK/HxE3Kb
	j9O+Yk4JLsg6kzcWt3QoSf1hODEwdpiJvhE9u7vK4GY64xVhWbumo42dRgunyGhdruqXlhOkp7/ZY
	cqT7MHjbiV9rjtJwDV5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i818L-0003ce-21; Wed, 11 Sep 2019 11:50:01 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i817T-0003aX-Ew
 for linux-mtd@lists.infradead.org; Wed, 11 Sep 2019 11:49:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id j4so45059045iog.11
 for <linux-mtd@lists.infradead.org>; Wed, 11 Sep 2019 04:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pt9n59Xh89lcvDG7F3KB+ad2c5bCRWrFgBU89mDdIF0=;
 b=s3IP81L3ko+a35IbBsxOpDaYKcaLR+XsiyXdS+gACPhd3Zg9tpfEB5s0WqsNCkb/ld
 jzTUe0fr1/fKFvBulJ05ljCkKy7aFniUsx/6UVED3kqEIStfMaB42lhaQZ6EzbV5QXY4
 noCXTdBBYecwqpAwxOla7XRqIqdkiIkbdI/FZx1MdWF6MlBDq+sIMJjoKAK497BZfbez
 lzT/1oSxZ598DrjH0jMYFrrYBNm63v6Mcuam5ZhavAkwpykZp+yxR3QJPKxFGYHrVHBt
 7mJJp2Xc2WiAbX6JH4hmNJXZgnvgemVDhBPkYw7uHXbKMiIOu/deHKuCywSvZJdYqLHk
 YIRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pt9n59Xh89lcvDG7F3KB+ad2c5bCRWrFgBU89mDdIF0=;
 b=CUN/50FxGtjmIkHx/0zDACG8j9WSAdXZ8jmjJdQs9tgsGSdqMZc3adHGFKAUgX4/Ty
 je4VDCdmc7mMA0SmwLmU9gPoLX0dT++8CO2x7CuNTN3J2LJ9U9UHPm4cVGKneCZbiVHv
 4XEsquoW2lbj36vWg5qh+zH9cxCuM1TdJVGqkJn7CTUWYsCVgO0jyePu9ank3zgEvmlt
 zIzwDRPCDljq3Qn13DAebcXh9/XWuPtwqtuT8gn0/1y9NR5hW1sMKV1ae7UekuD+3UN1
 yPzCheqXbG7jZshTb3BrG1v42pRLzhg4kff9TvvAngC9+pz+zuV5qePUwfPDYpBtafgC
 9B1Q==
X-Gm-Message-State: APjAAAWQ41TsT02ZrlGHX7fXic398QS0FJVukboy6RPfsF1uTqQGomM0
 fSpwIkM46AVe88bvb59Gy3RrEhDlskivnYseGcf9dw==
X-Google-Smtp-Source: APXvYqxlBQa/pWCmQtM8lPVAXpB2e9g5uT8Bm+hPW3kKFvwwJtOaLE+5YYKw8CrWQllIEI6Nk4MBeu28X+R8MWb0zlk=
X-Received: by 2002:a6b:b213:: with SMTP id b19mr6876408iof.58.1568202545749; 
 Wed, 11 Sep 2019 04:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190905161759.28036-1-mathieu.poirier@linaro.org>
 <20190905161759.28036-4-mathieu.poirier@linaro.org>
 <20190910143459.GC3362@kroah.com>
In-Reply-To: <20190910143459.GC3362@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 11 Sep 2019 05:48:55 -0600
Message-ID: <CANLsYkzE+Qnb4v-WQMy1OYQOdwjXhjPAdD7gWnChmVTQNcxs+A@mail.gmail.com>
Subject: Re: [BACKPORT 4.14.y 03/18] drm/omap: panel-dsi-cm: fix driver
To: Greg KH <greg@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_044908_576557_17990F4A 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, linux-mtd@lists.infradead.org,
 "# 4 . 7" <stable@vger.kernel.org>, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019 at 08:35, Greg KH <greg@kroah.com> wrote:
>
> On Thu, Sep 05, 2019 at 10:17:44AM -0600, Mathieu Poirier wrote:
> > From: Tony Lindgren <tony@atomide.com>
> >
> > commit e128310ddd379b0fdd21dc41d176c3b3505a0832 upstream
> >
> > This adds support for get_timings() and check_timings()
> > to get the driver working and properly initializes the
> > timing information from DT.
> >
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.co.uk>
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  .../gpu/drm/omapdrm/displays/panel-dsi-cm.c   | 56 +++++++++++++++++--
> >  1 file changed, 51 insertions(+), 5 deletions(-)
>
> THis looks like a "new feature", right?  Why is this a stable patch?

I thought it was part of 4.19.y but looking at it again I see that it
is there as part of the mainline base rather than a backport.

Please drop.

Thanks,
Mathieu

>
> thanks,
>
> greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
