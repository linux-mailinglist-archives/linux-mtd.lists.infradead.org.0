Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1496DAF2E2
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Sep 2019 00:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4AZGmwPEptQRdlHTQpEpvc28yu3nBdUw5qE+vHSTko=; b=lC6ixqSiFKGS1j
	AifXD3NtRLdo8Fv0ss85XDUIuADS7LrWLiSMwKsZi4Yo8VtdPMIv0iFVkDpipqfkFRLu+VuJY47iy
	bbXuoFtAMnS0Q+jQ45LlmXcReXmhhSLPav8+aTZcu+K39nqpAONTYYqCwbMLRGBV4h7Frd5E3W55i
	T5RmLzuO0LybrtXYUJIURtTbe+2K7gKOXpvpQdMWGIMXm3Pnw42CL/8IeFpzLRiRilO6BFLCOyy0W
	tGpakMzFOnbT9sK8hrqgJp8Pu6YmIdO6i68PnILA8qtWmFio7t90ZIxUGio8DsIEUQGIc/eu/yDgX
	vMdfufM2yszfEHUZo6Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7oTw-0005b1-Aa; Tue, 10 Sep 2019 22:19:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7oTX-0005If-Bo
 for linux-mtd@lists.infradead.org; Tue, 10 Sep 2019 22:19:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so22261483wrx.5
 for <linux-mtd@lists.infradead.org>; Tue, 10 Sep 2019 15:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nBXRx5mVHWci6I1kgFy5zlBZuu5oArTugqhP9VSH4To=;
 b=WVW4+EiZTPikhA8mWWD85POMnoVIYIN3GSDFGaUoJ3/cTkSfxPsjieHMepOmXvO0ll
 nYVFncoBEitbXaZ5HDQda7CkFq7VsJHDIbKbZJGptRJwiP17M/3RHaay8Pw5anLIYAtP
 0i4tR9nL7EmWoKzl5iQKFdBuc69sIia2wh5nZinjChhsWEsQGhd2Ur4nXpreI+c5EoyZ
 s06d+SU154yFhGMHVRWFs2l6lyOWObTvSVDAZ0MJ0oi80iCnaws6+H7J0kzAGWw8kkhF
 yMyKm80GQJR/l4fyAiM8FZauZFZvAXHULgsplfdcrHXYqWFCQyZgLG6eEVGB0cTpmBfc
 xtMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nBXRx5mVHWci6I1kgFy5zlBZuu5oArTugqhP9VSH4To=;
 b=krin4CrHUMSwkGc2ThlUoqxgjpS0+G/Wf/1uQ5ZV061jJm88ogmA3debioipM8KrXS
 Y8BRkGFDqj3hR6SkRg1lLrBvEjZUW/JiOknYVS6IJBTmqFwz1Hu+elccuPDFZaAT+R7T
 rF/wKBxaCIc1sojBbhyF76BO2Yr869ecKpIOnlcSWi7lCp8Q7NiQrs2eGt5mSJZqtXnn
 UWfBHfcoD3jGhnWju7ummoX9e3NWccXDli4NZpc3cqFyq1IcoLLRfW3/VquiB0E5slPG
 7ITBUdcy/Qt6TCREkvokN18gauC8wHdAkjmYKwhs50Luay2u7Fm+H5HrGqZ8LBshvGi3
 HJ6w==
X-Gm-Message-State: APjAAAWy+gDVNdUuIv09dGQAsAnr5+Nk/jENr/ZEQvlSYcIqS59gKYTP
 0//3NWeZnxG4SgCYkOTYCchXLUbCck4ZGyJZBeA=
X-Google-Smtp-Source: APXvYqyATwYB64PHAoqvPXhoWSiffkkoqOvV20ZSR7htj9lga5zeNel2ZFU7WKXkKQS6UEvwINTv8aR5ajpu5AWx+9k=
X-Received: by 2002:adf:d4c3:: with SMTP id w3mr27547933wrk.100.1568153940787; 
 Tue, 10 Sep 2019 15:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190830154549.vss6h5tlrl6d5r5y@decadent.org.uk>
 <20190830154720.eekfjt6c4jzvlbfz@decadent.org.uk>
 <CACdnJuutzv+0nPKeizsiaix5YtYHU4RSoH-hPFfG1Z8sW_yy2w@mail.gmail.com>
 <alpine.LRH.2.21.1909100816170.3709@namei.org>
In-Reply-To: <alpine.LRH.2.21.1909100816170.3709@namei.org>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 11 Sep 2019 00:18:49 +0200
Message-ID: <CAFLxGvxRVwt0=wtKJnZB6s+VDCoGT3vsW27P2MECO999sJKAHw@mail.gmail.com>
Subject: Re: [PATCH 2/2] mtd: phram,
 slram: Disable when the kernel is locked down
To: James Morris <jmorris@namei.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_151903_489501_68490EC0 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
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
Cc: Joern Engel <joern@lazybastard.org>, Matthew Garrett <mjg59@google.com>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Ben Hutchings <ben@decadent.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 5:17 PM James Morris <jmorris@namei.org> wrote:
>
> On Tue, 10 Sep 2019, Matthew Garrett wrote:
>
> > On Fri, Aug 30, 2019 at 11:47 AM Ben Hutchings <ben@decadent.org.uk> wrote:
> > >
> > > These drivers allow mapping arbitrary memory ranges as MTD devices.
> > > This should be disabled to preserve the kernel's integrity when it is
> > > locked down.
> > >
> > > * Add the HWPARAM flag to the module parameters
> > > * When slram is built-in, it uses __setup() to read kernel parameters,
> > >   so add an explicit check security_locked_down() check
> > >
> > > Signed-off-by: Ben Hutchings <ben@decadent.org.uk>
> > > Cc: Matthew Garrett <mjg59@google.com>
> > > Cc: David Howells <dhowells@redhat.com>
> > > Cc: Joern Engel <joern@lazybastard.org>
> > > Cc: linux-mtd@lists.infradead.org
> >
> > Reviewed-by: Matthew Garrett <mjg59@google.com>
> >
> > James, should I pick patches like this up and send them to you, or
> > will you queue them directly after they're acked?
>
> As long as I'm on the to or cc when they're acked, I can grab them.

Acked-by: Richard Weinberger <richard@nod.at>

BTW: I don't have 1/2 in my inbox, is it also MTD related?

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
