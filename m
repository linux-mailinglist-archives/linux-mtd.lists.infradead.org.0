Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F423D217F4
	for <lists+linux-mtd@lfdr.de>; Fri, 17 May 2019 13:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNuizHsRyw0eNZrEg4dBj+uBYDTyRJulkKXYpC6hxoE=; b=Y5ED05rnob3e0/
	x4pRNL5HC8LhaKayGSxtUpFC7XhVHPFjEidrVH13cszoSxis9FpXce2Qmd+t7yFXK02B50ERfCu/5
	YGi+Y/O+XskUHpQyTLjsa7yFVebyocwCyxw1F/VE/mv7G/PsKCDMy5ABqwdlXIxyQ/g7fIB9vb7td
	WIPLKKvHjTWpMWemmSmFzrrmTLg5Ns95JoYnC+ZTQu4bO+4rXp4nSf7um0dgj3nrWr5uYxuTHc62B
	Ob+1mZ6nK1cJDlIiNZY2VHumiKCjL+Ct5KQipZVZf3DzTTFdW8c9ipfA6Vrg5uaFTI++UHrzZ9KO4
	kSay60frDC5D59/q+HLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbTL-0003XR-52; Fri, 17 May 2019 11:56:23 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbTD-0003Wy-0u
 for linux-mtd@lists.infradead.org; Fri, 17 May 2019 11:56:16 +0000
Received: by mail-io1-xd42.google.com with SMTP id x24so5246606ion.5
 for <linux-mtd@lists.infradead.org>; Fri, 17 May 2019 04:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CA1QgtL8vOu+blk28g43ESoyKQjrdUgm0/mMdKslbwI=;
 b=m+abuiCUQOIh/qk/pVf/2UgQvs4lGmH9qCd1ZGSbqAU43C5rMnpZZysuLCIvNqjLQA
 87UWsCglPydE4JDOUkakqnPU5kEvIdYTqG3iL0GsDlcuRtiOuy7Ar8NMVoQHztL3W+Bt
 0n1WIlfK0eKU7TwxOBwd3gLz/LCwrn/7yiRj8gr1+dqsZnmhMrOqmPkeNBJpo94ijifG
 emoszrtzIKzFdAmFP488Z0uClSgQf6Eu1EoyUUVVLG0Mst5A8+FNLjx8GwHW0+KT8viB
 T77kKAR08xTPlRd8I9Q7fUdmexzP29xTCorVjCuFTDy2mDU/EvQmsV2WbW0IuDPWklYC
 C43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CA1QgtL8vOu+blk28g43ESoyKQjrdUgm0/mMdKslbwI=;
 b=khLr2RLt79JdH16FSlWIfyPeSRi4x/9ZL3hznPBX0incaaQLQQTmQIhOtWt4qOrCP/
 hEDIV69HIi6VI+D0yTCC+MYWjKEYUN6Zsl/NvfMcuqxkmAbHta9FJH/vW4PoOBUtY9vR
 NXgzJm6oK2nZ/dSJm+nOpjmlpu548NpT/HDjuD3xELEkZS+R6fbFvuIhlmXw0Ztfo2AX
 m9kLnr4lb4odThwsYmZf5YIpRyL+B9UH7eL4JisqLPG1gjWgq3Au3+xjWCGINbrSsUZp
 vDJQKBGZbaJmFNUKVUd6lI86rH+3p1xV9dlDTuAeZMHw5Z1d7ws6SVtCbZJJKsBmU/pJ
 mn/Q==
X-Gm-Message-State: APjAAAWK7PiLSXh0ZfCQGt6uSWLRiy35j6vKhqOuU7u22F1Zw/1GjhtK
 8pN4B+mWffP+0mcZrkV0fcaVCIjf/i89RtUAApk=
X-Google-Smtp-Source: APXvYqzbxd/LhE2W1VznV5HXbB0SgsNd3x8iv/pmdPHmijU0/muzRSAM0zIjA7vRy7qKVFuYiijaQdNgZJpAJyC1r6s=
X-Received: by 2002:a6b:3b88:: with SMTP id i130mr16477327ioa.21.1558094174033; 
 Fri, 17 May 2019 04:56:14 -0700 (PDT)
MIME-Version: 1.0
References: <1558024913-26502-1-git-send-email-kdasu.kdev@gmail.com>
 <1558024913-26502-2-git-send-email-kdasu.kdev@gmail.com>
 <CAFLxGvyZCpKthJevFHjjBQXo=j5f-FUip0MAsLy0HaoJzLZ2rA@mail.gmail.com>
In-Reply-To: <CAFLxGvyZCpKthJevFHjjBQXo=j5f-FUip0MAsLy0HaoJzLZ2rA@mail.gmail.com>
From: Kamal Dasu <kdasu.kdev@gmail.com>
Date: Fri, 17 May 2019 07:56:01 -0400
Message-ID: <CAC=U0a2UxMG2SuVCjv=TLzMs7Dg3yqJdxW6ft2tSQgEKj0C6ZQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] mtd: nand: raw: brcmnand: When oops in progress
 use pio and interrupt polling
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_045615_060259_4CF1F3B3 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 4:12 AM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Thu, May 16, 2019 at 6:42 PM Kamal Dasu <kdasu.kdev@gmail.com> wrote:
> >
> > If mtd_oops is in progress, switch to polling during NAND command
> > completion instead of relying on DMA/interrupts so that the mtd_oops
> > buffer can be completely written in the assigned NAND partition.
>
> With the new flag the semantics change, as soon a panic write happened,
> the flag will stay and *all* future operates will take the polling/pio path.
>

Yes that is true.

> IMHO this is fine since the kernel cannot recover from an oops.
> But just to make sure we all get this. :-)
> An alternative would be to block all further non-panic writes.

Capturing the panic writes into an mtd device reliably is what the low
level driver is trying to do.If there are non panic writes they will
use pio and interrupt  polling  as well in this case.

> --
> Thanks,
> //richard

Thanks
Kamal

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
