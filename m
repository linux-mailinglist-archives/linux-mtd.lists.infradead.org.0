Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028B3141323
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 22:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hidrRhZ5KFQ9c+NJSwh1XWO/NxOjjDbh3GT86gFyJs=; b=A44LmfiWiXKJRW
	cU6z2PLHcTK3D92SRKZvAistQFU6tMjI+8f3KJ4kv9oTZjSKoUdz5CKhq4k+L7HlgasbZfzUQCGCH
	iDXAojrXT92xpVSjCC8hq7QSugt48jWZeuvIzLwx1dFCOfcbA6GmuN4od6RMQ8qgIThaN5EUpW8gK
	ruSZnGYo2+zImKToKmh3MypOEyeS1zCVucinw5lo2PHn6Zjvot7+m28VeXk86vdKSS2qAexQiN1UO
	P7i9abwK+zfzVEr+3ilMU/8Kha7WLrmO2n+mV6tNps69AwFwda8DzN2k6lAd6XqCYkQhReRzlESgd
	HK3j3V2IjcUcdozRcuHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZCe-0003cr-92; Fri, 17 Jan 2020 21:30:52 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZCR-0003cH-2t
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 21:30:43 +0000
Received: by mail-il1-x143.google.com with SMTP id g12so22459468ild.2
 for <linux-mtd@lists.infradead.org>; Fri, 17 Jan 2020 13:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fwUDKdVDVPF9fiX1Os8c+YJ8FeIeDDAgq4WvIPa/3eY=;
 b=Ejng6wdrW6yC/iNH+1VNpMx75kR7aqIBSm06ARTmp6oujT6u3PezSGJObjE/hNh0MH
 +QCfEtiNi2fRllOh+tjh5NW17zUt1u37uSRP5Ca+9yG/KtK4MjzG1h9TivNTcsVLj/zb
 KTWity7lCozfwKOehQTLw7ck2Oz5qU/y9pLzk3LDlT0VMMsiiqQpqQ1XTUVt3tY4zzYq
 UhP2slw4jXzYDrcHzgnvAjYTVQFgVgYbK4Oc3H3k11d3VclWdfXsyE59Gvfqh/SSeEu4
 UrEodfuqk9hg6o+Wz4TkP0m/KbbVI1RB3K4g1og+VrgNfp7K5uvlyhFbo56o6uPKH0j6
 oEkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fwUDKdVDVPF9fiX1Os8c+YJ8FeIeDDAgq4WvIPa/3eY=;
 b=B1xHBaHHAvDX6+I1+604t+R7kF5BJwwlZQ/O6/NIBBR6mPKxAUlmyMrQzjq794F0Qh
 o13pHll5PfSLovGnHed6dKMqlQBajlzIp5SFfPdiE3jpFlvh9LBZi4x1THHH0gqAkWia
 vY0sU50RSTVBbGPjtUKZ6cqZJCSOv+WK5Lwnb27p+YXQbpU8WMC0mosRtYKxbOxK+xj8
 rTv9+UtkUuSZW5jerxODUyoHQ/gG+Yz61rTS/W9w6UyHs7XK5clluAzks2W+nuAFrgQA
 cFYpyj9wNi1L9YokjMEvWZ5dlb0dq3FLazkMjIbQDXuOVkZuStJ42YyN3IQy6vSNtrB1
 tp2w==
X-Gm-Message-State: APjAAAXKIY6ofImyoyynUqPDr1rXlx1iogDwO80rg9vX+HKposBY6ivm
 mJIkri8kdeFQkuY2sX9eIt5RPyzXko9g9o2XRCs=
X-Google-Smtp-Source: APXvYqx9WCvLe5ev4yxrUK8FfE1LNjRob54Psy2nzrwMrpCUCLh0gu4riG0TOkXkU9xwitVW40l2dqmPhpnn6+gTWAc=
X-Received: by 2002:a92:d30d:: with SMTP id x13mr567709ila.170.1579296637824; 
 Fri, 17 Jan 2020 13:30:37 -0800 (PST)
MIME-Version: 1.0
References: <20200117200537.9279-1-esben@geanix.com>
 <20200117200537.9279-2-esben@geanix.com>
In-Reply-To: <20200117200537.9279-2-esben@geanix.com>
From: Han Xu <xhnjupt@gmail.com>
Date: Fri, 17 Jan 2020 15:30:26 -0600
Message-ID: <CA+EcR23iNa8Pgvo3z-d+FES0WwxzOxKgOXk69BbynLqAg1FQcA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] mtd: rawnand: gpmi: Fix suspend/resume problem
To: Esben Haabendal <esben@geanix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_133039_149777_0B3CA2E8 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xhnjupt[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sascha Hauer <s.hauer@pengutronix.de>, stable@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Han Xu <han.xu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 2:05 PM Esben Haabendal <esben@geanix.com> wrote:
>
> On system resume, the gpmi clock must be enabled before accessing gpmi
> block.  Without this, resume causes something like
>
> [  661.348790] gpmi_reset_block(5cbb0f7e): module reset timeout
> [  661.348889] gpmi-nand 1806000.gpmi-nand: Error setting GPMI : -110
> [  661.348928] PM: dpm_run_callback(): platform_pm_resume+0x0/0x44 returns -110
> [  661.348961] PM: Device 1806000.gpmi-nand failed to resume: error -110
>
> Fixes: ef347c0cfd61 ("mtd: rawnand: gpmi: Implement exec_op")
> Cc: stable@vger.kernel.org
> Signed-off-by: Esben Haabendal <esben@geanix.com>
> ---
>  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> index 334fe3130285..879df8402446 100644
> --- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> +++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> @@ -148,6 +148,10 @@ static int gpmi_init(struct gpmi_nand_data *this)
>         struct resources *r = &this->resources;
>         int ret;
>
> +       ret = pm_runtime_get_sync(this->dev);
> +       if (ret < 0)
> +               return ret;
> +
>         ret = gpmi_reset_block(r->gpmi_regs, false);
>         if (ret)
>                 goto err_out;
> @@ -179,8 +183,9 @@ static int gpmi_init(struct gpmi_nand_data *this)
>          */
>         writel(BM_GPMI_CTRL1_DECOUPLE_CS, r->gpmi_regs + HW_GPMI_CTRL1_SET);
>
> -       return 0;
>  err_out:
> +       pm_runtime_mark_last_busy(this->dev);
> +       pm_runtime_put_autosuspend(this->dev);
>         return ret;
>  }
>

Acked-by: Han Xu <han.xu@nxp.com>

> --
> 2.25.0
>
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
