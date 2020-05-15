Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31841D5089
	for <lists+linux-mtd@lfdr.de>; Fri, 15 May 2020 16:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXCZ/Hzn4GfZjK2gQ3+S+0u/p8SknVsRGSuAdPRBvJo=; b=MSRIq16XGjxz9n
	GZeNCAZ+Y34QPBXzZtGHCpWxXITZn1YIJmsCv29oVeTxP3Wb3fZz93n7NSLx1Pdz14bmlt1FkrHRy
	8pMPRe96vvaWGaObt1WQExaCxhczOiWgb6YV5TBE7JBCcMf2itFXESQoWB0ycbVjH6AvZgLOZyAHB
	ZpZkDauEFNY1wDAuIkkfSUkgFHXgVRu7X8sX1HqPePIFfPisXJZPOn2yqzqjaMdMRPnRaIDfC24EE
	fdG/JOa7OK082WzDYXYru6EgWigkljDvY0TDkxFONt7xegLTY+mRuv4pRMLsmGAod5yttiTaGtHp1
	6svCtPdK/6518Gb9ZxFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbMW-0000Tu-Tc; Fri, 15 May 2020 14:30:56 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbML-0000TF-9R
 for linux-mtd@lists.infradead.org; Fri, 15 May 2020 14:30:46 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MJnnV-1jpLtT3Lrt-00K8Hj for <linux-mtd@lists.infradead.org>; Fri, 15 May
 2020 16:30:43 +0200
Received: by mail-qk1-f173.google.com with SMTP id z80so2737170qka.0
 for <linux-mtd@lists.infradead.org>; Fri, 15 May 2020 07:30:42 -0700 (PDT)
X-Gm-Message-State: AOAM533A83p1WQ5ANwemXwJ8nlTU9cODGncb3eBlnVlfrlUIGdMrx/sU
 PzEXzLb8m7NRLwxeehYhqgqWP2c0ZS6iBnaSrUs=
X-Google-Smtp-Source: ABdhPJzWWXgTORWkb4jbrO8K6QMT6N5lPpxFdl5UWPmbpX97RbGZ8EERls9fxqPwUdbnag+Twa+m+oPKAZzZIORJbmw=
X-Received: by 2002:ae9:ed95:: with SMTP id c143mr3652955qkg.394.1589553041352; 
 Fri, 15 May 2020 07:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200515105537.4876-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <202005152142.AWvx4xc5%lkp@intel.com>
 <CAHp75Ven9q-6dDYtP_uXigeS_r2uvpUZVR5Mh0RdEd36MbTG+Q@mail.gmail.com>
