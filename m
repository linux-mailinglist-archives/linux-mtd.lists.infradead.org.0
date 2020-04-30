Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDB81BFE72
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Apr 2020 16:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MF97Ln+TF+YIQgTmfznLP4mGcX4DFjA1IKmojQWwYnI=; b=QSInmRP0tDe+M6
	u4u2L+p5Je0WMmxItkob/JFTz2SXzduIt4XaBjocVwZkcTQhmt1AO/sDKH8x+SHA/ZyevWpg884k8
	HjKpP6lhArhQgY4JTdtHKHmK81V99RXrbgINnpqfpsf+/NxfZEHm25G2vmr/rxV9xh5VrBLscmJl+
	Ip+lFKNEuautCNkOqsRJKCjlrvA8VJZB/CHVL9aUKeN5odZQc9IiqbTsPgHAZVCorBeXJv2SPzSDn
	DfWLWZ/NijxIOFw3JPXzqjoyrYPthdMKjG0pUV3SOJby8/0OY0YlKR60fpsEUMn4qZDewO1FdihkM
	6YD5P0k9Y9nhw7eLKBHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAIW-0007A6-BJ; Thu, 30 Apr 2020 14:36:20 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAIL-00079e-Lx
 for linux-mtd@lists.infradead.org; Thu, 30 Apr 2020 14:36:11 +0000
Received: by mail-qk1-x742.google.com with SMTP id t3so5905718qkg.1
 for <linux-mtd@lists.infradead.org>; Thu, 30 Apr 2020 07:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kyEXwRucx4mm4wQMLcdV/oiMdpSDEqK2+vdd9PnWzls=;
 b=DxKgmh2xnqGaexyYSSV7d38wQ7jyg0HP9vUc1pCva9auVgioqfTGEjn4IA4aUof2Bb
 2sHkuz0UOQ5pjrDrKGVsKzXm9/ZDA8u8knjrsgz4CTO/OfA6rJ6vhYtuYTx4fVnoytsk
 5r1+ANHt04XmCCLIinqXw6wi5yisAjTTaAp42+klKPD8SoY2bJcGY7qXiEBbMSbzfOpV
 aCVM7dzkvq9dIXTMCxP+MvQ6hTrHmvlP6yA6fawFQ3cJBbjvFsCIxKlEzdxO5OgQXkhD
 aUUE+nV9UXzV75v2rYA7ecc6etwmH6wlRBX4sbx4fFQfS7IL9Lu61Hu8XmhO22YDgXRc
 hJCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kyEXwRucx4mm4wQMLcdV/oiMdpSDEqK2+vdd9PnWzls=;
 b=ahZl/RCYbkCuxeGVkBGuW0wBRMsCrDVH6vaMRYdwcAlU0NdL6DIEtDqac888iwU6kH
 u54SQ2aqaVs8DuT+eU6E+S2Bnrj7ntZZgWZeGujfDdA2vhnKWavLJ/mejug7scyOkNTP
 cj6TQYxcwGFPwRPkEidV/CChOgO4qd9fWpyxoBbqJ6iyYv94vCqGUn6UyLhL8UZKgmtj
 zPNpDjGkiFTN+zhWQq79H5Wg2i3l1CYn+jzaaG9GPHwsvovwOOBIWrTzGnYM5Iqb8N0W
 nyStn1VCSqQyWGaHq6zEXKpkRzhPDtncKRWnb572GIJHedvl5v5USUK4Ti+0jxZ+4hOB
 02dA==
X-Gm-Message-State: AGi0Pubf0K/tQElQ8WcSCbgZiumi9dpbBZX+jINoUfpdv1fwqjVuSgkF
 vjok3lQYuBJqeiFPYdtwv8rn6fbrR6AqUErnCCg=
X-Google-Smtp-Source: APiQypLQHqDUa/AINF6/kfhKskTrRKC+FA3MhzFBdKZw0T6tTmZpnVYw7BjJIa/gZaP9UmfMoJgPCeSzVYfCeSb3sx4=
X-Received: by 2002:a37:6287:: with SMTP id w129mr3864787qkb.34.1588257368032; 
 Thu, 30 Apr 2020 07:36:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200113145622.18357-1-arne.edholm@axis.com>
 <CAFLxGvzEHdxDKfNnDxMXAd0Fct2Yo1+sJDmKfT8eUwUDukRYXg@mail.gmail.com>
 <6b360811-a227-c32f-f9a5-660bea4861c3@axis.com>
 <24ef4730-83e4-ff91-21e8-739153a44a8e@axis.com>
 <CAFLxGvwNxNkwdiovrWQzDfPNr9t2WnXU2VNyNs5caFNZ1WsySQ@mail.gmail.com>
In-Reply-To: <CAFLxGvwNxNkwdiovrWQzDfPNr9t2WnXU2VNyNs5caFNZ1WsySQ@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 30 Apr 2020 16:35:57 +0200
Message-ID: <CAFLxGvyTnsk_dGdozQp5OYYyhJCiAD4Yxiy19=-05jRX1oU=Tg@mail.gmail.com>
Subject: Re: [PATCH] ubi: Select fastmap anchor PEBs considering wear level
 rules
To: Arne Edholm <arne.edholm@axis.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_073609_741374_833B3900 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel <kernel@axis.com>, Richard Weinberger <richard@nod.at>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 4:29 PM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Thu, Apr 30, 2020 at 10:34 AM Arne Edholm <arne.edholm@axis.com> wrote:
> > Are you satisfied with my answers or are there additional
> > information/changes needed?
>
> Yes. In the meanwhile I did more testing and with your changes the
> anchor PEB selection
> is *much* better. Testing took some time and then I scheduled away to
> other stuff...
> Critical workloads are these where a fastmap is not written due to
> heavy write load,
> but other events like volume change/creation.
>
> A good reproducer seems something stupid like that:
> for i in `seq 1000` ; do ubimkvol -N test -m /dev/ubi0 >/dev/null &&
> ubirmvol /dev/ubi0 -n 0 ; done
> Wearleveling threshold is 50, btw.
>
> Without your patch, the erase counter of the first 64 PEBs:
> 4    4    4    4    4    4    4    4
> 4    4    4    4    4    4    4    4
> 4    4    4    4    4    4    4    4
> 4    4    4    4    4    4    4    4
> 4    4    4    4    4    4    4    4
> 4    4    4    4    4    4    22   4
> 4    19   4    4    4    4    4    4
> 4    4    4    4    8    908  906  1
>
> And with your patch:
> 95   95   95   95   95   95   95   95
> 95   95   95   95   95   95   95   95
> 95   95   95   95   95   95   95   95
> 95   95   95   95   95   95   95   95
> 95   95   95   95   95   95   95   95
> 95   95   95   95   95   95   95   95
> 95   95   95   94   94   94   94   94
> 94   94   94   94   94   94   94   95

While observing my own mail on the mailing list I discovered something
I didn't notice
last time on my terminal.
If we summarize all numbers in the squares it should be more or less 2000.
because the test triggered 2000 fastmap writes.
But 95 times 64 is much more than 2000.

Your patch produces almost a perfect distribution, the overall erase count
is three times as much as it is expected.
Hmmm.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
