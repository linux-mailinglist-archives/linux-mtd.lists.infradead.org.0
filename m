Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C72180B3
	for <lists+linux-mtd@lfdr.de>; Wed,  8 May 2019 21:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzKBe0Fumxus2538nfHpug2/Adh4qXn5cWhext+4+Vw=; b=ToiTqxodyVX3uM
	MfiwgPq8uIynK0moYtoGn8gO71V0tbIC7mlTaFWS3Lw11mGJU8Bid/p8QmwN/Yr0aUvfeYrIBs/0K
	Pe0keE/4+idOOVQRoopyS9iYYuWl9d6sfZK/b8J4v7mHt2W23CXwFckk+JYvw7I9Cs9Eg5HPKzVnI
	CBlGXdLh6S6V0mR/1Bq8f2ac0TODinnBuJrHZwGzHHM/6BT52DP8sXc1fqvIARO+6bZ6sbOEcAewN
	6nc5zdKAjOpy8wPDKNR7U3CXa5vLAQ9PnloNy0yiq76KEswUBq/4mBjaMf4z8BsQIfv7DHf7b9ENG
	MtCaf6wsAjJFAJSIFGQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOScR-00066H-4W; Wed, 08 May 2019 19:52:47 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOScF-00063l-54
 for linux-mtd@lists.infradead.org; Wed, 08 May 2019 19:52:37 +0000
Received: by mail-wm1-x336.google.com with SMTP id h11so105313wmb.5
 for <linux-mtd@lists.infradead.org>; Wed, 08 May 2019 12:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oB/1thJSvfpF3k9iHuEARtLHOAtpxWNWmfqQwy8beMc=;
 b=UxL1m2dXngyHSLotIi8ABvDNL9treD6WhO/8/YC9qIIOei8rz5HqfVY7AazjZotqLQ
 PSLP+b/M293D6jaUj+beXitvkgbC4Eg+mQKYLd6321lrVoBNFg+pyU6tbAE0mpZ6FhDK
 q/U1oKb3ep5x5Zikf32ZvP0tZ5X4zvo3wMNYnoMIMQz0kj5NH7JyLNcJ4lcsM74Y8roK
 uPgBlmS8vQR1JjxbtWlmEutP8FZGU0QLchRXNs7YzBl2A1uLMgdbKJu43V2lWYyjXBUX
 ccjP2GTb14LpBsfsfLKZKufjwhDJ9bNcdYHVpv5OKuVCV15idD8diWL52zZ1GYuZpOhx
 yZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oB/1thJSvfpF3k9iHuEARtLHOAtpxWNWmfqQwy8beMc=;
 b=mvql+5Xh5UmBsK7Rq/qdh9znUO/4G2zMT8aq21dly424aQ0M2uwBb500OspmtbIWJt
 cZg+LeZkQkixdWPZocQz3e9D802ccEAVqLzdchbZ+LYA6xCrczTBLGULJztggbukkWa4
 3mI8pgbU/5cuikZjZ1ngZtrokAu+Xo+eEFoP3QUgAxyqo292m5emH3bIdoZ54jfe6Yl9
 SUBwbNTydB/HuCNvpv3nXMWJ526S2YQlLV/lnfjrLyNejS5IgIXMO7QupZrStv52liPb
 rHqwTwQU4nlfmBkvtYn8whKvdo+9M++iy7V2SwVd6fbEB+hVkvAeKnnoHo8iULuaJKNK
 VXDw==
X-Gm-Message-State: APjAAAXGSH3Ahslez/1bl2EmQ0NpugO/ReBimSs8z95ingy14IpanOei
 tTZ0v6SHyY3vOlqQ157BLQawixI7ICZ3BiqdL5k=
X-Google-Smtp-Source: APXvYqwE5SgKy3KzwMaP+JL2avwu8RoCxmdrROcUd664E2XBGvOBHkeVwxPGLSrkgLhmIMcM4oEOrZvFoASSU8i58f4=
X-Received: by 2002:a1c:2dd2:: with SMTP id t201mr45309wmt.10.1557345150050;
 Wed, 08 May 2019 12:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAK3Qp=Xr_XyDZMCoDL6fDAb58+e_Hi9ErgnT-yLbAmbSpzc8TA@mail.gmail.com>
In-Reply-To: <CAK3Qp=Xr_XyDZMCoDL6fDAb58+e_Hi9ErgnT-yLbAmbSpzc8TA@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 8 May 2019 21:52:18 +0200
Message-ID: <CAFLxGvx2K8kTiUuqpWU2L2_Z6=C5Du8bM2F+YJ2Y4Y5K=pDjrA@mail.gmail.com>
Subject: Re: Question: Appending data to a file is optimally handled by UBIFS?
To: Fernando AE <fernando.ae2017@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_125235_192464_E1F2DFA1 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 8, 2019 at 6:28 PM Fernando AE <fernando.ae2017@gmail.com> wrote:
>
> Hello,
>
> I'm working with a UBI and UBIFS in a NAND flash with 2kB pages and
> 128 kB blocks.
>
> My app is periodically appending 16 bytes to a file. I'm wondering if
> UBIFS and/or underlying drivers will also append data to the same
> flash page or if a new page must be allocated every time.
>
> I'm aware that the kernel will buffer data in RAM before syncing to
> the flash. In any case, assume that a fsync happens after each append.

If you sync after every write, you make it hard for UBIFS, and yes it will
waste always at least one "min io" unit which is a page on NAND.
You also force UBIFS to write inodes and waste even more space by
syncing that often.

In theory UBIFS could try to write only sub-pages but that's usually
slower than writing
a whole page. But that depends a lot on your NAND and the NAND
controller you are using.
That's why UBI is using sub-pages only internally for EC and VID headers.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
