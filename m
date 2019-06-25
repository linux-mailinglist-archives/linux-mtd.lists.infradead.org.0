Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA1A526C6
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 10:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksl7VgCXlVEKGsrJ039O1Iua+WwGxt8BShp5mkj0V9M=; b=OlXLT5qTuEYZD0
	YqNGsfbUaytobg16HTfLL7BcrHedpxgnUpETljgLSl9zPpg1+lH0qCeslvKvxGS19o8xpPmBKjOaj
	YjtTftu/4hGEvi9kGkCM145rKxAAR6elRqGNlQu6YwrhYPYKzDZdbguEOIgh9nRluP6WPCXMb3pm0
	f05B/Mhw0QNOjOkJupQACmtblyfogoXPye2CycT8jpdf1K5TM2TuG4yzfugaF4CHgZdm6xv5tYCpz
	7H0WZbzCf+Np182ma59uwmdJigxAEmrh4GFb96CvTlVc4P5Lr5PzF07liZwvW0X4CE11fxZTIXuAq
	ohgpHjflx+r/+0mTb7vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgwt-00088Q-QM; Tue, 25 Jun 2019 08:37:07 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgwi-00087p-OK
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 08:36:58 +0000
Received: by mail-wm1-x330.google.com with SMTP id c66so1905372wmf.0
 for <linux-mtd@lists.infradead.org>; Tue, 25 Jun 2019 01:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kTJ8F48NT1YnAWhKl5uH0IrTHlJGpWWgyHea0b4llJI=;
 b=TkBxmbHyZh9MW/LCVtOcb64pwqTsmehKqtkj6n1gTX9sinNfC4lRIldkfOF+F/pt//
 RZFmAIWER6WPms/yi1NitR8DdiNMkf/CQa9efq286ZsdfzKaPAgzP6b9mLoJR5laXeFo
 Kizcw6ixfr/dVPVLjpfOBKrMzrN0UCcePOt+VKM1UeD9awlWRtp/2O/q51mqaXDFnwy2
 GU5eR1r6dzcqyboA0s1QJHMPSXQNNjr8QXH8uMXvf5QV17GEIaXU8IfWFt82SDaFtmTz
 xwTy8zJIraJ+BMtJyS7ZWE9zSCpgkzW1HTba+Oe0t8DzjBgJuT8U2txU3HLD1Hp0drxr
 q9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kTJ8F48NT1YnAWhKl5uH0IrTHlJGpWWgyHea0b4llJI=;
 b=OHpIrkwYj2FYHCF/1WI2U1oYsXfW7ELHtntaT/z6i1aZ5Nq6cUW6+WyQITkCp8yDsE
 hYaYGIR9xJfhhc3YBcdwLM9CxYs/A7nprphHAURTR19XWHgrBQPFoBfMK6gY/lzDIlGW
 KBWzu9z4KzWFDfXq1xzKMUysF8kph9fJIsdA7kCvnNZRkDaNzj0F0Dj+TiTX5TU6d/0K
 pltq1RhAaP8XKo7ihkzXS75+Bdu71Wnnx3JpBmhPmhX2mmtd+ZS2ut1H4R9N0Q9FLW0e
 bq85dK5WvJ1plGgjx9gMqWXtQKGgjvClq1ekdITyDJwIDzNdksX92Ey1Eea2tUijbVhY
 UgkQ==
X-Gm-Message-State: APjAAAVM+BKQGJdZquTSqpaFwwQaQnbNqD4cZPNfaveIkS8qT6Uokvju
 1rH2l0h7hShvbE44tDOBphzALM3r4Zxoqw67SjZSZw==
X-Google-Smtp-Source: APXvYqzphEKlzggpnQvJUl7gXRp2ZaVsxF5xLrx3nsRKKXg3UEMCqlAhUrgFg9wTkpmFal1bBc6E5Zp18JxBqVkp8c0=
X-Received: by 2002:a05:600c:2182:: with SMTP id
 e2mr18787474wme.104.1561451814713; 
 Tue, 25 Jun 2019 01:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQdnUZ22XApaiDKdJ1zS3MOMNW5xrOsVKDkGmk496hQXA@mail.gmail.com>
In-Reply-To: <CAA=hcWQdnUZ22XApaiDKdJ1zS3MOMNW5xrOsVKDkGmk496hQXA@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 25 Jun 2019 10:36:43 +0200
Message-ID: <CAFLxGvwY2PU5Gj9mvaWT4koF_UFvqncNq+ZYQkxrTmXMUqtieA@mail.gmail.com>
Subject: Re: How to test NAND bad blocks management?
To: JH <jupiter.hce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_013656_815110_69036F7E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:00 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I learned from the list that the kernel is capable of handling NAND
> bad blocks to use the mtd-utils "nandwrite" which I believe has
> already included in kernel, is there any test problem to test the NAND
> bad blocks management? What will be the symptoms when hitting the bad
> blocks, segmentation, kernel error ...?

If you try to operate on a known bad block, MTD will return -EIO.
Linux maintains a bad block table, it contains factory marked bad block
and block which got marked as bad during runtime.
If UBI finds a block which does not behave good, e.g. shows bitflips after
erasure, it will mark it as bad.

What exactly do you want to test?
You can set a bad block marker by hand, or enable UBI's bitflip emulation
via debugfs.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
