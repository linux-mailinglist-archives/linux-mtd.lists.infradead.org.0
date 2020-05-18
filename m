Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1526C1D799F
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 15:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQJ0I0+KvENFRi0bv9dS48rHl72EL45aAd8pLhAZ5Sk=; b=Hh4OiZDXkFqWoe
	9BKPw+iZRgQA/wwSMAlRpVsj3lkP4qA8I85R2oQra4K9bK7SkNXhMvJ+HX5X2IWAT+cIYEt3Vf67Y
	FmoPu7vXcilh+uDT+8axqaWnSFrNSItiLzKxdXsiTJl3GIOG0emM/zyclzo+Pxg0RnPCJs1d9FIS/
	NsFkPSSn5sNTlghUPaHAEmbduU9mJKocc9L/awfROinYEA6zfIo1/ZM4NL1T9RH64dEe7voIdPJfa
	mbfLmNbwymuhzT0hRyJCHMo8wNCSvOBfpeVf9l/xLc8nOOUBYo5NUVfwJJht/iIa/vWBywn39K3/c
	AefiUmp7En7J/O/bBvQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafh4-0007cJ-6l; Mon, 18 May 2020 13:20:34 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafgs-0007ax-Tx
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 13:20:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id n18so4935927pfa.2
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 06:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VOhtb6aDUYF/bby4eFhEdjPKdJJNHZhrs2dy1zRqvRg=;
 b=rDsKryn799wrGML6USURKvFtsAV/uzTijzNVu9hI6FTQEj3AFhZ911irHK3ovzhsUH
 gY5LA7X6RURa29N0a9uH5OFLBvFxKgmCVL+S2LHar2ZloaGB+HW7AjVNvR4EFgCBxpsy
 po8m+4EEsdKOq83PhP0pKwMOFemPBi2NghEI8xaASNmmmpuisFOXxp8CYt4r9RUzxxu1
 M3GB8LGBpgcFswMHRmJSEf6wc8sgbA4QBO4WBLxXI/N36soCP3yyMdGiZf7r3pEYznqk
 6vi0oRLO6oAzTU8/YQKG1+FHZVrR4xGNGcqOGbViiKsPYwbG3i5aRhnYKp6FmwbGWmsi
 ut+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VOhtb6aDUYF/bby4eFhEdjPKdJJNHZhrs2dy1zRqvRg=;
 b=sFblVHKEPqqGbZdTybM52UEaV4I13w1xLDrhB6FDKrMbgSAvidZ2tQlgesczv3QX49
 TGmZaL9OXCBMSogoes8115x8NJHurY/WQl63IT06uq1Wlw5/crdegBKHtehRIJV40Gto
 afna4t7jeoUQdwIBnLwF6D8Lb97H7trfutgiHo6aHtMHqV46HGi1X4qc8pQXGKaotQ4p
 DWj4HAk0Ugrkd24kTxFdCmsJwontFEveanLI6UdmI0sc8cx0N82vgBTbmmJO8/aGTJur
 ODnzOjhyCjxxNCDa6vDP4JgLsADEub9yuXFbpg0qVNtltbxSkMOkz+LO7//Bn3z0thRQ
 pXZA==
X-Gm-Message-State: AOAM533iiHFhlR2XoHV5LPxG4Hn6T2Rv7AziODvmxw9arV8+R3fzQOgm
 K1kE6/tS1iXxK+sm/70YyxSMZ3Ol/ITMt5adIWI=
X-Google-Smtp-Source: ABdhPJxEWo37sbtLGrnXVQllcXNP02GCyiWRVMGVtQCaOaZDXATQdRF9Fzdajl4gBo0tRari+NEpX4OkjNg1wYKmxcw=
X-Received: by 2002:a63:1c1:: with SMTP id 184mr15312040pgb.203.1589808022426; 
 Mon, 18 May 2020 06:20:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200515105537.4876-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <202005152142.AWvx4xc5%lkp@intel.com>
 <CAHp75Ven9q-6dDYtP_uXigeS_r2uvpUZVR5Mh0RdEd36MbTG+Q@mail.gmail.com>
 <CAK8P3a3RKJo-C5=19oAppx212s7T8NdnKJVmkj+h=34a8aKMNA@mail.gmail.com>
 <5180e734-ff56-db5a-ab49-8a55cfa2f2c0@linux.intel.com>
 <CAHp75Ve_XjvvGBEQyhy=qVVJMFS+18j3aKxNxSQpGK5qJmzfBg@mail.gmail.com>
 <CAK8P3a25GbMwbtvkxgmuGss6nEfAW4_vVbOXPxOYuDOaU_zcjA@mail.gmail.com>
In-Reply-To: <CAK8P3a25GbMwbtvkxgmuGss6nEfAW4_vVbOXPxOYuDOaU_zcjA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 18 May 2020 16:20:10 +0300
Message-ID: <CAHp75VfFsdjAT0P4m3O=VQ1e_L7cVyQx6HB7MCN+G_XcFisqZQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] mtd: rawnand: Add NAND controller support on Intel
 LGM SoC
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_062026_342802_4DA54085 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Anders Roxell <anders.roxell@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 masonccyang@mxic.com.tw, Vignesh R <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 2:57 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Mon, May 18, 2020 at 1:43 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Mon, May 18, 2020 at 2:39 PM Ramuthevar, Vadivel MuruganX
> > <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> > > On 15/5/2020 10:30 pm, Arnd Bergmann wrote:
> > > > On Fri, May 15, 2020 at 4:25 PM Andy Shevchenko
> > > > <andy.shevchenko@gmail.com> wrote:
> > > >> On Fri, May 15, 2020 at 4:48 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > > > iowrite_be32() is the correct way to store word into a big-endian mmio register,
> > > > if that is the intention here.
> > > Thank you for suggestions to use iowrite32be(), it suits exactly.
> >
> > Can you before doing this comment what is the real intention here?
> >
> > And note, if you are going to use iowrite*() / ioread*() in one place,
> > you will probably need to replace all of the read*() / write*() to
> > respective io* API.
>
> The way that ioread/iowrite are defined, they are required to be a superset
> of what readl/writel do and can take __iomem pointers from either
> ioremap() or ioport_map()/pci_iomap() style mappings, while readl/writel
> are only required to work with ioremap().
>
> There is no technical requirement to stick to one set or the other for
> ioremap(), but the overhead of ioread/iowrite is also small enough
> that it generally does not hurt.

Right, my suggestion is solely for consistency. It would be a bit
weird to see readl() along with ioread32() in the same driver (in case
there are no differentiated callbacks specifically for different type
of IP).

-- 
With Best Regards,
Andy Shevchenko

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
