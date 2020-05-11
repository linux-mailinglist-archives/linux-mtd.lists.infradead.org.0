Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7CA1CE8FA
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 01:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UibaXKSbK6c/a22Z1vAIPLRdR684oKvy9GiJ8Aes2gs=; b=nIvy4JI1PkNZC1
	q4qVDbIjDVyq8cl42jZ2IfkuPLjny8fCeHMnO4KXCVDG01KaFynMJzXFy36suZQgSZDJqIaxpR6nc
	Yf3YMxckWbW0vwJ515J/Yc2mK1Z3XQaoEMjR82tFhRff/OSUkXndn8lRbU4uFKymfmigwFYVdDAYC
	BYT/wsLjHOEAWoAqbJjbLxb/U1XBICg0Dmz54AG+Qz8saRfWsaPtD5S7lFAmabGNOf/Jh8J/zDTzG
	x1ozfN7PRaDcjR5yWMVnQHQ555vaAiElORD+HXjeZ7oXEsHyuasxQZmkgnffTHQpwqbmaka5graZU
	fMLjD3JulTqxCSDnKSUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHfZ-0001uB-5x; Mon, 11 May 2020 23:17:09 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHfO-0001tj-NE
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 23:16:59 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a7so8497924pju.2
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 16:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TyQ+88CfrBEczIT0Dd6n6ZbeE4ol8PzNiSvfm5+kLJU=;
 b=JHg/0IjD7o3QPrAqxokoSFbk/QwW4JofsG45d+APkRNW/YJJedD1NIj4FJBSZWSEvw
 wok+avpYAAXxcqo0SoeTraia5guUYkdGPtH71Yzl9rnbfdF5X6E71jswAIkrKuEIehzQ
 pvmZuSFh/oQLZ1A5h9owaBTTgWB89Agkdsuf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TyQ+88CfrBEczIT0Dd6n6ZbeE4ol8PzNiSvfm5+kLJU=;
 b=bXCbirL30v0FX66cF/EINxXiBfWHKHscaWcssp0kvchjms434xaj0ek1zeu1w2iQl4
 CDBoSTcad8GZVeiMAPuovPzaGiIgTNUyn65OoQG5y63eDKKJc1B2iLExUKXIzlcKOiZa
 CPUzHnoyQoB5uiKFAJRgzPgAWcEaA1DEopsZSfnNYKIThBC+2hn1PiLJhKI42/8Is9To
 h1U1oV2P9VClqAL3B8P1XA7+HFjO98G5iStLmlzBtSJDJ48HlGq7FpaQqW58ewW0PwZy
 UYaxDnLaNjbxQuom3T+wH0eIx3MFWw4PaizhgC3aVmHi98H+lFrQac7twglphs5K7MnM
 rQgg==
X-Gm-Message-State: AGi0PuY65XC9hXOFsPK+Dx6vDqK99ggB75jPPxK/YstzRog8ci6370PI
 QYMOyOZxDLMyGIJyT0msxkhl2Q==
X-Google-Smtp-Source: APiQypJbYkw3p9y1o6N+5NhKARjk7xl5lEcqdm0v+m00BfXaZfzyPSUnPFzAd1fH1+muoyFt2kCyaQ==
X-Received: by 2002:a17:902:a40e:: with SMTP id
 p14mr14257516plq.0.1589239017355; 
 Mon, 11 May 2020 16:16:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v10sm8920337pjy.48.2020.05.11.16.16.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:16:56 -0700 (PDT)
Date: Mon, 11 May 2020 16:16:55 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v7 17/18] mtd: Support kmsg dumper based on pstore/blk
Message-ID: <202005111616.CA0264F876@keescook>
References: <20200510202436.63222-1-keescook@chromium.org>
 <20200510202436.63222-18-keescook@chromium.org>
 <59ef2812-93ad-9f8c-81cc-458128a6fb46@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59ef2812-93ad-9f8c-81cc-458128a6fb46@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_161658_759784_9C6FB0B9 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

On Mon, May 11, 2020 at 05:01:26PM +0800, WeiXiong Liao wrote:
> On 2020/5/11 AM 4:24, Kees Cook wrote:
> > [...]
> > +	if (strlen(info->device) == 0) {
> > +		dev_err(&mtd->dev, "mtd device must be supplied\n");
> 
> mtd is NULL here, "mtd->dev" leads to error.
> 
> > +		return -EINVAL;
> > +	}
> > +	if (!info->kmsg_size) {
> > +		dev_err(&mtd->dev, "no backend enabled\n");
> 
> Also here.

Thanks! Fixed.

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