In-Reply-To: <CAHp75Ven9q-6dDYtP_uXigeS_r2uvpUZVR5Mh0RdEd36MbTG+Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 15 May 2020 16:30:24 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3RKJo-C5=19oAppx212s7T8NdnKJVmkj+h=34a8aKMNA@mail.gmail.com>
Message-ID: <CAK8P3a3RKJo-C5=19oAppx212s7T8NdnKJVmkj+h=34a8aKMNA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] mtd: rawnand: Add NAND controller support on Intel
 LGM SoC
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-Provags-ID: V03:K1:ZBiDFaJWoPXYaEOZMCxL/7f6AGOH2YLviSiy84W95V3zLstZBTa
 IbvX4+3ijyDMyzJ42x9jbwhHiMfY3hYQqMmEbBvlrCyliFn4TTrlV7qdJMUl2YwIazLNH+f
 pvP9L5xdWRkrlKumqCEbBzk5YJtDsV4DBG5rksrfcfyOShHagEy3AI48gbjFgIaXKpRpDXn
 ujrDLqEKfuYQyLssYt0pw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KVcMWQlDuTE=:m5b88xrjdLw0nG42pRxs0j
 OdcyWRIypjFW6k+8Y+h5T1vEA3LFyCAuIBSpT06cibPTsSYSlM3eX0z0lvud5SK6iRQJQLY7Q
 USAt3TCjSxgCfZ1eDYz0LQy5MBFFkuxeOcj5+yLucIlUlfp2sGFcw79FR3JAuTTq1Ye0PaYBv
 IRLAUozcjr5INTexyy/N5IccRx83LpHu4pWRQq6yMX6ESK7YvpnDNo0OFIS5heO+24c4dtwLC
 lUSUhqTyA57ILMLNY+YcTe7LDYNM6NFQ5k3ilh1j/UGfgAl8kEr+vMrtrDy5S/z8tql5Qq9UH
 COMWvePk0D+Y7NqTG9tV4G24hMsalCX9qmThFAPxPxMl5zBOizBYeXCNndypQTSLcRL91Qs+9
 jTpFnJp+h2O/ebZKsReHD6R7tKT2p1JcxUxoKkVtkaSBilJYADcd6r245CeZL/liMJeIW+XGM
 polnPJLxVlic1NRuAspLN1fhP+99mYkUOwQCYtTriZ5L58OGkKx1ZwUJsFqYKG8EfFZrgY3Bd
 mefkfrhglNvZbFVyFSZomaec0eMIc4lTzu2jgDSkPMnmSBNmlPTrphmmwepjO74ZCylRFWZ4m
 2cEzyzmfIuYyV6hSfxAr6V0zp7GkfcR50NKTCO9iq+Vg38wWSPFKbmc/zIhYGat3h8XBz5a3g
 7xlZO2c9/KWjaUuswUdwk4FI2lGj7zYxAJxpHRtU0yAvvu+qqjxC9+on9DlMUdDEAr7stNc+R
 qcJvCB88OCS0kCv+nnFun+if7u2RtJC6i0gYqxPYSFHRtdixAV9lGYHVyC/VMmY7MVytNyZeK
 G3KzAaYPq/bSgUjjK6E1VEXPwEoWftatDmCK0SPgbgT6MR9oPI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_073045_625860_292F0C6F 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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

On Fri, May 15, 2020 at 4:25 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Fri, May 15, 2020 at 4:48 PM kbuild test robot <lkp@intel.com> wrote:
>
> > sparse warnings: (new ones prefixed by >>)
> >
> > >> drivers/mtd/nand/raw/intel-nand-controller.c:441:24: sparse: sparse: incorrect type in argument 1 (different base types) @@    expected unsigned int val @@    got restricted __be32 [assignedunsigned int val @@
> > >> drivers/mtd/nand/raw/intel-nand-controller.c:441:24: sparse:    expected unsigned int val
> > >> drivers/mtd/nand/raw/intel-nand-controller.c:441:24: sparse:    got restricted __be32 [assigned] [usertype] reg
> >    drivers/mtd/nand/raw/intel-nand-controller.c:444:24: sparse: sparse: incorrect type in argument 1 (different base types) @@    expected unsigned int val @@    got restricted __be32 [assignedunsigned int val @@
> >    drivers/mtd/nand/raw/intel-nand-controller.c:444:24: sparse:    expected unsigned int val
> >    drivers/mtd/nand/raw/intel-nand-controller.c:444:24: sparse:    got restricted __be32 [assigned] [usertype] reg
> >
> >    440                  reg = cpu_to_be32(*pdata++);
> >  > 441                  writel(reg, ebu_host->hsnand + HSNAND_CMSG_0);
> >    442
> >    443                  reg = cpu_to_be32(*pdata);
> >    444                  writel(reg, ebu_host->hsnand + HSNAND_CMSG_1);
>
> On BE:
> cpu_to_be32 -> no-op
> writel() -> converts reg to LE
>
> On LE:
> cpu_to_be32 -> converts to BE
> writel() -> no-op (in terms of conversion)
>
> Seems to me that the proper API (if above is intended) should be swab32().
> But something tells me that above is broken (or my understanding is wrong).

iowrite_be32() is the correct way to store word into a big-endian mmio register,
if that is the intention here.

      Arnd

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
