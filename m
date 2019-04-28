Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F72B5E8
	for <lists+linux-mtd@lfdr.de>; Sun, 28 Apr 2019 13:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GnB5uxd+nhCgQ2zTsPsKyf+RcxFeGl8E8OaXrts3BAA=; b=q63lkMgwOVYGU6ASNnR96hf2z1
	CInwEWt+6RvYgT9A9ROl9YI5O3HyN4X65qtxAE+gbdQfXKncMfM2Fs86R1Rm0I1eGtFy0gtfK3YiS
	VURhrSSLpDDHRFBSUEdbTwCxXSU5P8b8GV+0k+L7/KCGepS52Cxs+EeM5pvNgyGyFt81zDuZcpyCZ
	B7TY7cfFPS6SbSKPJZhly7MSip0VdaGCABhyUY/pwd8WFAg3S1Nrt+DUjqRGJ9e62FArkd4zeNNPY
	N9WsCKMn1w7V0eN6CAthOd1WHxM8DQvbsQlLJ1B8gh+4cY6IgQ9ga02hSop9N7goLR886u93DVWzp
	nLrUAlmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKi9G-0003Ti-9p; Sun, 28 Apr 2019 11:39:10 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKi99-0003T9-2F
 for linux-mtd@lists.infradead.org; Sun, 28 Apr 2019 11:39:04 +0000
Received: by mail-lj1-x242.google.com with SMTP id k2so6811104lje.10
 for <linux-mtd@lists.infradead.org>; Sun, 28 Apr 2019 04:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=22YuqtK9RtwERFLjsQEkDEKPFKX0Gh6j46PPVU6t9Ac=;
 b=WtxRaaz9Xz7Q9mzS3x69f/1zcO4S4qw7OmtXelLh8XiRbzOOi6x6n7m72+kWEnCBqR
 uf4M0pVAS5ocBH2wej1bDXd35/X/27uFmULPjqROdEf/klU31J7jilokOywc8yoGrgrL
 7aICLtjiOB85Qy9DiOZ4Zpv3zrPu7bHQWrarHwpTso6rmbFb2ObNfSsafdiiIerP2zUo
 uqZPgu7vRwFKmgi707mNRqYk5R5KMxMjItn96EuSv+u1W7zuu00jvKBjWxu/RmYr/HLG
 ypcefAKNrrnpMHHGv7bIJJPkuIja3KNAhsJVNxyNwiFzry/qd3yi2hvNzw1R83U48aR7
 CE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=22YuqtK9RtwERFLjsQEkDEKPFKX0Gh6j46PPVU6t9Ac=;
 b=BYH0N1KDtyzoFZS8Pbex6Vlzq3SLCrmAt8VTfPzuAj/EiUKVjgYTQZZJSZ2bxMLhoH
 2MJPpfiJfV9T3u0e3mUct6iBOH2+c2CNldBZwHKMcnFE81+lSi//yt7ONdIVJ7IL4ZhA
 ykThHrOsl+5Q0EZiYUz/XpMr89fYBV5qWmD1vPZ3hKiIgPrStnnCZUeqt4FghyC+BRmb
 aVgjlFSLf8aJ/DFVAYnpMy7TlPWTsst3sbc1yCQ5oGDuqt47FcmuTARlK1+bF0NCp2Ke
 UFca5G+fdt1drerbH7cG+fX1xmaS9FWcLdpv2zG8Fax6nyvm5NL0pa2iCWWUvQgdO2gx
 G+PQ==
X-Gm-Message-State: APjAAAUVetWYqXmNibK5PhxooatArqip9sCI6j3xOcoCHrcKjp93xnkO
 EA2u8NAmXRsKsfMMkYKY2Ql4H0ZqlQ5MBqZmt0Yi1w==
X-Google-Smtp-Source: APXvYqycDgmTDRQ8AX+ajIjkVRYm2QRZZWmKRImyZThqvLlfB8PvxLMXdVoWPlbhMpCDnEeF0osqQs4vagzAF8y90eg=
X-Received: by 2002:a2e:9547:: with SMTP id t7mr8620939ljh.153.1556451539173; 
 Sun, 28 Apr 2019 04:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190128135449.15555-1-linus.walleij@linaro.org>
In-Reply-To: <20190128135449.15555-1-linus.walleij@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Apr 2019 13:38:46 +0200
Message-ID: <CACRpkdZpXVTYzaJgCYJN9Vw7NHtD=_KgpDeqYaeTam+sO6-UqQ@mail.gmail.com>
Subject: Re: [PATCH 0/6] mtd: afs: Support AFSv2 parsing
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>, 
 Boris Brezillon <boris.brezillon@free-electrons.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Cyrille Pitchen <cyrille.pitchen@atmel.com>, linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_043903_173064_AE39F22C 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jan 28, 2019 at 2:54 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> The later versions of the ARM reference designs use
> AFSv2 with a new type of firmware header than in the
> v1 version found in earlier versions.
>
> Extend the AFS partition parser to suppoer AFSv2.

Ping on this patch set.

I recognize something must be holding application back
as I actually submitted this for v5.0, and then resent this
for v5.1 and it doesn't seem to be getting applied.

Is there anything I can do to help?

If I get an ACK from one of the maintainers I can
ask the ARM SoC people to pull it in instead.

Yours,
Linus Walleij

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
