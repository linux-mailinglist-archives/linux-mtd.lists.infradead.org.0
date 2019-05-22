Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414102722E
	for <lists+linux-mtd@lfdr.de>; Thu, 23 May 2019 00:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbTByLsHQxJBwSOdDKW7ivXcTuFZuJ8fLGniASrGRkc=; b=eT0Xb2bBvBh+wH
	pKI23PSNz+54lDdtm28iOt8hlPSTBislP7j3wsA7kpuWD8lzVU7GfvaRFfGI+WTzlEWdwAOKrLVLO
	MhZLfoJ7AojfhAj3bvxm714BqnpNW9pu/mUpVaw0nqmVtHgiL5gVWmyr9A72H+pBmK08zlgkXz1ip
	cL4Y6x8vp71n7JC/sEPdRvMqotFSk2ympwifGiQN4VnJnS9yvY+AHqs+BkpKET9qvRAKnY5J4HS3z
	k5z1W6iW9oEHRvig5drnD5oGXfjJhgpSzTceIu92BTBqVdUg+5qIOqVqM26uF3HmdscKKXokhnjxE
	8Ll+7XSkmQ3frbSS85Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTZat-0001EY-7D; Wed, 22 May 2019 22:20:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTZal-0001Dq-4N
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 22:20:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id o11so1810801pgm.13
 for <linux-mtd@lists.infradead.org>; Wed, 22 May 2019 15:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zKpoS8ChVauG/b5jE7jdGLek9tzNeFPqv0E/OMjWjmE=;
 b=l6Twn3UjulqQqYjQ1sV1Om600H5NzmMO9lU7YFqwo77Q3wEt3NpC2jGlLXf606OARJ
 u5179gymw9vrMKnbwCTv3rehfAly651iOeW71m1DadeWX4CicN1zq9VWAolyQFIs7fHo
 Av9uo86ofFN6IiAIpEWhPjsElNYdgRQbdvBI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zKpoS8ChVauG/b5jE7jdGLek9tzNeFPqv0E/OMjWjmE=;
 b=lLmUI7rX5/tBxm2mbhuPIIPjroGP+vGlRJnimW1TT6X2udgHQogrcEhGKqcV7YFivX
 GqcUimn+V7pZZS+A/e1y7Gs5j9YTc0KMAbMM7bSWbVqqka8KDeM3SSW48ZhHh28unGQg
 Airq0sduV1gDnXlxZQSCVDYjeq9CWVG5/94lIPOi0vrA5LrUGaCG7Bkhp5Pu7nei+XPp
 uNIYD9wZDQahv/omRNzCjtlhfew7TyRXDnilYZexWD72bwyE9gfn13iKJbGOguMNKoU9
 Amm3J9WYBfA8+7GiGDAzHb5demAS5PEGtggLWwThsEuFiEUcQWMPB0Ro75u5ICboMmhs
 wM+Q==
X-Gm-Message-State: APjAAAVLnV3a1KLqliPVfIjv61oW2lSjSoFE2MpIUCYSBJ/CGXEBtTA5
 YGF1vooAHmZde5UkZsfECF7BUw==
X-Google-Smtp-Source: APXvYqw7vBRQoH+FD/trwikHaC065wEINOozIgtwVa9U9ZyvIo0eWI2fuUR7x4j3CWWXadtR698Bjg==
X-Received: by 2002:a63:ed03:: with SMTP id d3mr92213341pgi.7.1558563608854;
 Wed, 22 May 2019 15:20:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x16sm28300353pff.30.2019.05.22.15.20.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 15:20:07 -0700 (PDT)
Date: Wed, 22 May 2019 15:20:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH] mtd: onenand_base: Avoid fall-through warnings
Message-ID: <201905221519.88B9364E@keescook>
References: <20190522180446.GA30082@embeddedor>
 <201905221403.642AF6092@keescook>
 <20190522235738.68059906@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522235738.68059906@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_152011_228326_45E0EA70 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 11:57:38PM +0200, Boris Brezillon wrote:
> All this look suspicious, and even if the fall through logic
> has no side effects in practice (which I'm still not sure is the case),
> I think it'd be better to explicitly set the flags that have
> to be set in each case statement and add breaks.

Yeah, totally agreed. :)

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
