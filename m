Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B76271B3
	for <lists+linux-mtd@lfdr.de>; Wed, 22 May 2019 23:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkZBZTzMLxIBULPiJZCN3OhntYyjl21sLR4VVfaB3ME=; b=AZaPYKf4P/8OMI
	+2Rw8NcUdKRxeA1oyMvE52Jty9Z7iQpluuKxZXjqjmA6thSbmLWRcdeeHRz6wPPw6m8ONaMiZsjPq
	KYvq7dxPITjFclkxbaZDsQPeAnrN+M/5ZoJbWMzdDfXnBMN7aUob9HsKNARsANeu2dymKiATZ7vhL
	coM8iDQeVYXK+JbvdnEvW5F7xEjl2ZPidRvNX1xvouI9hHPK/b5faEpvk9giZK/vZP29A+MaZSage
	mNhFHnUnZEQvHDuNAwQs++0pnTvnFffK+iaXyE5tyQBteF6V2cKYnqY2iBZ+n4eSHM3BgzsxzcG9B
	0h9BgwqrcORcUwbwPSgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYoY-0001Wj-ML; Wed, 22 May 2019 21:30:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYoQ-0001WK-6H
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 21:30:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id d30so1948924pgm.7
 for <linux-mtd@lists.infradead.org>; Wed, 22 May 2019 14:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2TF5wBqEPfwtII57G09NFjtSOT12Df/ulltyqul+I94=;
 b=c3fd0VNHS3cYGt7G8Sp7oGuQYSCSl9nUiKz4FKDIdBvSerPKMwG0ATynQ9uHD8Ix1M
 wl7zZ1VRMKgx+UMw1dFR3DEIH2gN3AjoJtfN6Vp1UvzDGpl8jCGTsWLqOWV/GwOV/Joy
 E/c8qwIDZbBYucklsCw5E4Ieo1MjJa3LBoG8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2TF5wBqEPfwtII57G09NFjtSOT12Df/ulltyqul+I94=;
 b=kw5q6DOF+UxEZuqSsXc/0z62nwzh9OZXIimRC44+64RkTsDcN4uZO5NSczwYbDytze
 Fr7W8yYx9FLJVvPpQV4/JLh2IkA0NXKZIFCBtZ9qgu2UVkCyiUCQkYLOU1PWz/ItQJpn
 CHlh0wgrfvSM4gI3XMQbZqXJ8AzIBwuo203n4BVNIKFaLqgUKDGlQA0EnBEzHAPZtYnB
 dAOl3kNLh7EkkVa+C26llwEdMF5FxlPdSPXB5DXMLMAqKHJKU0qqezwSPKXDpiIfrOWH
 DDTEzF5Co+W36/vskyoklZoaBVRHDfFPNgSLrCAiaq0qI8Pe1ev2VC0BnQapi3j34k+k
 TaeA==
X-Gm-Message-State: APjAAAUFSo7+frQ5yYK1qvHQoxnJLY8doXo9gJfRkuxfJFUNmpZnV3SV
 8kFAvUPSrwqpjo6q2LPzmF7MVg==
X-Google-Smtp-Source: APXvYqwGE8AikMohimZx119rGA4H9lW54C3uhROo02kUeuAING4Gdsj67jSdqEUttHH1Ci2yIOoMjg==
X-Received: by 2002:a62:86c4:: with SMTP id x187mr15083928pfd.34.1558560613248; 
 Wed, 22 May 2019 14:30:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d186sm26750721pgc.58.2019.05.22.14.30.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 14:30:12 -0700 (PDT)
Date: Wed, 22 May 2019 14:30:11 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] mtd: onenand_base: Avoid fall-through warnings
Message-ID: <201905221403.642AF6092@keescook>
References: <20190522180446.GA30082@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522180446.GA30082@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_143014_261446_9893EE35 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Sorry for being late to speaking up on this. I missed something in the
code the first time I read the thread, that now stood out to me. Notes
below...

On Wed, May 22, 2019 at 01:04:46PM -0500, Gustavo A. R. Silva wrote:
> diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
> index f41d76248550..6cf4df9f8c01 100644
> --- a/drivers/mtd/nand/onenand/onenand_base.c
> +++ b/drivers/mtd/nand/onenand/onenand_base.c
> @@ -3280,12 +3280,14 @@ static void onenand_check_features(struct mtd_info *mtd)

