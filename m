Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1018914C4AC
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 03:36:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRVbdQYS1g4bMKA1Cji+Z+VlmExMCa1MXpXPeT9dwzk=; b=RQcsWfXNENOpfK
	FcEnE8VkpmP/UM8ph7Q3rv9lv21oSSLryhNv04YcI8xaeZ+Jhnpzc0bYVnZHNNGq8XW9hdp8W51lk
	/6iChiu4x9G8iwrb7+K0KiaQHc4mJ2iD2NoAC4Ru7O6dseR6T/3T45NpvuhzzEss+IQq2x333vOAY
	uZ60fKQ9krI7iV5EsMDXfxAd+F/rnX8pH8h1Wn234XlZHR2bI7cC/ThiosqXWhlCusnGlTBgr1lKe
	BZFpXSBnA9Z1sNog3O/uD1/0M29GTNGrny7wnUEyWj0OI1z+6KbrTQ/pXC4OvREDeVm2AGPG65ffE
	wRfDxlrPI4LsnhtSfVeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwdD4-0003f4-VP; Wed, 29 Jan 2020 02:36:06 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwdCw-0003e2-6Z
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 02:35:59 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y19so10699773lfl.9
 for <linux-mtd@lists.infradead.org>; Tue, 28 Jan 2020 18:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xKaKa4v/uLKsxDJmSSJEukA8v8wjYnguys66biR+79o=;
 b=X5BcoUZt/2wlQ1NK6ysY4+Sgw9AsvgwRumxSBuD6ZSRePNHoqdm3x8xz8YZVMKBq6i
 mjE6VgrmCNUVTA6uZnAd6LxDp5WhOQczQFZSInTO6IyCkNJz686lskGkXk61lbqiuHoi
 z+E3sre49DVpJD17N8p07ANfLx3b0QveQdv4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xKaKa4v/uLKsxDJmSSJEukA8v8wjYnguys66biR+79o=;
 b=Zmtgv9+Z6IeJCUg9g1hgO5pNiROTGb8krvdXz+qdPdACDqeZWnLG6bfLOPdCUz6nLi
 uHzLwKYM4is44+lNy2LbNyOqynSdqQlByZEVPPsr9GtbPvYYDnZf6Td0LFc2Ak+KYa7J
 jAiGNc1sxa8xwI7a0A1RjKGbBptTtmCZKmPHgNiQ5CcfcYr2ltGdWzB5YFyCgXdlZoTM
 7iKiE55HQmCDZGRTBauwfGSejRZsaoF7jGPAP/mP/XwTGyWpK0BecLOn0NkMruNuW6R2
 V+s2JMHAS4VGIcUr6etemoDxLvE0X9Q0cdtWd7K2fLjuA/BuIDh3G/TTbKn1cbztzH0H
 MAZw==
X-Gm-Message-State: APjAAAVlvNGBBYKtLG8vEIJqOVICj3Np2enJrO3xLJTOnAZMctp/WqJr
 BOiMawZr4J/8k3pLg+6ozjzX89Rs0Hw=
X-Google-Smtp-Source: APXvYqxiDPs0/YbLvlrQoaObYfqpYl+jUTIoyC48riFsOLSuHqkOBKaZS9ntcUbX406U/0zfXhhkfQ==
X-Received: by 2002:ac2:5f49:: with SMTP id 9mr4100996lfz.151.1580265355208;
 Tue, 28 Jan 2020 18:35:55 -0800 (PST)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com.
 [209.85.208.182])
 by smtp.gmail.com with ESMTPSA id y5sm251206lfl.6.2020.01.28.18.35.53
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 18:35:53 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id y6so16858340lji.0
 for <linux-mtd@lists.infradead.org>; Tue, 28 Jan 2020 18:35:53 -0800 (PST)
X-Received: by 2002:a2e:9d92:: with SMTP id c18mr7936575ljj.265.1580265353277; 
 Tue, 28 Jan 2020 18:35:53 -0800 (PST)
MIME-Version: 1.0
References: <1224347843.24297.1579473209765.JavaMail.zimbra@nod.at>
In-Reply-To: <1224347843.24297.1579473209765.JavaMail.zimbra@nod.at>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 28 Jan 2020 18:35:37 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjupwymAN-aOytdtxz4EfyKH7MirmJJw40chDGzFQT9wQ@mail.gmail.com>
Message-ID: <CAHk-=wjupwymAN-aOytdtxz4EfyKH7MirmJJw40chDGzFQT9wQ@mail.gmail.com>
Subject: Re: Upcomming UBI/UBIFS/UML pull requests
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_183558_242059_DF1355C8 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 anton ivanov <anton.ivanov@cambridgegreys.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 2:33 PM Richard Weinberger <richard@nod.at> wrote:
>
> due to traveling I won't be able to send you pull requests
> for UBI/UBIFS and UML this time.
>
> Therefore I've already prepared my next branches and one of my colleges will
> send you an PR as soon as the merge window opens.
>
> Miquel: UBI/UBIFS
> Anton or Johannes: UML

Heh. I just pulled from Anton's pull request, and noticed that the tag
was actually signed by you.

That's all fine, and this worked, and I have no complaints. But I
would like to point out that it's perfectly ok to just send pull
requests for the merge window early, since it was clearly all done and
ready to go. Just make it very clear that it's an early pull request
for the next merge window so that I don't get upset if I think I
should pull it during the rc series and it's not just fixes.

Delegating somebody else to send the pull request later obviously also
worked, but I thought I'd mention this "send it early" option. It's
not hugely common, but quite often I actually have one or two pull
requests that come in before the window even opens (exactly because of
travel or other timing issues), so it's also not exactly unheard of.

                Linus

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
