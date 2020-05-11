Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA5E1CE8DE
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 01:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMCWc4pj/MkS1q1DhW3A72Xl84Zh3Uv2v/koxEezyCk=; b=lgqbyJksjPXbf/
	YhKuKooZZiL1EG1TnIaGUmIZgs97/3TEykEysTQ2tpYKh3Zv8zeZyUDdXv7Woap4H8WwhyBwXV1EG
	pB3+q+aCXGyr1GBxBFwIwkaJ2AUGHyz11VomOHP/VBvrPNCxFEyDk2UkCJC+6gkdo1hn9HsVovvHW
	ygMqO6N8f4Rx6s6+DLHk6KhfPHXLmXz7GxW/G+rvXy/rjdsRlOLolSHeivz5BhJXwJ1NQjaYt2vJ7
	qami6DgCwYfsIerV6vYTIzl+oti0hFpF2Ns34VflT8Na+mC3/SP22idNdpBvkNmAkUl4PD7Ju0hcy
	Bq0ZNz3xX0SouKtNwEAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHaB-0006iC-50; Mon, 11 May 2020 23:11:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHa1-0006hh-PA
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 23:11:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id f7so5432395pfa.9
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 16:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kd/QhpImkX36HF8SlWn26Vq1MT1a121rRIqfkQ3OXgM=;
 b=kds3MjSmr+27Km3d5Oqby9a5V7U3EwsuhhfZylClXw9zwc4b+sEYlhi4/M9bgYp5oB
 ang2aRYRWcMFQYbgk5YRBlzv3/fVADiSFz2nwkFRGmc5lPYWVxEHJYfF7rYTeO/sjxc6
 vdDOl1TTJxTZOoez95WzbMM3Hee11EoiliYSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kd/QhpImkX36HF8SlWn26Vq1MT1a121rRIqfkQ3OXgM=;
 b=nrZrmaqFDTQRxCH+mbDgGgkNX7a+h7JBU5/A65u6q7a3Wa2ibfSJC4dPx7Qciqha47
 uXVUMdJaMxR11pruMYK+xtMkOAZw1z4HTI7RwPMjbb56MfpjcubxpRQcaBatku1835r+
 ByVo1JnbAw7UBwha4vx4thlY63YjIsB7ybZPra8CTui3GOtD8k3MdIyUmCjopZa3B6ky
 DQgHjgNKgHKwq7Ic0QEn2Qm2O9K1G1ZROJMjXwGJ7Q81KqolrAlvV43UAqpOTR6wHyro
 zHMlaFFfI9tnxewkKEbu/1ZHouTJ7NEu+lw8iHJkGytDBtheMKJ9ba2UYAPqGcO1QJ3r
 W/cw==
X-Gm-Message-State: AOAM532wZEBsx/70myv77NlPplGnaUM+rsVo7yKE4aiN0n5knXaAAIDL
 1fkEZIyHx1QjWnk09d0FDu+zlA==
X-Google-Smtp-Source: ABdhPJwPSUZYIDM8rwAeY/r+K/5u3nE0s9lk3VUhI8mXzXA0IuzsVQak6fdByiO5BrTqPRTkUdRfcg==
X-Received: by 2002:a63:387:: with SMTP id 129mr7901119pgd.117.1589238684936; 
 Mon, 11 May 2020 16:11:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 138sm10064164pfz.31.2020.05.11.16.11.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:11:23 -0700 (PDT)
Date: Mon, 11 May 2020 16:11:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v7 09/18] pstore/blk: Introduce backend for block devices
Message-ID: <202005111609.2CA37E4A3@keescook>
References: <20200510202436.63222-1-keescook@chromium.org>
 <20200510202436.63222-10-keescook@chromium.org>
 <2b4fec3e-53f7-b8d9-49f8-d24401f83363@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b4fec3e-53f7-b8d9-49f8-d24401f83363@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_161125_821480_8B66F9DC 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 WeiXiong Liao <liaoweixiong@allwinnertech.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh@kernel.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 08:36:49AM -0700, Randy Dunlap wrote:
> On 5/10/20 1:24 PM, Kees Cook wrote:
> > diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
> > index 98d2457bdd9f..92ba73bd0b62 100644
> > --- a/fs/pstore/Kconfig
> > +++ b/fs/pstore/Kconfig
> > @@ -160,3 +160,67 @@ config PSTORE_ZONE
> >  	help
> >  	  The common layer for pstore/blk (and pstore/ram in the future)
> >  	  to manage storage in zones.
> > +
> > +config PSTORE_BLK
> > +	tristate "Log panic/oops to a block device"
> > +	depends on PSTORE
> > +	depends on BLOCK
> > +	select PSTORE_ZONE
> > +	default n
> > +	help
> > +	  This enables panic and oops message to be logged to a block dev
> > +	  where it can be read back at some later point.
> > +
> > +	  If unsure, say N.
> > +
> > +config PSTORE_BLK_BLKDEV
> > +	string "block device identifier"
> > +	depends on PSTORE_BLK
> > +	default ""
> > +	help
> > +	  Which block device should be used for pstore/blk.
> > +
> > +	  It accept the following variants:
> > +	  1) <hex_major><hex_minor> device number in hexadecimal represents
> > +	     itself no leading 0x, for example b302.
> 
> 	     itself with no leading 0x,

Yes, I've reworked the language here. Thanks!

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