Reverse-order review, second hunk first:

>  	case ONENAND_DEVICE_DENSITY_2Gb:
>  		/* 2Gb DDP does not have 2 plane */
>  		if (!ONENAND_IS_DDP(this))
>  			this->options |= ONENAND_HAS_2PLANE;
>  		this->options |= ONENAND_HAS_UNLOCK_ALL;
> +		/* Fall through - ? */
>  
>  	case ONENAND_DEVICE_DENSITY_1Gb:
>  		/* A-Die has all block unlock */

So, I think the ONENAND_DEVICE_DENSITY_2Gb should be a "break". Though,
actually, it doesn't matter:

        case ONENAND_DEVICE_DENSITY_2Gb:
                /* 2Gb DDP does not have 2 plane */
                if (!ONENAND_IS_DDP(this))
                        this->options |= ONENAND_HAS_2PLANE;
                this->options |= ONENAND_HAS_UNLOCK_ALL;

        case ONENAND_DEVICE_DENSITY_1Gb:
                /* A-Die has all block unlock */
                if (process)
                        this->options |= ONENAND_HAS_UNLOCK_ALL;
                break;

Falling through from ONENAND_DEVICE_DENSITY_2Gb to
ONENAND_DEVICE_DENSITY_1Gb will actually have no side-effects:
ONENAND_HAS_UNLOCK_ALL was unconditionally set in ..._2Gb, so there is
no reason to fall through to ..._1Gb. (But falling through is harmless.)

Now the first hunk:

>  			if ((this->version_id & 0xf) == 0xe)
>  				this->options |= ONENAND_HAS_NOP_1;
>  		}
> +		/* Fall through - ? */
>  

        case ONENAND_DEVICE_DENSITY_4Gb:
                if (ONENAND_IS_DDP(this))
                        this->options |= ONENAND_HAS_2PLANE;
                else if (numbufs == 1) {
                        this->options |= ONENAND_HAS_4KB_PAGE;
                        this->options |= ONENAND_HAS_CACHE_PROGRAM;
                        /*
                         * There are two different 4KiB pagesize chips
                         * and no way to detect it by H/W config values.
                         *
                         * To detect the correct NOP for each chips,
                         * It should check the version ID as workaround.
                         *
                         * Now it has as following
                         * KFM4G16Q4M has NOP 4 with version ID 0x0131
                         * KFM4G16Q5M has NOP 1 with versoin ID 0x013e
                         */
                        if ((this->version_id & 0xf) == 0xe)
                                this->options |= ONENAND_HAS_NOP_1;
                }

Falling through from ONENAND_DEVICE_DENSITY_4Gb to
ONENAND_DEVICE_DENSITY_2Gb looks like it would mean that
ONENAND_HAS_2PLANE would be unconditionally set for ...4Gb, which seems
very strange to expect:

                if (ONENAND_IS_DDP(this))
                        this->options |= ONENAND_HAS_2PLANE;
...
                if (!ONENAND_IS_DDP(this))
                        this->options |= ONENAND_HAS_2PLANE;

However! This happens later:

        if (ONENAND_IS_4KB_PAGE(this))
                this->options &= ~ONENAND_HAS_2PLANE;

i.e. falling through to ...2Gb (which sets ONENAND_HAS_2PLANE) has no
effect because when ONENAND_HAS_2PLANE isn't set (numbufs == 1), it gets
_cleared_ by the above code due to ONENAND_HAS_4KB_PAGE getting set:

#define ONENAND_IS_4KB_PAGE(this) \
        (this->options & ONENAND_HAS_4KB_PAGE)


Unfortunately, though, it's less clear about ONENAND_HAS_UNLOCK_ALL,
which is getting set unconditionally for ...4Gb currently (due to the
fallthrough to ...2Gb). However, this happens later:

        if (FLEXONENAND(this)) {
                this->options &= ~ONENAND_HAS_CONT_LOCK;
                this->options |= ONENAND_HAS_UNLOCK_ALL;
        }
...
#define FLEXONENAND(this) \
        (this->device_id & DEVICE_IS_FLEXONENAND)

So it's possible this fall through has no effect (are all 4Gb density
devices also FLEXONENAND devices?)

Setting a "break" after 4Gb may remove ONENAND_HAS_UNLOCK_ALL in the
!FLEXONENAND(this) case. Does anyone have real hardware to test with?

Thoughts?

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
