Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF8418E992
	for <lists+linux-mtd@lfdr.de>; Sun, 22 Mar 2020 16:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m7RFGrWbDURq2IlnnXQmnc3HLiuc1EEbyjhCXW/sEs=; b=e4B2xWN6U822Gp
	TgoMY++eWgNyo6Aw/MCrRigCdXZcGG/OGlenmhcd+yB2QvKpBic2LbL8pTd7VqbQpbnuAq4h3SAcQ
	SWgHHsVaRN0sJvnZBhGfKhIZch0hDrKNAAljRdo2jgoUqjpQdWH3p+O84GFr6C2ymFxYC39nPEzaU
	tVPo/kM64Cs+2IkghQMnGMUiSLZSaZ91m/gE9ltyrhFlddXirR51gjRld9tTO36YwCP81PZIclBDU
	0Gi6xeUznSvDyp390gaz3jwC/fjcwBZluaWLCFd33j4s8Fg1JVGsgO4BcAo9VxHxn/kt1Q1OQTfrC
	hD8h5Nyit7Ir9HjZuRyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG2Kj-00082N-DU; Sun, 22 Mar 2020 15:16:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG2Ka-00081n-BM
 for linux-mtd@lists.infradead.org; Sun, 22 Mar 2020 15:16:05 +0000
Received: by mail-pf1-x444.google.com with SMTP id h72so3950606pfe.4
 for <linux-mtd@lists.infradead.org>; Sun, 22 Mar 2020 08:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6dpw9rDwVFF+jBSqqps/Fz65ini0gev9EsYNdaUAAOw=;
 b=cI3Ojtue1abNbnhEXHj2iryE86swUOebT5p/+8RCaO5uNSnhQ9Y7TVRjkqQM9VLRFP
 dJv9sDMVYKxFQa0rCrirVl8449WdxPXtbt8AiVGom/vRGCQjpA1SrRhdc4HdrJ8NCERe
 BzLIan9hI5+ldnBF53MPXrWaJDzIME7aEKxgc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6dpw9rDwVFF+jBSqqps/Fz65ini0gev9EsYNdaUAAOw=;
 b=XV/cVF7ianBr/bO2r6gA8rphQt4WYEVkZU3EyEXm2Y3JnvqGfqXuEGhBgEUuDiF5MQ
 fVS65uYA47VxFAyUCP+ViBU1UQ9bNzPazmIeXAHPr2sLwR6MQWD9kXRq3LXx939V/hKt
 5PlS37FQ2BdMTRntC0xKlqLweP5itbaewYpA7jCAnyoWTj8VRV8hAKhV6BA/vbqoM8fq
 qTT3BjI0QU/1FYMw9KJugKhgJDxjqYvioJUVoobx/y0XQHYONnxLnz2MhhIE2jpE7l3/
 ZjcVYFpqDXVKDIqjJDYTl6rIUwZ43wcxKo7JGzme8R/nItyNnsBTiPEUzgghGxuyQCOp
 3hCw==
X-Gm-Message-State: ANhLgQ1z+k0ZY8dIX/wjbon9bvOZcZgG1WaVkkFsC+4WsvYulBpqI6JE
 UiNqGRLnIKTyrRssHBlJm0KnFw==
X-Google-Smtp-Source: ADFU+vuWKzy086D5ElUKvJfnJKYW2BQ4xV1n4gXNC8LIJaIR7+nZmnQmmYjnlO8aEfT/1OxfgJL/Cg==
X-Received: by 2002:a63:ff0d:: with SMTP id k13mr8595652pgi.376.1584890163299; 
 Sun, 22 Mar 2020 08:16:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 11sm10770850pfz.91.2020.03.22.08.16.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 08:16:02 -0700 (PDT)
Date: Sun, 22 Mar 2020 08:16:01 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v2 05/11] pstore/blk: blkoops: support ftrace recorder
Message-ID: <202003220814.713B5DF7AA@keescook>
References: <1581078355-19647-1-git-send-email-liaoweixiong@allwinnertech.com>
 <1581078355-19647-6-git-send-email-liaoweixiong@allwinnertech.com>
 <202003181117.6EA5486@keescook>
 <42205dc0-f001-bbf0-00b6-85aca0cdb1f8@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42205dc0-f001-bbf0-00b6-85aca0cdb1f8@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_081604_395118_92E88316 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sun, Mar 22, 2020 at 07:42:07PM +0800, WeiXiong Liao wrote:
> On 2020/3/19 AM 2:19, Kees Cook wrote:
> > On Fri, Feb 07, 2020 at 08:25:49PM +0800, WeiXiong Liao wrote:
> >> +static int blkz_recover_zones(struct blkz_context *cxt,
> >> +		struct blkz_zone **zones, unsigned int cnt)
> >> +{
> >> +	int ret;
> >> +	unsigned int i;
> >> +	struct blkz_zone *zone;
> >> +
> >> +	if (!zones)
> >> +		return 0;
> >> +
> >> +	for (i = 0; i < cnt; i++) {
> >> +		zone = zones[i];
> >> +		if (unlikely(!zone))
> >> +			continue;
> >> +		ret = blkz_recover_zone(cxt, zone);
> >> +		if (ret)
> >> +			goto recover_fail;
> >> +	}
> >> +
> >> +	return 0;
> >> +recover_fail:
> >> +	pr_debug("recover %s[%u] failed\n", zone->name, i);
> >> +	return ret;
> >> +}
> > 
> > Why is this introduced here? Shouldn't this be earlier in the series?
> 
> blkz_recover_zones() is used to recover a array of zones. Only ftrace
> recorder need it, so it's introduced here.

Okay, that's fine. I thought maybe the dmesg front-end could use it too?
Anyway, I can look at it again in v3. :)

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
