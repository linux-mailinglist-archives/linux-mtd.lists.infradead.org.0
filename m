Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2676B1CE8FF
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 01:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlDfmIuehQvOpoIz7fqH8+cn8wCXlQjXngQ9pRPBjaQ=; b=BDpdG25a+psMYQ
	r5Jk1tHxeTgbsgJSmjzQt89TUOJVxe0nolzaa0lyHt+QqsMo389xukgQbMSSrMe+P4fQxEKW23RT5
	NPMNS+taGv0U+x2F8LR1zI2uw2B2+7WK3mAJnqFxSoJM1ovljN5Ou73jrSe7PbGbrNwQgoGu1MEwh
	il/8HKTecW5zFhPAwgF/seBSkXI9evMXvPcrDmoXGqFDepMWf5RUFD3ZbtlaRr10h4a34cXah4p/V
	fjWs5myum2Fir0EimMJIIEIMaNHaR0G4GmjGbcGsMMsUX4OI3JCsLyawJ3y/Xc41wcYUhWiEGerGL
	INi/du8yNZL+/T5CdN8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHfv-00029S-95; Mon, 11 May 2020 23:17:31 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHfn-00028r-Ck
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 23:17:24 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s69so298417pjb.4
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 16:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RoaOXEIEPPBvEZydBUoMBwzTtu/js2tJXu+mLWP7YY0=;
 b=eRlZl02Pk3EiQyScZZ5SxULfsmz13q/0q7ln4hE1Jq5RaY0Whqhio++bJ6hzBaoeZr
 UXix70mVrYKi6uWVK9a2ztF+DmKxlKZg1DoRN9bacUxmkkQB98kDUbJiikRqaAvu34P9
 +aTU6Q+SDeH/dVF1g1coPICyd1WC2tTkSzxAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RoaOXEIEPPBvEZydBUoMBwzTtu/js2tJXu+mLWP7YY0=;
 b=ODNQE8TLjXmSkHBHPURKAgqZ9Avj5Qu2Sex7zwaXw3G7Xm2bqZOrsrRzf+sPOmOEIj
 RMBDV8VFs24RwWwv65R/9KS4KezJ+Y5p8tnpAAjDHnw45EpJKi4mgz9k4E7mcgckpEdI
 u2mVM7lKjmHV0jxHfMZaxTtGDDbJ1NHj1wTNSu8+sVq1GQNMV4kzPjLrshAcQmo7ly4A
 inoHbaGFMoLNt7iITLgLwV5XLe3eakHjtq+6U0IWDzxBq84Ux1/y3E+cBtt8CLsQSf1r
 6A6Uoto+fK5MfyuOQxRDq7GNAnXYuCgiTdCQhrHkquwlvEC64eZo05HzjAP5IPnh/LqF
 od4w==
X-Gm-Message-State: AGi0PuZxSfToIdkqPnXuN+GYhQ6j76wbTJHltZwGr0nIwdsDaFRysB1f
 eCCHaIyxMg6RADQyx1eiL5q0xQ==
X-Google-Smtp-Source: APiQypK7v+EhATPggo0LzePS+T/JtgjFK8wgsNSjsQym6ayZpy8dN1q25NLNQpiuVo6HBRLGsAn3Zw==
X-Received: by 2002:a17:90a:d0c3:: with SMTP id
 y3mr23259663pjw.133.1589239042619; 
 Mon, 11 May 2020 16:17:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t14sm8916651pgr.61.2020.05.11.16.17.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:17:21 -0700 (PDT)
Date: Mon, 11 May 2020 16:17:20 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v7 00/18] pstore: mtd: support crash log to block and mtd
 device
Message-ID: <202005111617.94D9B445@keescook>
References: <20200510202436.63222-1-keescook@chromium.org>
 <0586f5cb-991c-3528-dfbf-ee61a39a3955@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0586f5cb-991c-3528-dfbf-ee61a39a3955@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_161723_425720_4954056E 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

On Mon, May 11, 2020 at 06:54:11PM +0800, WeiXiong Liao wrote:
> On 2020/5/11 AM 4:24, Kees Cook wrote:
> > Hi!
> > 
> > Well, I guess I spoke too soon. :) Here is v7. Hopefully this is
> > it. WeiXiong, can you test this and make sure you're happy with the
> > results?
> 
> I tested it on Allwinner board for all frontends, including panic.
> All of them work well! That's a very good news.

Great! I'll get v8 sent out. :) Thanks!

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
