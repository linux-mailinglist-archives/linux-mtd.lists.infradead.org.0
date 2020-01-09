Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E00B1353FE
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 09:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCOF1rFdGRP+eHJz34s4kOojQPx/mnZ5pMXiVr4m5ak=; b=CwI7Ny26S/1Kqx
	xRIoNEsdn6i3Xb3HuqJZRmZ/BBPSwRmGx9zJ9gkcNsOrXoeQkA9d04yKnpVMLBLsT3y7KRjTZVizD
	6p1dppH58kiVuf7IobeugfG8Uvkyqsl3O8N1Ii1+GQlAp2QQt/OOjpIMzSI4KVQWGNbPS1BAQZl3I
	g6M0OHx96oN6lXx3bOaxHCU72MDYbZVX4lEhoIz0hE87rMjq9aPtow+iqF7OL05acTVoKqvech0nR
	ddEsdJLap+5i4iwXWPG7jpOjvnDy9IZX819tOtbIN5w8gMHZWSCERQeQ9+v5fFW7/J7wBTgv4+7Qa
	ovkKknz1EpuWTH3mkrcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSl2-0006Eh-CH; Thu, 09 Jan 2020 08:01:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSks-0006EB-4z
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 08:01:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id f129so1707641wmf.2
 for <linux-mtd@lists.infradead.org>; Thu, 09 Jan 2020 00:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mM7vPg0AhQaknvqOPVsXZOVjGRK92DcXE5AgwuDYIHo=;
 b=lwAnWsv3oq7ad8CFOberR0NQ6hDV2J1HMsYX+rMrcX5IbWj7GtEJEABU2+67ir5FeF
 WC21IhRA5W+VDlCPqGR3l8NC2UMuKWlRQ9eiS3uewowKwpjmXQMzveEUG8UZXWzlclxq
 oOlFf1xm+9I7J1hs2pybUuvUUXbih+XkGK/wxooVGxnyZ2WAu6i0tb/Z2FHUoweaTBeW
 NddgWCkxkiIr+EGrNy4HzcWbbjoK5qoGvCmuTz7QS7Ye5lEROzzdbngUMBLwtKC9Vnty
 +fckvR3KTbWezTwnNMbIX2coZYqn4jglLOKv/1F9TNpK653AzshpedKWwLfH+mX4C6hq
 gJIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mM7vPg0AhQaknvqOPVsXZOVjGRK92DcXE5AgwuDYIHo=;
 b=kuxkAFiTbPX2CfH7pO9eBRG1D2+CmnAEVyRpB0wHrjZS2AOfXp1FUM9cvs3asNt83Q
 TKXDusqZ95EQB9fuu4ZAEP3+atnOEz1hWoBQw8bYHzHEc6xUJqXYXc1dBUnwjPRfSBL9
 X8m027wM7wPvtEtYzFUx1uRqQA8omhsAl+MXaMHG6F2AbIe6lf8jaoamY/c2653+q0xn
 vWLbuO1lEVIZl3/N9m5dyIXhgalK+88F96skV0trlsxBSLIOkwzd/JnrDT1CEpw70y8j
 pH+co9W54lTrJSWxA4eyDBS5grV7ky3jyUXaOaByh1KbYTmDlXHM0esFRIy0kPMX55Yw
 /0zQ==
X-Gm-Message-State: APjAAAWdV8fSvNwc695bs70LPSxvUu/rQYapC099RHbVMXysM4EeiONy
 1CaedcwehmijyrmgDaPXsQ+RzQxqQW10Ya+Ot9Y=
X-Google-Smtp-Source: APXvYqyK8tMCjb2q0F/zY/NxYO5hT8twzh58hRo/ALDAQCuK0Gvez9RnhPzksN01eRQqyasbLGmqZMOSNf7Y63vKQ3A=
X-Received: by 2002:a1c:184:: with SMTP id 126mr3126631wmb.127.1578556880370; 
 Thu, 09 Jan 2020 00:01:20 -0800 (PST)
MIME-Version: 1.0
References: <20191209212721.244396-1-ebiggers@kernel.org>
 <20200103170927.GO19521@gmail.com>
In-Reply-To: <20200103170927.GO19521@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 9 Jan 2020 09:01:09 +0100
Message-ID: <CAFLxGvwA6y2+Azm1Xc+-cz1N_jjJXY3uZBVDqGGLvc6GMcb5JA@mail.gmail.com>
Subject: Re: [PATCH] ubifs: use IS_ENCRYPTED() instead of
 ubifs_crypt_is_encrypted()
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_000122_194551_648497C9 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>, linux-fscrypt@vger.kernel.org,
 Chandan Rajendra <chandan@linux.vnet.ibm.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 6:09 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Mon, Dec 09, 2019 at 01:27:21PM -0800, Eric Biggers wrote:
> > From: Eric Biggers <ebiggers@google.com>
> >
> > There's no need for the ubifs_crypt_is_encrypted() function anymore.
> > Just use IS_ENCRYPTED() instead, like ext4 and f2fs do.  IS_ENCRYPTED()
> > checks the VFS-level flag instead of the UBIFS-specific flag, but it
> > shouldn't change any behavior since the flags are kept in sync.
> >
> > Signed-off-by: Eric Biggers <ebiggers@google.com>
> > ---
> >  fs/ubifs/dir.c     | 8 ++++----
> >  fs/ubifs/file.c    | 4 ++--
> >  fs/ubifs/journal.c | 6 +++---
> >  fs/ubifs/ubifs.h   | 7 -------
> >  4 files changed, 9 insertions(+), 16 deletions(-)
>
> Richard, can you consider applying this to the UBIFS tree for 5.6?

Sure. I'm back from the x-mas break and start collecting patches.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
