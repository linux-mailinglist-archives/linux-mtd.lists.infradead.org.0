Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706BF138C97
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Jan 2020 09:03:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eky4e/BEwzEDdKCEDCdXrw1hzs3Fj657xsW8aUOGkMo=; b=eCnd/uuXqgqPXo
	Rg29gUX3G0BcQzMCHDhl2hCq+KMqMQQj2EDNGVtXH0+kYuG5OAAdkVdiEYxCq+zJvRYK0mTIk4FVp
	bfSXIZGgm1fuykbyb3noP9j8lwkaFKEoB+Ikf3AnkkX9cYBVrlze3yBna3KUMVqJI+kZRlNcntA1v
	2y2YHjcY0VhdIyAFi1X9ftcheswYB5l8XJh3LXEDiwgz8SoH2dLIUViK6toFVONGKpjdgBlLJSOkQ
	0A0EGM2KFMJeqD7UR4nvtbwe6lO/X6fbSPgd9HF+7vY0QBqO7qDI8MQ3KRa93Pycz6XPXG/Voru6U
	Pnm59cN4JtOeWKAmDgdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqugi-0002rl-LM; Mon, 13 Jan 2020 08:03:04 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iquga-0002qz-W0
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 08:02:58 +0000
Received: by mail-ot1-f66.google.com with SMTP id 66so8126843otd.9
 for <linux-mtd@lists.infradead.org>; Mon, 13 Jan 2020 00:02:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X8Id6XgPA2ap+aeggUNQ70885pghkWz/XEq4dAjRKOU=;
 b=jcXYPX7ZGij2XB4MBsukk74Ax2Xc2Zqz75t2WBztb8z8Pes22PM60blc6fLsgOh0EF
 OeYGSGIRI9L9O1zbx8ip5xf+hAdN2EiT0WhDjYmE3qzWfJBNggclJHOJf6TtX6Tv+fc4
 Sj5QP7+CKdvDYUj/CzcMYr+44sn6+0eLLAz+xogK6v1NADVAp6uUi2C/aQ5Epaw6p/LI
 ErTZdULFFxp81Fqw/vGpcVJpfyPiBnopW1e/H+emTFK90DhqOvBOeHqy/l+0Ep/21keX
 58AE7raVMyJLhVjY1lRV+5GaAf0NYSGrv2iIKODPJ5jvu6U2KfLPSCmtKNCSmc4X+gS3
 MpLQ==
X-Gm-Message-State: APjAAAVvWEk8/xExsLx9yUP1arjohAEw9J40rZqD5APvVYFvGfzocMiK
 rej6Kca4OqBd+yKwz8lVQYaSYd9wki8NCxaRM0F8Ig==
X-Google-Smtp-Source: APXvYqxrTQxdCcBjcuZNb4i1DplR5hz8sBr2nJFdWUQiqpijAC8f2J0N8OKIXCudxmSmWTD9cr7n8tPRxo6bdGVvTh0=
X-Received: by 2002:a05:6830:18c6:: with SMTP id
 v6mr7330803ote.145.1578902575501; 
 Mon, 13 Jan 2020 00:02:55 -0800 (PST)
MIME-Version: 1.0
References: <20200110154218.0b28309f@xps13>
 <CAHk-=wg=8=nTeOYGoAbJ=VjS47Nh4-_OFK9zKsK3mK4nAi2dNA@mail.gmail.com>
 <CAHk-=whdsFSX0gTOiNkTANONgHHVY+8jUd1DmY2SJpdNOq5xJw@mail.gmail.com>
 <20200111145004.htnpdf6oaiksryxz@chatter.i7.local>
In-Reply-To: <20200111145004.htnpdf6oaiksryxz@chatter.i7.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Jan 2020 09:02:44 +0100
Message-ID: <CAMuHMdUtk9m+BNrH1BuqGxWXR5h1DZmUasHMVKNYFxsd5wa5YA@mail.gmail.com>
Subject: Re: [GIT PULL] mtd: Fixes for v5.5-rc6
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_000257_029165_9DA4E80D 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Konstantin,

On Sat, Jan 11, 2020 at 3:50 PM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> Things should be unstuck now, and at least this particular bug is fixed
> -- hopefully it'll be smooth and automatic the next time the epoch rolls
> over to 9.git.

Are you prepared for multi-digit epochs? ;-)
They not only contain more than one digit, but compare incorrectly
when using lexical sorting...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
