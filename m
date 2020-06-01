Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893461EA441
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 14:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMT3Cl8S5obXEMv0OeoEVtmK51ZdkbSUA96ZlB09QK4=; b=VjcAPpwf6Fk0hk
	uHFe/E6COy/j1VxgY11dqJRgfLQc/2NQlPqDOwWT777MMBy0pS5uHc2WOv+Aic7r9DrLbDktSkwbV
	4ZmpBxfhXbCzc7c64dg56UTDEssTpeNQyTWSVFzRL6lmqfIkHrakfvFIQQKnHeFg52gM4NfJVlIoI
	2/Ma49MR0Jdq3fg/o2B19kdRpmD1veRvh76FbKwf1RVF55ChOMRuWqLK4W2PUyq8R/TKd9HBj64P2
	b4+WmH4VNIjaQ1v5Dru72Sk6/NuSUAjb5hpVToCBSulcExCKbivs6Qn0fL6kJkOw7IHDdsyC1EIPJ
	XoL2tPI2mwm6RyYa6yEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfjxQ-0003yD-F4; Mon, 01 Jun 2020 12:54:24 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfjxK-0003xD-KM
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 12:54:20 +0000
Received: by mail-vs1-xe41.google.com with SMTP id j13so1537839vsn.3
 for <linux-mtd@lists.infradead.org>; Mon, 01 Jun 2020 05:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jxOGOTlnKggSgjQN9iuwo59FH5ZZhrFmRgyUJCajkQk=;
 b=Bq93oX3H0MjyO4jQyEkH9OcwjHBLYZnL9ZkdIUgGiD2zEtJ1qK0jZfP3DG0e8CJQlO
 bgfbm+qCqMxOirDVLMp1k4BBVElUNv9JiPkiek0ywTFBJvEIBah7KJ7xDd99B2kUBKTZ
 hFfKQKaVKU7tJtXSjB8K9jBr7SS+heDWhxm51cnPJNMVbqtZhmwoBeunp+3HCADKUblv
 RNP/O2BXpIkljeEhQU+5kOzrrlVmMtmAsBEuowHJbg1/ITGbH4826WnStPnVlwGlYprb
 lL9xn7KDoDFQc5SBHPURx2QEPsnWWhun/D4ziej3vzv1wN8OmlBoh05lGP7hGtbQwiNG
 aDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jxOGOTlnKggSgjQN9iuwo59FH5ZZhrFmRgyUJCajkQk=;
 b=puCuHHbex0ra4EM1oUsvD680W1C1SKM4dhVSvXtelSc0c+gWsa0FSSK3/OdBpRNmDE
 kYAhB9WhBjEr7OVBG/x+L8XxA/t3mknrxKBl+QGLJujtwjfxerPt6vP7gaDAZd4XV5sN
 ksVZHw+OHjlequHZY7tGRApGuE6JcZNW0BVbhH2CFGbS1h53niAe+U7vg5zkZkkIAs7r
 XjgmY36sCemJHPWPqDDdOMvzcqxnPC650m7e73VUraZ7r1iGw0qPS5CCVfoCXv8XkQ1X
 oKNCP0QOjJPGy2wDgGxDmO+MpPaBFnqAteIviDX4LnLNvVern2tpCiGf9EJrRbuoCmRI
 YgaA==
X-Gm-Message-State: AOAM530CQW2mMBvJNODDLpEIn2ktT6EgcHk9VYus0x3K+rKPW0htFB+q
 AZAy7yKIuRjSy8DhIduUZe5FgXleeDKNrHsTO6pTWQ==
X-Google-Smtp-Source: ABdhPJwensK4OmZ1cWNU2F/cG9IQgr3JCJdS9trt1igpOZBMncCUR0zvXSmGHNQzDqH6kP5RIwzLOU86cbFcsM1ehlc=
X-Received: by 2002:a67:be05:: with SMTP id x5mr13037457vsq.35.1591016056212; 
 Mon, 01 Jun 2020 05:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200528081003.238804-1-linus.walleij@linaro.org>
 <20200601074957.GE1181806@T590>
 <CACRpkdYL4-Z=kaS+RfniVr=Sn-yOf+=CKMJDsn=eTK3atmGohg@mail.gmail.com>
 <20200601115818.GB1190838@T590>
In-Reply-To: <20200601115818.GB1190838@T590>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 1 Jun 2020 14:53:39 +0200
Message-ID: <CAPDyKFq2paDu9ogEFh6VXWq8___FLeEaNyBWhkMSdpZYpEytQQ@mail.gmail.com>
Subject: Re: [PATCH] block: Flag elevators suitable for single queue
To: Ming Lei <ming.lei@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_055418_735639_9F549B67 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <damien.lemoal@wdc.com>,
 Paolo Valente <paolo.valente@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 linux-block <linux-block@vger.kernel.org>, linux-mtd@lists.infradead.org,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 1 Jun 2020 at 13:58, Ming Lei <ming.lei@redhat.com> wrote:
>
> On Mon, Jun 01, 2020 at 01:36:54PM +0200, Linus Walleij wrote:
> > On Mon, Jun 1, 2020 at 9:50 AM Ming Lei <ming.lei@redhat.com> wrote:
> > > On Thu, May 28, 2020 at 10:10:03AM +0200, Linus Walleij wrote:
> > > > The Kyber block scheduler is not suitable for single hardware
> > > > queue devices, so add a new flag for single hardware queue
> > > > devices and add that to the deadline and BFQ schedulers
> > > > so the Kyber scheduler will not be selected for single queue
> > > > devices.
> > >
> > > The above may not be true for some single hw queue high performance HBA(
> > > such as megasas), which can get better performance from none, so it is
> > > reasonable to get better performance from kyber, see 6ce3dd6eec11 ("blk-mq:
> > > issue directly if hw queue isn't busy in case of 'none'"), and the
> > > following link:
> > >
> > > https://lore.kernel.org/linux-block/20180710010331.27479-1-ming.lei@redhat.com/
> >
> > I see, but isn't the case rather that none is preferred and kyber gives
> > the same characteristics because it's not standing in the way
> > as much?
>
> Kyber has its own characteristic, such as fair read & write, better
> IO merge. And the decision on scheduler isn't only related with device,
> but also with workloads.
>
> >
> > It looks like if we should add a special flag for these devices with
> > very fast single queues so they can say "I prefer none", do you
> > agree?
>
> I am not sure if it is easy to add such flag, because it isn't only
> related with HBA, but also with the attached disks.
>

In general I don't mind the idea of giving hints from lower layer
block devices, about what kind of scheduling algorithm that could make
sense (as long it's on a reasonable granularity).

If I understand your point correctly, what you are saying is that it
isn't easy or even possible for some block devices HWs. However, that
should be fine, as it wouldn't be mandatory to set this kind of flags,
but
instead could help where we see it fit, right?

Kind regards
Uffe

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
