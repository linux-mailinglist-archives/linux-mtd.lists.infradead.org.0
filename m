Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925EA20A13
	for <lists+linux-mtd@lfdr.de>; Thu, 16 May 2019 16:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaxse52dOX/3oygAQdT4q+j5KkYNrtmhzMupZ6X/Hmk=; b=ipfJj0Nj1DGaqr
	QelUegOquQWuCDDnKNgvOAaX+YJJW7TqaTFhEMW3OlmBHSv0QPwxB1NWO0dqcb6PP78h6QpCgnu4M
	dEJ9hMweNp92oXepgS6MRHR+0XgXIiD9kYuvnalKy8YzK2v6NQ9faetiBxrlF5UoGrwbJ+xynStaw
	+8i+kS8HLrDlUpcXFAdf4fFVCPVmGwLv8MewHcAghdtsishgj4uXmM4ZkK9yZbbuxrl5pTap0JfnC
	u36oeiEOKfohQjfxg3srNjkoXxOiOyCR0KeUOcQDBzYe80e5RYD5jFJ2H4+wcRh97s4JvmDm2SAEh
	OnrntQ7HYH894lnyV+QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHfm-0002pX-Dj; Thu, 16 May 2019 14:47:54 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHfe-0002pA-Vu
 for linux-mtd@lists.infradead.org; Thu, 16 May 2019 14:47:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id h19so3380335ljj.4
 for <linux-mtd@lists.infradead.org>; Thu, 16 May 2019 07:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f+AY9FGToF7XfqxomfQs9FiHIqAX8dYewdybhmeUoTA=;
 b=RbjLMkPZ/l16ccEaNtAkER7DjD5jYPDaLczLmzyh01O3rbUJDI7XLPByf3snj4wnW0
 /76OSaLm1g6x/DBvxSOlNwwxYL1ULO2QwoRV3hEsQvtaG4B19CEMo20TWT9wgsS8rgum
 BScXFRwbSRFVEFH1JXOuePQxZsiabMWvw784Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f+AY9FGToF7XfqxomfQs9FiHIqAX8dYewdybhmeUoTA=;
 b=Th8+eoD5mSn5qBiDjBZIIaT9qGqirVIm09FFSza6xGuX9Bs0vbR93UjVYqHZpjNcYX
 YVbQNzhbvJhoYYvWP8G05tlqeJzHnryjJRUdMFD4ov67JNr+aQlBvKUIOQYnFaaj2Wyv
 /SZRIQRLzNNNtoIpXBKBmrQcYt4cDHVG9WS66RRjhr4fyzdgKGVIs7sekSEC6o6XzQ21
 ZxhxGblJFJTM4s8VGg7N2DDAW2MiyjX1PkFYwmYdrBGQScIX153zjL6MEK9Dl1PGa9Hl
 NwW57xLYBCF3F0276oV/FFfMdxoP3D14QdreGx5VQ/JwWw2i66bbyylD0jNDzuWiPfpz
 xFsQ==
X-Gm-Message-State: APjAAAWkfoH3mmHWxYJlFe21pMuV883O9uNP2ibbJVdrSlC1AMgizAeW
 seZA+xgVhftGUxVFcdVyfwz/3MY9MBeq4YzhsqfrNA==
X-Google-Smtp-Source: APXvYqw0hDatqMLJ9zbTJnhnTT5oC+AytbihhJlbtmmhC0PCFw0n+jOkJep+hdoIObkawWGwDm8yCxILLdub7+DGlhc=
X-Received: by 2002:a2e:9bd2:: with SMTP id w18mr554571ljj.120.1558018064453; 
 Thu, 16 May 2019 07:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <1556733121-20133-1-git-send-email-kdasu.kdev@gmail.com>
 <CAFLxGvy7B2K2AX0nSe549QF-gDMZcc5F4X0Y+yzRrnYfL9svEw@mail.gmail.com>
In-Reply-To: <CAFLxGvy7B2K2AX0nSe549QF-gDMZcc5F4X0Y+yzRrnYfL9svEw@mail.gmail.com>
From: Kamal Dasu <kamal.dasu@broadcom.com>
Date: Thu, 16 May 2019 10:47:07 -0400
Message-ID: <CAKekbeskaF90QecqArSd8xgsU3zpBMndeo3fbevRjUZRu=ZkMA@mail.gmail.com>
Subject: Re: [PATCH] mtd: nand: raw: brcmnand: When oops in progress use pio
 and interrupt polling
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_074747_032361_04C991DE 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Kamal Dasu <kdasu.kdev@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 12:01 PM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Wed, May 1, 2019 at 7:52 PM Kamal Dasu <kdasu.kdev@gmail.com> wrote:
> >
> > If mtd_oops is in progress switch to polling for nand command completion
> > interrupts and use PIO mode wihtout DMA so that the mtd_oops buffer can
> > be completely written in the assinged nand partition. This is needed in
> > cases where the panic does not happen on cpu0 and there is only one online
> > CPU and the panic is not on cpu0.
>
> This optimization is highly specific to your hardware and AFAIK cannot
> be applied
> in general to brcmnand.
>
> So the problem you see is that depending on the oops you can no longer use dma
> or interrupts in the driver?
>
> How about adding a new flag to panic_nand_write() which tells the nand
> driver that
> this is a panic write?
> That way you can fall back to pio and polling mode without checking cpu numbers
> and oops_in_progress.
>

Thanks for your review  Richard. Will add flag to let low level
controller drivers know that that its a panic_write and make brcmnand
code more generic and simply fallback to pio and polling in such a
case. Will send a V2 patch with these recommended changes.

Thanks
Kamal

> --
> Thanks,
> //richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
