Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21FCC28E7
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Sep 2019 23:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=er11wwWTKjyQNg1BZzmmOjStsP5tOczUez3SaKZ/C2Q=; b=Z1BoV+L/3ku21V
	OL2wgXX1eeTJc67Q74v41/g3+w+X7R/MmrtS6bJ3AK7K5V0R3micE8aI8F5hNNs1+t7v0bJIB4YOm
	gtcpEl0mM9eEtEqW/+Hd2bsaMq/HhHDRV2KQMCRaI+U9dXRE8WHH3bTB/8e/4hJEwpwgpI0zeG0TF
	c24IZloRxZJlvCBXkg8SMf7gBy2HYXuAWRKxUo9AbOrAw43RL2J5VS3gF8aEUz3HyLE0C85sRgCMC
	y4BKyqZ1QIcGYZYbYwG1QLroeXsGVxLvZrryISEHG+0JQ4ru1+cxQSU9nA7ncHNnHmSVDim9230Bc
	oB1a0jdxAAZASNPNDVvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF3MP-00074l-Ax; Mon, 30 Sep 2019 21:37:37 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF3MH-00073X-6D
 for linux-mtd@lists.infradead.org; Mon, 30 Sep 2019 21:37:30 +0000
Received: by mail-io1-xd43.google.com with SMTP id b19so14250907iob.4
 for <linux-mtd@lists.infradead.org>; Mon, 30 Sep 2019 14:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h1/5t0a320gO6rtoSFLmxFmUmcGcayGzHZ6jiBhmFkE=;
 b=OwhvFeSp2ZaGkR6JyWaekRt39DDj8wTJo4hVNfKhMHexTAj8ZIpLOi23kap/omy0bj
 2mZBEp810uUSlzqFeweXDm44lmx43YMg9zpOi1O6bgkVJIsSVEvL2KLfdC8LLSmhF4/S
 mnYH5WrY5R1aTIc0g8bdfMKhdEsRdvq/3uhvkANSv5aaciT4NbLxMmKmCKBJtwwqhg/F
 0LiFLYwNVT6khikXCKIBBSmvCiVJKqJrtoipkTzhrsgB1EvC5UtdhZnPNWxly0G7PCm+
 MWRUdYF+/eT7iOZdfkfXIT/Oy8bJxH3a1q7SDqrWxUc3Nn8YbqFab72A2dsbBQL0XMS8
 sejQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h1/5t0a320gO6rtoSFLmxFmUmcGcayGzHZ6jiBhmFkE=;
 b=FVFMF5FFj5tbmvIsVtNw+w3s3hgMxWjBk1GlHGAhW3VXhDyQ7w14gzUM0CmK8LEJ98
 D9x1kVgOAgYbySnIlRcF2zOAzpT2H1p4FQQ55VPm5sLyKhz+G4arW0qTh4IW8WF60Idl
 OTAOiWgNJBA0G4wm1E6tlzXTg+FJK+MO6Ly1oIh9yIPOD7lUPNdCaNwRz+XRvHqXqxQ0
 8F/9tMXceHT0fQTrOeKnNW9Tt650iycSPRwxRDQk5ILNsrlkwcTNy/D7Xq6aAC/S0tRn
 sbqxi5k8cwYUcjOZwXKkqPM8E6UIOK2MaoX0WyrEA9k9pYqeNCNxAn5reNqiLLSjBEBV
 fOFg==
X-Gm-Message-State: APjAAAWbCv5hmsvdrTQVLeAmpnE4wFR/sucEpw+1XyS5Y21B1H3LOX8O
 FygEggQ0eV24eRPf2gnfnopxX3/LBGjCz6hyW5g=
X-Google-Smtp-Source: APXvYqzAeDU9zrO6VIz+ugbbAlCgVAXWrJ2UT7vfpF6sK2PXJ/JnuwaCKzk3KgMB7JUVqyiLAZBj1gJb6QYAJQY5fFA=
X-Received: by 2002:a92:8702:: with SMTP id m2mr18251627ild.294.1569879447978; 
 Mon, 30 Sep 2019 14:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190925154302.17708-1-navid.emamdoost@gmail.com>
In-Reply-To: <20190925154302.17708-1-navid.emamdoost@gmail.com>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Mon, 30 Sep 2019 16:37:17 -0500
Message-ID: <CAEkB2ETTmCsuOFDsJQ8LbBPHNgckpDFn2XhVePwAQEsCRsJo6g@mail.gmail.com>
Subject: Re: [PATCH] mtd: onenand: prevent memory leak in onenand_scan
To: Kyungmin Park <kyungmin.park@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Marek Vasut <marek.vasut@gmail.com>, 
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_143729_225672_237713D2 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
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
Cc: linux-mtd@lists.infradead.org, Navid Emamdoost <emamd001@umn.edu>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Stephen McCamant <smccaman@umn.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Would you please take a look at this patch?

On Wed, Sep 25, 2019 at 10:43 AM Navid Emamdoost
<navid.emamdoost@gmail.com> wrote:
>
> In onenand_scan if scan_bbt fails the allocated buffers should be
> released.
>
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/mtd/nand/onenand/onenand_base.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
> index 77bd32a683e1..79c01f42925a 100644
> --- a/drivers/mtd/nand/onenand/onenand_base.c
> +++ b/drivers/mtd/nand/onenand/onenand_base.c
> @@ -3977,8 +3977,11 @@ int onenand_scan(struct mtd_info *mtd, int maxchips)
>         this->badblockpos = ONENAND_BADBLOCK_POS;
>
>         ret = this->scan_bbt(mtd);
> -       if ((!FLEXONENAND(this)) || ret)
> +       if ((!FLEXONENAND(this)) || ret) {
> +               kfree(this->page_buf);
> +               kfree(this->oob_buf);
>                 return ret;
> +       }
>
>         /* Change Flex-OneNAND boundaries if required */
>         for (i = 0; i < MAX_DIES; i++)
> --
> 2.17.1
>


-- 
Navid.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
