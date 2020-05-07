Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 613891C9B58
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 21:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSgP5YR8pgj2GAnr9iOfaDrJlVwhzYdVggNb0lmPep0=; b=fXVh2e68lAonRN
	OUdvE9NvgplguCjbqbaG6bqtZsxHyfDjpN6AaA9gBUYMTeSjTDnzvgBANM9F8mNL78cliteJlnQr+
	x2EGuXbDqvWf97uTEgoK6NnMAxWFnPmlCu/fKCHjwo3MLx92Fyu7eD2bXHrRGDoOD/6vC2TtIjAea
	yOox6GIhJ0wg7xsXwcl69XHvAn5e2ZQbDrYLtYOG+eoca6Q7Ht1N9LX+6uHHTvrQHoQasXMjfomg+
	QQSG3TrgBfqOZH+6ZtN1Wradjc/46U+D5A900Dexr5esbFcr1L2ZzDBkMPSdHDHjngZqO68+uUkcr
	YvFSKJcE+GI7bl+MkJSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmSt-0003kW-Sd; Thu, 07 May 2020 19:45:51 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmSm-0003ju-1n
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 19:45:45 +0000
Received: by mail-pj1-x1043.google.com with SMTP id fu13so3098677pjb.5
 for <linux-mtd@lists.infradead.org>; Thu, 07 May 2020 12:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IbfxBGzYrCHzzfTqHU4rAuwYtieZW8IZ52DJWF9xsUo=;
 b=Oe0PU5NZ2azBtHLJKpX3ha1q5sVBZ4ZHO+l13jT6Erh0ACOWTwKch462jXBcFXyD24
 s/knbIwKHieGmlCElrOSj0hDSdIyuGY9V7VyJlbqfYR/GtTzoLQNjVaFkcRQYiSY3Hh+
 93C47ECe6RAr7s+FMJPAHvDax6a3hMvgtnLag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IbfxBGzYrCHzzfTqHU4rAuwYtieZW8IZ52DJWF9xsUo=;
 b=HLnXxGZKpQN6QwTBIQc1ECA4ExA5sgX3bBYEMqcA5HPgcwdmMYQADXDxpM1fmglWoz
 bVfTQOuD0tls8Tn5q2L+XPDRf3oBkcuKqD4VYKPnT2R7t7w2v6fjkORXgQKbmWTyiNJR
 UlS4jtn90/KD2ieQfkz17Bg1AW4XihAT/zIYq3HlnYVMhVY+cIWMNJVtAmYGPZ71Dhoc
 BGjfIs2fOogBr+ZqqYbnPuh7CaCklmri2/0IZl07zgA5YrKDqYIrohn9Gpl+P/wy72Jh
 1b3/ue/m1DpHd0fJhflYC391GCSXx+ruJ+nahJMjUWIF/N5BrM8rI45hy2tQCc778rjX
 q1Ww==
X-Gm-Message-State: AGi0PuZexZE9zI7JtHf9DBnIemLFRfctn+vtHjlUSS9VIHkcFcnbX11K
 +X9TpEy76UphOj7fEWKsIBDcvA==
X-Google-Smtp-Source: APiQypLBhRh1xD+zBIxgBZHXiwlmz2uQ7tdEn6c4Ababtg8mWoyu4ca2B3WYR9T4i3qlo9eH8sYYZw==
X-Received: by 2002:a17:902:eed1:: with SMTP id
 h17mr14686969plb.312.1588880743038; 
 Thu, 07 May 2020 12:45:43 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l30sm536526pje.34.2020.05.07.12.45.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 12:45:42 -0700 (PDT)
Date: Thu, 7 May 2020 12:45:40 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v3 00/11] pstore: mtd: support crash log to block and mtd
 device
Message-ID: <202005071244.AAD82F41F@keescook>
References: <1585126506-18635-1-git-send-email-liaoweixiong@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585126506-18635-1-git-send-email-liaoweixiong@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_124544_113817_3C324CFA 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Mar 25, 2020 at 04:54:55PM +0800, WeiXiong Liao wrote:
> [PATCH v3]:
> 1. patch 1~10: a lot of improvements according to Kees Cook <keescook@chromium.org>
>                including rename module, typo, reorder, rewrite document, bugs
> 			   and so on.
> 2. patch 11: rename funtions of pstore/blk and update document.

This is looking good. I'm going to update it for the recent max_reason
series, and make some tweaks here and there and send out a v4 tomorrow
to see what you think. Thanks for your patience!

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
