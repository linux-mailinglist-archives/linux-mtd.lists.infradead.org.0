Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2840513B099
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p41QkJHPsGZWC8lSN5K2hc57FQvYezV+573lfIK7HwA=; b=VUm7TTzyzQMkDW
	cQZAl6IFXXIAclBH6Lb6FyEnt4YPwSegfys9Z2QtrupF7JhgZbrYejm42ik8lvm8KGDYWvzmyTI8C
	eldalznEBe+DjGqRDy9Hvl36aflmJorWwjH8G0FgyXGim0B1c1Ahh2llndpzRvbMprjI9UJqzqJJi
	dYpsTGD8AFEkBsdXDYsjl7NAPjBvfN3z9i/C0xR5Jbm9JuIEzTGayPiWGWRU8gWh0uYz7DxVoz1PZ
	4AagrarG26pG6xK/g6vfxKjSEzZgnJQUR8vGpPMHZi46Kgw3WJ6hrwRBq5T88inY9qh8B14kxQ3Mj
	M/ui/KTmW8EiIoeHiVNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPiy-0006JN-FC; Tue, 14 Jan 2020 17:11:28 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPhC-0003sc-7c
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:09:42 +0000
Received: by mail-lj1-x243.google.com with SMTP id u71so15163344lje.11
 for <linux-mtd@lists.infradead.org>; Tue, 14 Jan 2020 09:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bv5gJKdnZT6X63j2KLe3y/Rw6sbzysamfEdPUwWvhZ4=;
 b=bdWJez/PvRa7Bg6zk5RTeKB0pnCa3AeQDZvLjVbwSLoN74DDJgtBiG5pyoCsjGyNxz
 6jEk3JVvE6PPkTTN+nKkT9wJDIMY0PTAK4mV5OdksAucCZoPMFM8i2kW4tpWH66UKu8T
 B15IElH5UKt9Uma0UBstyAQdhI6UtLYHnxw4lCewxXZ7HyMqk4NSaF1k1EJyTIUrqMEZ
 /Q5rcEsi5YGm4k3EVOR3Wv0pI1Jpw23igzWH2FmDyyuXAJQYok3c5Q90I4ddECSa0yOc
 asipPQCmV0G2cwm0Fo3QnAc/yX/OlRf/6R4frY4jFli91VCnA2EYsQ6TAKvETVDu8gBH
 YRrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bv5gJKdnZT6X63j2KLe3y/Rw6sbzysamfEdPUwWvhZ4=;
 b=hFy9TDDbpzwcdwPArM7rLo9qteJAsHeZKIyEgC8EiGc0SCpb1VZybc9FE8gMcuB3PE
 doGLcYkLl3A0bCqWXv+3gXAQahKAhzqX9hhZc76cW2CRBUPxhcDwv9g4437GUiSAYlfO
 UL7kPpSv1+GPtTK87W3nK5rVkXmPTS7rprTaKh8iRhc+9PSEEklKlZ6llr0XzT27LsxT
 F3vVl6+fSw+qz4y4uAvf7Gt3b3LiuD6rfXMpaSJwp5SvSZPl86nkKChaWD0zAtKud1tv
 M2qmCvuT3UjVvZp93cP3wiBgqm8Bbvy8lCMtXMHyfjcLFHNNFepGX/OirnIVlxUFe0vv
 +cFg==
X-Gm-Message-State: APjAAAVW8i6jKi2z+JujcNXcOT6wq6okGJLpdx3x4a10B/ksmIa5OHF2
 l7vdDGvXgbbhyEdGwzkTYKqnPInbsFM2Q4j1Sl8=
X-Google-Smtp-Source: APXvYqyHJApzuHSB0btmCtN4nkmDgLyk4wPciMEd5bQNTnE7S9mQkS0SoBuYVAvskMVIezD1l2ySxJfzsfgzLy6G7ak=
X-Received: by 2002:a2e:9cca:: with SMTP id g10mr12686433ljj.258.1579021774885; 
 Tue, 14 Jan 2020 09:09:34 -0800 (PST)
MIME-Version: 1.0
References: <20200102130826.170647-1-esben@geanix.com>
 <20200114170354.918-1-miquel.raynal@bootlin.com>
In-Reply-To: <20200114170354.918-1-miquel.raynal@bootlin.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 14 Jan 2020 14:09:21 -0300
Message-ID: <CAOMZO5BvO+rSqc8pPkzC=dEa1SkokeDNtgK=W87amWsOUODBgg@mail.gmail.com>
Subject: Re: [PATCH 1/2] mtd: rawnand: gpmi: Fix suspend/resume problem
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090938_285004_14D613F2 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Esben Haabendal <esben@geanix.com>, sean@geanix.com,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 martin@geanix.com, Han Xu <han.xu@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 2:04 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> On Thu, 2020-01-02 at 13:08:25 UTC, Esben Haabendal wrote:
> > On system resume, the gpmi clock must be enabled before accessing gpmi
> > block.  Without this, resume causes something like
> >
> > [  661.348790] gpmi_reset_block(5cbb0f7e): module reset timeout
> > [  661.348889] gpmi-nand 1806000.gpmi-nand: Error setting GPMI : -110
> > [  661.348928] PM: dpm_run_callback(): platform_pm_resume+0x0/0x44 returns -110
> > [  661.348961] PM: Device 1806000.gpmi-nand failed to resume: error -110
> >
> > Signed-off-by: Esben Haabendal <esben@geanix.com>
> > Acked-by: Han Xu <han.xu@nxp.com>

Shouldn't this one contain a Fixes tag and be backported to stable?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
