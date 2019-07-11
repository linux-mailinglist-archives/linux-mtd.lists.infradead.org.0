Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F546545E
	for <lists+linux-mtd@lfdr.de>; Thu, 11 Jul 2019 12:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHS9/uBgBledU6MBrFSH17mKRNsu7Wj6lM3beHijdPE=; b=rugNbLbjiyapVD
	q/Zw/u0DiCdkO1Blk7iHsAQXU7BFR0BDkMjNHV+rYk5NP0azG8W9ILTgjecesbSomvEBV/izO832o
	d8UNyTMJSaY6oTseOXjIIRWHDPp9rCeMv5bYVjwDLYKwnaf4LqsBdsPu6oajsn8B8ZN0rm0qGr3ph
	WR9+8IHI1kFfoFufvfEVZ5qMLqK3DL4nc87qB61+JvYe4xFtTr7Wp7wyrTqrBdCgz78ppDenqDz2q
	8JpJf98iLsO04bU+5lZ/G1LPIWK+meacG4pu7A+Zs+r0nh4geSiUXEJR5XP6Dx3JRkaslZNxjLec8
	PaJVF+e62EYB3fWlyaFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlW83-0007q3-W0; Thu, 11 Jul 2019 10:16:44 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlW7p-0007pI-A3
 for linux-mtd@lists.infradead.org; Thu, 11 Jul 2019 10:16:30 +0000
Received: by mail-wr1-x432.google.com with SMTP id y4so5669542wrm.2
 for <linux-mtd@lists.infradead.org>; Thu, 11 Jul 2019 03:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qr9Fe/npS4Nrn95ALajxLM/p1wcc1MrURM6tm5BuTw0=;
 b=OCelZOUv674/I2Cou2qn0VmK2ClFNar/zwFGMDFuNK9aigMaz3b8kN4AVac/NF2FRt
 MmxMwKpJKv007sdKzdd82kyWIIasZv97FYk6s5Vu2HfSWoANUTFRW3olxnD8vR/44B9E
 QgkUXD1x9lfcgYgGQpWTFuwcBytv8T2RXosz2iHE6Sa/VYwOxx8JrDU8OFGz+tqfLj40
 86kYvFNxjXxpkmIN+w5CoQGU639SCIy4Jaq4juFatO6/KpzFlGANXAYqGNveXw8KipCF
 gZYMQX/nCYrStp7h3qq8VvMYWQkpWU11WzRpr0g69fkA/Bg/kEfoOlpipuqnmJ2oAp22
 sc7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qr9Fe/npS4Nrn95ALajxLM/p1wcc1MrURM6tm5BuTw0=;
 b=klq6o/CoI8LsiYmJ3i63qXZxplSZfm1+vmC8qa91d7+7XR8/kM9uhDivpTvGXQAlF5
 zdQ6rRziGtDdHPvzqylp1Ll9Ak0YAZ/U8ucsDp1V4q6nsJLTrBaGxSNhgDC1h28O3coT
 LJinbqS3FwfRyXdN3SfyGS8xU5WJAuII/zzyCPO0vAVxUEnwA1gqvcHGMygZLJdjGuaA
 UeAQ24x+RFsz+JejhDrqi/frcZ4mXacAuNL4rBrC6dPm4WzDHTpf2LFd7XsxtsAyVoy4
 S/SHvx0GIDwxws15eG7EUtNCUH/z6evzBa/Q/LyGaje+vR7+nNfurYXi5l04Sl7odnt5
 g66g==
X-Gm-Message-State: APjAAAVasmzumFKEIrSP53uZ8d+67lncrovR2CAVuxo9D8d+eKBiwdYr
 /bNdu66v0uNiYM9nAE6PX+lFk787wmov1R9sL4k=
X-Google-Smtp-Source: APXvYqzLirgT8zFRqy8JMfNCFw8Vktoc0FdVJY7wg5tPCVngTcaq61+UxiJM3p8fMbIKB0f5Kx+f4XKcOSibW91y0fQ=
X-Received: by 2002:adf:ecc3:: with SMTP id s3mr4339305wro.306.1562840187390; 
 Thu, 11 Jul 2019 03:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAMk-x8NpDDjqtJQ0WqqRcggQxBp3uu7QbQET0m019LoG9OSkvA@mail.gmail.com>
 <CAFLxGvy=iwwUbS8O1xMAtMZYibzQ+vbft1ZVpg9erR=S1c8s2g@mail.gmail.com>
 <CAMk-x8NfGfXZ6c0QV9kVO677PSo4gmHCgPKV=7_iz7HYX6wYEQ@mail.gmail.com>
In-Reply-To: <CAMk-x8NfGfXZ6c0QV9kVO677PSo4gmHCgPKV=7_iz7HYX6wYEQ@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 11 Jul 2019 12:16:16 +0200
Message-ID: <CAFLxGvwSKVxi=nqnrniDpZaK_5C900traLW46OZEC5ZUw+dEGQ@mail.gmail.com>
Subject: Re: Available space loss due to fragmentation?
To: Ben Schroeder <klowd92@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_031629_374408_2FFADEED 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

On Wed, Jul 10, 2019 at 5:18 PM Ben Schroeder <klowd92@gmail.com> wrote:
> Thanks for the reply Richard.
> I just wanted to reiterate that i am using SPI NOR Flash, partitioned
> in an A/B scheme as so:

Hmmm.
Did you create the rootfs using mkfs.ubifs with a different
compression than used
by the kernel?

> I am not sure the garbage collector will improve the available space issue.
> Regardless of the UBI being mounted with sync option enabled or disabled,
> the issue persists. Even if i allow time for the background thread to run.
> The issue seems very problematic when considering the fact that i am
> downgrading the filesystem, patching files to be slightly smaller size
> than before,
> and i am still running out of disk space, regardless of how long i
> wait for garbage collection.
> On this regard, i will stick with your answer that it can be a serious
> challenge if all nodes are packed,
> and there is little available free space.

How full is the filesystem btw?

> Could you please clarify your answer regarding binary patching UBI Volumes:
> > Yes, you can alter a dynamic volume as you wish. But keep NAND odds on mind.
> > So you need to replace whole LEBs.
>
> It was my understanding that because UBI keeps tracks of bad blocks
> and erase counters,
> so that overwriting an existing and running UBI partition using a
> binary diff against a newer UBI partition,
> might cause loss of that metadata, or even corruption.

You need to operate on UBI level, not mtd.
You can open /dev/ubiX_Y and ask it to replace whole LEBs.
UBI will take care of erase-counters and stuff.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
