Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385C41540F7
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Feb 2020 10:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O07lhKAHcMiqoEWmpeO9lopUCfVE5oW4qYu3k5dg+hU=; b=OWkERTyK4WnL3y
	OFYn4/oNp7AR1U1SBz05VdZaxOGMcwV4Hl1fwbn9JTLEXvJyU5ntZwHbrug8DKCv+E09qBI8G20st
	k+B5A8w4xen5w92nWyMK0vVaFz+DGqBFUPZZdaj8SfNNwDpN/C2X9tHBl5nI/HxAGRCpw7ZxKeuXT
	xsegudd5EMLGRCp10R+DwdBA2DaD1eyPXGwwlsh4OfCXddcgDf57JjIINKfiUIMcJF+Q7Pf0Yn9lm
	TjagoUzAnf4WRv9gWy2I1vGXqp4kDKDSO13CEVEKP3UFUyIkRHWBq4g4zU9OkQ7QJ1klJyIQ8ahIJ
	6Mm9pTj2FEPdDfntx84Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdDr-0004Xr-Dg; Thu, 06 Feb 2020 09:13:19 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdDl-0004Wj-G7
 for linux-mtd@lists.infradead.org; Thu, 06 Feb 2020 09:13:14 +0000
Received: by mail-oi1-x243.google.com with SMTP id q81so3916427oig.0
 for <linux-mtd@lists.infradead.org>; Thu, 06 Feb 2020 01:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1CpJKgsAjlSqoe4gELRsfhNNMyIPojRkXjDATWcGuu4=;
 b=GYL8bZM6NkTFf6TxXvu25c1GbCWB6hXWNKX734+SfLOA6BUhmqA8OgD+Zqpxp1Z1zN
 oWbkkotrLcWLHxhekWqahMoLG3W2ap0jg3hnncU5+sPs1DI1lM/qRzU4Z9I/onG39FHH
 U87i/i7nd8DXNiP/r/ZHnhm8XQwbuNmgflnjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1CpJKgsAjlSqoe4gELRsfhNNMyIPojRkXjDATWcGuu4=;
 b=RSbzM9WuUTPQ0YVM5/qT/TcgmZSXKcN4D5sCeTvdT1n0SNo0DA//VbSb1PgLJq5U6X
 zalNKetuQz21Lo75YRpuNHA/CulL48BMt9mqEy4vB+pV1PZA0d0vpiF97VPCeG7fmURE
 /ar8QS0WBbXoeYnkfYAOxl9qdbz6d8cIe0PrtTBWqRguFXiBdfcX4mslaQrl7E/g7Csv
 qzN7jZPb2u0uiaFTFgobH3qjP3E3ugZWTzTP7n6BwSmKCFiq+TOIJpMKXG7DeOpigfMt
 XmKGaKtPwnRN3qWrsKzZt7KEAfDuZuzO/vOH97qEgDj5uUG4N61LVABNexWtPlTc769W
 vtyA==
X-Gm-Message-State: APjAAAW+qUMyu4hjGDnpLdR3yFBFRXJjExoN2PkaqXkjWYUbaGsd1cRh
 kOD9xOAGworXZRdMJiDNb+XV0Q==
X-Google-Smtp-Source: APXvYqwkhyUAvVCT+rNa/7+99l/zd01X1+i693C/Ng8uMN/IvbeIkCoWD6oBCSLayQF3FRiTK8LTzw==
X-Received: by 2002:aca:cf12:: with SMTP id f18mr6247795oig.81.1580980391763; 
 Thu, 06 Feb 2020 01:13:11 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a1sm913373oti.2.2020.02.06.01.13.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 01:13:10 -0800 (PST)
Date: Thu, 6 Feb 2020 01:13:08 -0800
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v1 00/11] pstore: support crash log to block and mtd device
Message-ID: <202002060108.7389A4C@keescook>
References: <1579482233-2672-1-git-send-email-liaoweixiong@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579482233-2672-1-git-send-email-liaoweixiong@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_011313_561990_E61C7740 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Colin Cross <ccross@android.com>,
 linux-mtd@lists.infradead.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 09:03:42AM +0800, WeiXiong Liao wrote:
> Why do we need to log to block (mtd) device?
> 1. Most embedded intelligent equipment have no persistent ram, which
>    increases costs. We perfer to cheaper solutions, like block devices.
> 2. Do not any equipment have battery, which means that it lost all data
>    on general ram if power failure. Pstore has little to do for these
>    equipments.
> 
> Why do we need mtdpstore instead of mtdoops?
> 1. repetitive jobs between pstore and mtdoops
>    Both of pstore and mtdoops do the same jobs that store panic/oops log.
> 2. do what a driver should do
>    To me, a driver should provide methods instead of policies. What MTD
>    should do is to provide read/write/erase operations, geting rid of codes
>    about chunk management, kmsg dumper and configuration.
> 3. enhanced feature
>    Not only store log, but also show it as files.
>    Not only log, but also trigger time and trigger count.
>    Not only panic/oops log, but also log recorder for pmsg, console and
>    ftrace in the future.

Hi! Sorry for the delay in my review of this series -- it's been a busy
couple of weeks for me. :) I'm still travelling this week, but I want to
give this a good review. I really like the idea of having a block device
backend for pstore; I'm excited to get this feature landed.

I think there may be a lot of redundancy between ramoops and the block
code in this series, but I suspect the refactoring of that can happen at
a later time. I'd like to get this reviewed and tested and see if I can
land it in the v5.7 merge window.

I hope to have time to focus on this next week once I'm back in my
normal timezone. ;)

Thanks again!

-Kees

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
