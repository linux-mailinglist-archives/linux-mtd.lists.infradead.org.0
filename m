Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDF61CC3F1
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+TtW/ASojkZzi4sWgkjOkzK4v9K9zsQ9K7c7fiB95M=; b=UeXQtwb1zd9/0L
	B2THpwNGWqI0HBByZF89hdl5Q861cRoVpSWL0Hm0rXPj2YFiyMzESE2K/WffO8E5XXNFjP0EkTubi
	vOaU+pQZqGgoBvpML8lUdWjp7cym0sZwLn3ec7rQlybbHEbc8ilQUSYeRUcATDXcCHc9iktNVSjVZ
	2VfpN/SGR9e0dm2+nDCVLkVyOycP3v0zME+LQx6r7THVwqeFa74BFwOo0lkUMIgSvsNnBqEFMz/RE
	9LWPdu/riZERBuIKO8kwFtj24Ai5GgbwFVVdZLKKB8BMXNgaS+WPza5bxKpl4li7Fut7oZ/Vey/oG
	YV+kB0VMWmwL1m5jm3fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUsF-0001Fc-1h; Sat, 09 May 2020 19:10:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUs5-0001FD-CQ
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:10:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id 18so2698870pfv.8
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 12:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wf1n+hj5e8dyRivUQoz1C3c50QpmiVcBTEYF2ohJ06I=;
 b=ic2jDBAUdykvb8NzpOOfuQtQCAJskZi9+smoiPzH0xhkiX4pmSJiinej0vTVKH/221
 gnrKMP7IOys7u092mkVJTRxQoojh82vCi5NVTTM9PF5p0zLJ9waRrFkClTf7fi/2WpPA
 uBgj5Ja5hpJz90iREzYY3zV5EovyF5+UvyYYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wf1n+hj5e8dyRivUQoz1C3c50QpmiVcBTEYF2ohJ06I=;
 b=oWDQORP3Sdq3M78xgMXBPRN4fPg6raqavitdEB/sEo7N+CtIVyssubori7nrcJqg7U
 ImqV+so0C0V2U5dalINMH/flKANd5DGEi04GYWveWbGBTvefz2IHHxeC68xZPqV4wGjY
 nKE8LXlTm5WbXMWujaFObNTEumNhCHrsRVTjn4FFKs44jT6G51PFR4aDvURgPLBxYwih
 9vDYLhKRux8UueH11b9ncq1x6LPRMTV+30SNeIa85xUICnovabj8o5FGhZZCPCxzX/GR
 gv61h4qk3wh3MD97aZtcsMQoU3ZyveNRaiqYyEOMqiF5v8qANA/s7RX5m3gaelncf7JO
 wVyw==
X-Gm-Message-State: AGi0PubROWs4gPhgupTbe2+zLXdQxrxbznrwlwjKhuxFGdJ9Qod+FJbL
 gX8J/jncRx+KyZQz6aWjUxWHUcPZTVc=
X-Google-Smtp-Source: APiQypIUCMS5XnSujPmoONFpTKJIcwb1UPhXWiVcur5+r5JlPaWLbFnndT7Bb71vHTwjtrn39ZObjQ==
X-Received: by 2002:a63:7b42:: with SMTP id k2mr7065532pgn.299.1589051448671; 
 Sat, 09 May 2020 12:10:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x7sm5289404pfj.122.2020.05.09.12.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 12:10:47 -0700 (PDT)
Date: Sat, 9 May 2020 12:10:46 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v4 00/12] pstore: mtd: support crash log to block and mtd
 device
Message-ID: <202005091209.406DB4C@keescook>
References: <20200508064004.57898-1-keescook@chromium.org>
 <202005080020.41C33738@keescook>
 <c1583001-bf03-d198-ad57-3d2a0baf93ca@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1583001-bf03-d198-ad57-3d2a0baf93ca@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121049_445591_1A07044E 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Petr Mladek <pmladek@suse.com>, Tony Luck <tony.luck@intel.com>,
 linux-doc@vger.kernel.org, Anton Vorontsov <anton@enomsg.org>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 linux-mtd@lists.infradead.org, Colin Cross <ccross@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 06:32:28PM +0800, WeiXiong Liao wrote:
> The following diff is to fix "rmmod" bug.
> 
> @@ -1273,8 +1273,8 @@ static void psz_free_zones(struct pstore_zone
> ***pszones, unsigned int *cnt)
>                 return;
> 
>         while (*cnt > 0) {
> -               psz_free_zone(&zones[*cnt]);
>                 (*cnt)--;
> +               psz_free_zone(&zones[*cnt]);
>         }
>         kfree(zones);
>         *pszones = NULL;

Ah-ha! Thanks; I'd almost found that. I got confused because I wasn't
see NULL free()s, and I finally noticed that the zones had left over
ERR_PTRs:

        if (IS_ERR(cxt->fpszs)) {
                err = PTR_ERR(cxt->fpszs);
+               cxt->fpszs = NULL;
                goto free_out;
        }

I'll fix those and your v5 and my lastest tree merged.

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
