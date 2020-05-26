Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446101CDF2E
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 17:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2wFGEFWrGM9OtjYS1KwmclY9ONRrp2yAejBeaADBvA=; b=Q29whgyBcsiI+D
	dZozvaAPpv9SlJrz0Wbx4BtVw4NVU0TARPkPKBelvWdvlCKKAc9twgV2xQlX7KKDCeR0eKEhbiKy9
	tpySSOoQXl5i/7Tuc8YE/uzrQhom7ic3e/m0nKIU3KHSKLszLtiE9IBD0sUTX1PGZ4nCiC12cPZ1L
	Cks642laTsGP8LwE/wjjb0xqW1tx6Uzy1dAUvqUSR6S1tmItV3eMg0smNL/5wOQgJj5v3Uv1a/Bt9
	m9J6frOqpNy52+t3geVuaagpGuYu0+T48f9HAJ8UOxxsvdIPVyvfpJ9x8AJO8YEB1BA/wBu0qDzgQ
	/Q0uR5XPARJ12n3nGHkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYAUZ-0001eu-Oy; Mon, 11 May 2020 15:37:19 +0000
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYAUM-0001dj-In; Mon, 11 May 2020 15:37:06 +0000
From: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v7 12/18] pstore/zone,blk: Add ftrace frontend support
To: Kees Cook <keescook@chromium.org>,
 WeiXiong Liao <liaoweixiong@allwinnertech.com>
References: <20200510202436.63222-1-keescook@chromium.org>
 <20200510202436.63222-13-keescook@chromium.org>
Message-ID: <c48617f0-0697-e7e9-ee14-718e6cea0e28@infradead.org>
Date: Mon, 11 May 2020 08:37:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200510202436.63222-13-keescook@chromium.org>
Content-Language: en-US
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

On 5/10/20 1:24 PM, Kees Cook wrote:
> diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
> index f1484f751c5e..16a0440d8d5a 100644
> --- a/fs/pstore/Kconfig
> +++ b/fs/pstore/Kconfig
> @@ -248,3 +248,15 @@ config PSTORE_BLK_CONSOLE_SIZE
>  
>  	  NOTE that, both Kconfig and module parameters can configure
>  	  pstore/blk, but module parameters have priority over Kconfig.
> +
> +config PSTORE_BLK_FTRACE_SIZE
> +	int "Size in Kbytes of ftarce to store"

	                       ftrace

but I don't know what this prompt string means.
Could it possibly be "Size in Kbytes of ftrace log to store"?

> +	depends on PSTORE_BLK
> +	depends on PSTORE_FTRACE
> +	default 64
> +	help
> +	  This just sets size of ftrace (ftrace_size) for pstore/blk. The
> +	  size is in KB and must be a multiple of 4.
> +
> +	  NOTE that, both Kconfig and module parameters can configure
> +	  pstore/blk, but module parameters have priority over Kconfig.


-- 
~Randy


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
