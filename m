Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4071CE8D7
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 01:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESBAHqlULiljc640ymbEhaIFv5ScrtOXiwrFy5T9OFI=; b=eKC97xkTlvjujT
	cXXU4gw+puyuoJeXqRxDIw+Ywz13nftXuPZFyQExL7nBHc8NpxcfOG5SI+QVZ8CTdzLtNBNFs8DCM
	C6DUDye62HfXUNT6dlW1MgJhK/k4cC6pNE7li+xtZpWtmNh3rx+ghtWCoVqWCOmaSdc9PspxM3W0/
	0Im8OXPKPProqaPrQbP/T3zoXWSbWmQ7YLyuVVM13neNBR2MNQvv/NLTm92NOmKDsbE7B1j89IYus
	QVNpJ4dYp687mDvJkgl/Dsol1JVe1914XAsKM4Orm8H8OnUMYxrk6E4T50zyXaX4WXP8e4lK52xol
	2j+rZ3xt36cuj3NytIrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHXp-000404-QS; Mon, 11 May 2020 23:09:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHXi-0003zX-EZ
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 23:09:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id d184so5442425pfd.4
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 16:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+Ld81GyY/GHLnL4y1DpxaPz5U+KNc36SlFebF+aJ9bg=;
 b=V3GLzgPgnS/URkeRJcrQrTcvOYmDOHLXraWJf1nxLVqAqnHxasAId/BmEgQEI9Hx9I
 MBhw2GQG1/lnTUMBGus2B5TzIXDQHtuReS5mGEneRNNo7kipGt5/CkvqBMo5AoC3R0rG
 GHySsHVKnh58nzBKvOXXK5756QqjmJi2op628=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+Ld81GyY/GHLnL4y1DpxaPz5U+KNc36SlFebF+aJ9bg=;
 b=XcSKIHwSZgjqwjbxldwVBnI+4wdpfwlOTPDuhXDxQd8P50GdXojZMcQIv+FWr94h+8
 edKJqx4/GqJhks3sITzNvmMSNdM/T15/H8iCeX2Shf2BjsGxvGpyAQ9t6ITV7+1oSnDD
 kY4lnpqy3arb/lo2tObop/c4yyhi4apVYiK0+iG4DeSaDgfFP9qEVb5xt4xc+9bYeNw9
 eQl73dWBPzo9LTRQdYEyPVhkm60p7s/g5ulZE5/6k8UxHOAYfNh6SxpNSDznHBQ0LPDr
 reice1CSbJw34uIVE2qNGofTWVc544PYRPNDP8DXVkPSZlM8MP4iDxHUomL0ScgrbGv4
 Qf4A==
X-Gm-Message-State: AGi0Pubi6sjM+8Q6RixN04YY6KeMBTCc0UYFxRzE8HKZC5iw3vsGKk1Q
 xTXg+7RZtO0z+cZ9HqLPuZyVRg==
X-Google-Smtp-Source: APiQypLjkjOEG7DqtyjXy6A8mXwOvLNAEpQazWDSgv2ZKRndHckNBjiLrl/A1bI0ogGyWqBLzU0GNQ==
X-Received: by 2002:aa7:9a43:: with SMTP id x3mr18731830pfj.266.1589238541285; 
 Mon, 11 May 2020 16:09:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id fv12sm168799pjb.42.2020.05.11.16.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:09:00 -0700 (PDT)
Date: Mon, 11 May 2020 16:08:59 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v7 09/18] pstore/blk: Introduce backend for block devices
Message-ID: <202005111607.1543AD86A@keescook>
References: <20200510202436.63222-1-keescook@chromium.org>
 <20200510202436.63222-10-keescook@chromium.org>
 <1f63c624-98aa-52de-a1ef-0a449decf4e9@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f63c624-98aa-52de-a1ef-0a449decf4e9@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_160902_511272_8674AE49 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Petr Mladek <pmladek@suse.com>, Tony Luck <tony.luck@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh@kernel.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 04:36:51PM +0800, WeiXiong Liao wrote:
> On 2020/5/11 AM 4:24, Kees Cook wrote:
> > [...]
> > +static struct block_device *psblk_get_bdev(void *holder,
> > +					   struct bdev_info *info)
> 
> Well. That's pretty a good idea to get information about block device
> after registering. And after your codes, the global variable g_bdev_info is
> useless. It's time to drop it.

Ah yes! I meant to clean that up and forgot. Fixed now.

> > [...]
> > +	bdev = blkdev_get_by_path(blkdev, mode, holder);
> > +	if (IS_ERR(bdev)) {
> > +		dev_t devt;
> > +
> > +		devt = name_to_dev_t(blkdev);
> > +		if (devt == 0)
> > +			return ERR_PTR(-ENODEV);
> > +		bdev = blkdev_get_by_dev(devt, mode, holder);
> > +	}
> 
> We should check bdev here. Otherwise, part_nr_sects_read()
> may catch segment error.
> 
> 	if (IS_ERR(bdev))
> 		return bdev;

Whoops, yes. Fixed.

> > +	bdev = psblk_get_bdev(holder, &binfo);
> > +	if (IS_ERR(bdev)) {
> > +		pr_err("failed to open '%s'!\n", blkdev);
> > +		ret = PTR_ERR(bdev);
> > +		goto err_put_bdev;
> 
> It should not goto err_put_bdev since bdev already be put if get_bdev()
> fail.

Ah yes, good point. Fixed.

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
