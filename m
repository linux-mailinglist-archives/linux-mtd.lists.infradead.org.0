Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACDF1092B1
	for <lists+linux-mtd@lfdr.de>; Mon, 25 Nov 2019 18:22:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62bTKQZOAMFFN/j/2np34qqliXtPeuPa0Em93N4WU4Q=; b=YsARJMuQxIaPfr
	Q8kTxtgRsa6yZppoMAVw6j712p8LxDIn320TO0mBjhI/lSy4XLL0atWyBZWog6LYUIxFhVsYL+1PP
	6wONA73Yr4N5JA64BdwDrOPEIs5fU2ABqEIxB2m0HfghUJ4V4gTJdLa74URZz1mZiDpwL334CdxN6
	WXOwavFL/1zMAqemADup+spew+QrCMYGgDDyTs6RU7N6ylaXVmXMMEYlNDOCc2DBUykoH4keLDUGN
	a19GH73xtacKdqRHgPdKu6SWSxqwFFSaiHHDJbEL0DP9PYI2M+jZ4JlrkTQGhhfjoJPpNr/jNS45h
	pnfQz9dgWYX1o0jfKqlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZI4K-0002Jd-S8; Mon, 25 Nov 2019 17:22:36 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZI48-0001zR-SE
 for linux-mtd@lists.infradead.org; Mon, 25 Nov 2019 17:22:26 +0000
Received: by mail-lj1-x229.google.com with SMTP id n5so16806430ljc.9
 for <linux-mtd@lists.infradead.org>; Mon, 25 Nov 2019 09:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cAMqxFzxhaaoUOLDwaNdLDHw8ZhSMt++5eiL+0JtPMI=;
 b=YUw+xNbVjtbzakpjh4DsPHSt7JTcB5MR8oaF91BML3+sFSVIn1gsVmHlegxlm+iYsz
 zTUFXc5e6sbik1XUIo3aSwsijefMXGLMqMsxT0ZXA/K5sZfv0NXpgr9lZZliXpwH2jfC
 le9pnB+zV4sz5oCM6jSjUXcpwKX+3fh/JjyhDpueSx7EgztzSkvmhJbLwVS/JzymYcfe
 dpQgiy6yZ4xoG9unWOYbfl2FtAXyKno8n/3CnH6Xr3bR4Xo3BrXC+fDXjAvOgCqTeSD9
 7+x6buoCayEEFntP9SLGJhaPMSEQNgfWruGNeUHW9O3HNTqan9EZafMIEPq1DPoeBHMp
 f9sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cAMqxFzxhaaoUOLDwaNdLDHw8ZhSMt++5eiL+0JtPMI=;
 b=m+712ZCbV+sC7QYlvsu9dAh9CGcjWMZ13gMyTK8VBv9q12Ts2p7pGQakYR3oToXJRH
 CT3UCVx3BrrR/3ptXFNNQEuPKgPTJl9ezPmQBPOJmfA2GoIAt1f5Z2FkBw740zSvnceJ
 cIAnw91B/e0y4w+we+nNq+2VSyucgDvV2yNGY+ML6ZKztEi7ejypr6kV5npXJSlHPhm7
 UHF21XdZMwti+PfCIKRPOoaK3M3cmMsLrpZ/Q7UgTYY50ZgK77Z5Mth6mFMe+Ptg69SV
 nV89JrGYuRwZz7bKvJDMnLvbwqiy+IshsfInZG9LkzpWDDy0y723RbdKSW2ouwy/YUlL
 RtYA==
X-Gm-Message-State: APjAAAV0tgbZp3Ufg51trVMMNO56ziORiRhlErsAinay8Q4OJbGAmzWm
 fmpo38STooH7EKi8hMhPZY6sbp2ezUaMUaFM3Vg=
X-Google-Smtp-Source: APXvYqzPvxu4ptly4uKE/wCd3UiaZnvP0Kn7ASuFkxgG5Rr3QXnct44mrwzZ9v/i2dbg5qy6zZUXQc/tlTfoTcEZvFI=
X-Received: by 2002:a2e:1f12:: with SMTP id f18mr13731605ljf.11.1574702540846; 
 Mon, 25 Nov 2019 09:22:20 -0800 (PST)
MIME-Version: 1.0
References: <CAOfSrV1CNn6EpPkAkP8F2VQUrit_B-t89sSxW=08zyKVOdt9AA@mail.gmail.com>
 <CAFLxGvziLKNA0gcPo+EGwfpuv6Fe6=sNOfhEa1DR7sN0oOxzMg@mail.gmail.com>
In-Reply-To: <CAFLxGvziLKNA0gcPo+EGwfpuv6Fe6=sNOfhEa1DR7sN0oOxzMg@mail.gmail.com>
From: Otto Blom <oblom586@gmail.com>
Date: Mon, 25 Nov 2019 09:22:10 -0800
Message-ID: <CAOfSrV0ZuG5qz0aW1bU30iZ2RX2vi4Y5aYF128XjkRUd1h+EhA@mail.gmail.com>
Subject: Re: mtd-utils io_paral test fails on NAND
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_092224_940236_D9135216 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (oblom586[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oblom586[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Richard !

Interestingly I had flash_readtest running in a loop the whole weekend
without any errors. Although this test does not verify the data read
so it could point towards a controller / driver problem. I'm in the
process of upgrading the SDK from 2017.3 to 2019.2 to see if that
makes any difference

Thanks,

/Otto

On Fri, Nov 22, 2019 at 1:53 AM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Thu, Nov 21, 2019 at 8:54 PM Otto Blom <oblom586@gmail.com> wrote:
> >
> > Hello All !
> >
> > A couple of updates on this problem. Turns out io_read also fails in
> > the same way as io_paral - A page of data comes back as all zeros.
> > Interestingly I added a retry option to see if it is a read or write
> > problem and turns out every single time so far the data is correct
> > when I read it a second time.
> >
> > In summary when I run runubitests.sh it passes about 70% of the time,
> > io_paral fails 25% and io_read the remaining 5%
> >
> > Any recommendations on what to try next ?
>
> Test one layer deeper. e.g. flash_readtest.
>
> --
> Thanks,
> //richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
