Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6E2195BA2
	for <lists+linux-mtd@lfdr.de>; Fri, 27 Mar 2020 17:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gb8zsdOIkMZd2+ShB9Lu3LjunNUiRSN0Tm7/n5EcVdI=; b=siTi06zxUmB6ew
	Pov51VwN9D1btvDuYH9Asdduoknh0AP3sFCc2lOHlBtVclB+Hha5FGKfl6w/DL54whZiEiUOpm+1p
	ao6VSR5wasVvPRNHwX+qGCI13sRADWffz+mJ1Gp44eIT+urMOvQV0semL4dfyWN5TesGadzSkkVJh
	x5HIrpO0CpQ+GmbIOP/IrP3ewvM76jL2QSlWzBLoGhWbSPksCJKcttgNVmYAaAs/d/iYNf8d1Uvm/
	NgcdKL6bpk0X/nMN4tLLiYhp/wksZzkbGwYUbSBLO8AmyCQLyGpHOCt/aKw8S58FeHdCIRrf4XNxH
	0FvPMW/YbmCEMc5f5YCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsF1-0004Yw-1p; Fri, 27 Mar 2020 16:53:55 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsEv-0004Yb-1I
 for linux-mtd@lists.infradead.org; Fri, 27 Mar 2020 16:53:50 +0000
Received: by mail-ot1-x344.google.com with SMTP id z5so10152479oth.9
 for <linux-mtd@lists.infradead.org>; Fri, 27 Mar 2020 09:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wlek8nW67YpAwQEVeC/FLJrQkav/43bJTmq/7Hu49cg=;
 b=od9DqxoqjebGFcOXMsYdOIZ/Lf4Vll7fxCeIQk0fSWfUDUUGpFLyU4YRTplfhNQUr1
 1yLaMtoh7zzIFe73LvQWtXgCaf2vxXwr2Av6bSogQpPCIwBi/rzXOYJeeq/YHVJS0N8F
 Ds/cfIcWlj9fFoEY1MUswrXOyu5Pd6YVRRvydhP3HLb5QRonZcf2EMGYvcbME6JE0ubi
 EPIi1wnJC3dCQzpOVS+/0CIpYGclVp32ytsTFkbSyztciHAQQXdXVuULFk4IyxwLNhyZ
 gTNWvjvxA7vzEBVyF8YZ0LKaYV0utxR0JudaLXjAH+p+GP3FpaC+aH72iVxfCau3S7WL
 bgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wlek8nW67YpAwQEVeC/FLJrQkav/43bJTmq/7Hu49cg=;
 b=cg7FOcHhRVYoJlz+Q8w8jAwlQr7P1ECDhT9jqcQA1nmovqdiW6Udrw93PKPT+rEE4R
 QArDJTQQlzFqwPBreJ5CkWyX4/wVuL0oN9+1LQpKoYXGqSAwZb39cx5Eo8x5q6Z6vxZI
 wJY/B+i2NoANnH2FSztQ78vi599ENj2Ul+4zKIE2so1ZUicyHWC0zg6vyv6WrrKJDg0t
 wGUpE9YoOvzLx1WgkmI6iRuu76Dz4F37bWyMkBLxgaVEm69vV31yj2hYuvMyaOUHkzav
 r5Zkherrg9Zt35sxXedj/gHLfc33AqrZeKbUzRiJbKwONvP5uG/5g/RTCgYGO2fuG2dd
 OPKg==
X-Gm-Message-State: ANhLgQ2NFuquLaI96MFKfGw7NYGqNslnGgQmF5ZyB3Zk/0i5mLGeVWz1
 qMduyphKfzbSMt/FTtGlXpfIpTPkHHHHPhGTNEI=
X-Google-Smtp-Source: ADFU+vvSLIXV7aB38M7LpdERmCi/GZJGZGtNczDQn0KeNOMw1x+R7PoK+KS+if5UIa9F7ZINDW3lacu2tJZML6qAWhY=
X-Received: by 2002:a9d:414:: with SMTP id 20mr11266384otc.300.1585328026991; 
 Fri, 27 Mar 2020 09:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAP6exYJ3xk46PODgT=5WAdiLDNY=9MggxyaEwov6qyDQstLj7g@mail.gmail.com>
 <CAP6exY+W+zTtEB1LmHYDnhEnPj26Y97Ld9TBAxsgX3vGDb4LnQ@mail.gmail.com>
 <CAP6exYKrAs_OpC_qkoW2cH0MxpqxDrgP2nhJGkp=2BX-6kAWbQ@mail.gmail.com>
 <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <CAP6exYJ_jzrB0D=RLXMNeegu4BwQq8raXVOMugkqzX2ZP_JSqw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com> <20200327171907.7a7ffc73@xps13>
In-Reply-To: <20200327171907.7a7ffc73@xps13>
From: ron minnich <rminnich@gmail.com>
Date: Fri, 27 Mar 2020 09:53:35 -0700
Message-ID: <CAP6exYLi0OnDd92b0uoAYm5B4x=+2h2_g+NXRnOSYaxkRA04QA@mail.gmail.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_095349_078775_990BA484 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Mika, I have to agree with your comment on parsing the name correctly,
but the pci syntax is sufficiently flexible that I expect it would
create an explosion in code size and complexity and that is a concern.

OTOH, I can think of a few options: we could require, for example,
that PCI names ALWAYS be in the form AAAA:BB:CC.D, and then the test
is a bit simpler: it's a PCI name if id[4] == ':' && id [7] == ':' &&
id[10] == '.', and we can break the id from the parts at id[12]; it it
is not a PCI id, we do a strchr as is done now.

That would mean I could just dump this admittedly ugly change. I admit
the test above is a bit nasty, but it's pretty reliable. WDYT?

Miquel, your patience with this patch as I learn how to contribute is
greatly appreciated. Thanks for the tips. My last real contribution to
Linux was over 15 years ago, with 9p, and the real upstreaming work on
that was done by others; the kernel community is all new to me.

I'm going to drop this patch and start over and try not to make such a
mess of it.

thanks again everyone

ron

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
