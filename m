Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30711E14EC
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 21:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oA4IkiFk68YyupyvAklK0rADsvgToEIopTeT/PIcip4=; b=RKWAKfsEy3Ng8f
	TCuXntSIb3WRr1ml6K+GENuJqMp981G2QmKaSlVOBw6fcUd9ZpAZA+tPQYpxebt7tiIeHfU2eBCDN
	reOdly6COvwAc/LhihX7muaaA6LyDk11kkjoT3l0C9SEoYuCP5UeQB5BITmuu9M96wBt2rr8uTu5z
	+GwAkjo8+qTwwxubENJx78wZd37ygo1R4+B5JwK4B577cVNdyGLZfB9U4Wf+9zYAQcUvnTX1gujxe
	aOa0R71Xzr2F51an2n95wOsZxtDaKQYH05ALiwSiRLA/l+3Tegr4XlVgE8tgou4UTojJVsPZMkDRV
	4NTbpIUzbJP6fYtRH1gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdJ2O-0004st-US; Mon, 25 May 2020 19:45:28 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdJ2H-0004sW-2q
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 19:45:22 +0000
Received: by mail-qt1-x844.google.com with SMTP id v4so14509644qte.3
 for <linux-mtd@lists.infradead.org>; Mon, 25 May 2020 12:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l98bL2XUb08hWUoyu2NJG2HOXbPqPPPjuKag1cZCtGw=;
 b=dCTEFD9OGUQArHjnK6hK3+f/d7lpwiiLuG5/uOR0CacYnuzn8o+Sa3YTj6HUmmAR18
 7nK/d5tBVaqD3BHQ0GgI0YwGa2Pq1BM8nZTxuYrEMXj+Rhu8KuTXxKYw91lHkqaGcgIx
 v6DmbORqoMVEqf1UWpGY058eOQ62EPua+sCkkm49QTHBXuYRxlP5WUgdug55S223BQW6
 yD+0hQL1t0XXz8hdwyoQppy4kKj+P//89fChoUWW3Cu2YYHUlR00nE43MeU7q3m7xqzO
 V1QBqXXRAVeulQRW1PtKJCU5gig90f1TSWpTRQCapRMfVm6EM7P80cf6K/ritx6fD/2x
 plnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l98bL2XUb08hWUoyu2NJG2HOXbPqPPPjuKag1cZCtGw=;
 b=pliu3vRImHeofXJ0phi1cjyrX82woJdXMHmvEYrvp9iL6pOmfpoigLaqJzDx0uB/tr
 Y/lRrftPBmflA7rW6l2101vcy/YwVUux/nIQ3R14d4NgerFxbjLhae3sH5SbcYWbWAci
 mhA0BQ7MbKmQwJietQR+z1G5PoyOoARNDa0A8Uu0Ers59e4vRsZSemEHY0WWSGOX0SYG
 oWsoSscZeoUy9B1CpgPp592htymLzsgMhr1Yx5tq/Z41aVft44UQtfmXO2nA1Wduf7+0
 tdzPFxUeG4xjcbGN3ZfupNulx5pOz9D8DyNLklHPOZDGMtaNXhxYlKHu4gf++O9XCvzM
 v1dw==
X-Gm-Message-State: AOAM530cmbxotXzUCJ05R2ghZ+wu/g88UkeI04bUM8o1c50Tz5yeMBjE
 GyCuumlsVioIy+WeCuSckqN8gV/MHdLK+cMbWaTOyA==
X-Google-Smtp-Source: ABdhPJwIonxrJXEmm97cJkSJ8NpmB0xg2NPrZFM0eiJ0Wc8WdE3FgyxGIJPq9Hjuw8q42RS5nn/Ci/NKoJ5lnZ8gjYo=
X-Received: by 2002:ac8:2c44:: with SMTP id e4mr30760300qta.13.1590435918208; 
 Mon, 25 May 2020 12:45:18 -0700 (PDT)
MIME-Version: 1.0
References: <149914202384.24318.7331828698981799313.stgit@kyeongy-dl.atlnz.lc>
 <CAFLxGvy4NbfHHoHXaH=sR-3e10+EAbDwLsdM1_Eyk_gT5=HE8Q@mail.gmail.com>
 <1589932809.26085.25.camel@alliedtelesis.co.nz>
In-Reply-To: <1589932809.26085.25.camel@alliedtelesis.co.nz>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 25 May 2020 21:45:07 +0200
Message-ID: <CAFLxGvyAoZ+G3V8i-4CsQYSuHPTdG6v7s-78vL7Wq1EZEzDOWg@mail.gmail.com>
Subject: Re: [PATCH] jffs2: GC deadlock reading a page that is used in
 jffs2_write_begin()
To: Hamish Martin <Hamish.Martin@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_124521_150505_7A4BD044 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 Kyeong Yoo <Kyeong.Yoo@alliedtelesis.co.nz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 2:00 AM Hamish Martin
<Hamish.Martin@alliedtelesis.co.nz> wrote:
> > David, unless you have objections I'd carry this patch via the MTD
> > tree.
> >
>
> Hi Richard,
>
> I'm interested to know what happened to this patch. I can't see that it
> made it in to the Linus' tree or any other maintainers tree.
>
> I'm keen to help finish it off and I note that you said you were able
> to make the fault occur with your tests. Would you be able to share
> what test you were running?
>
> Please let me know if you'd like me to test a modified patch, or if
> you'd like any further assistance to get this patch completed.

Let me figure why this patch got skipped. :-)
Thanks for letting me know.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
