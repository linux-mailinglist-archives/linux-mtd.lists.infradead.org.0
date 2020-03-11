Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB611811FC
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 08:32:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzRj8wGlI3j3e5KKiGFCH4UaMHGryVZ+AjSJmsQ8szE=; b=hdr3dTMlA5cq9W
	x+zJxKvF+N6tvNfqbUwbca/Tzv6bjx1w+SlCvS+ErWodIBQ1h6yZzrWnT7hBkc/61kUH1Gag3+Jc+
	yXYVm19i6lH5Ie4wKatoHc5dDcw+WWbGszDbBsNocrIyVl2dpDbrGx4M12MgZ8JxqW2LBpcyXMZ6z
	zqvPA0svZkPZNBvsqNn0By8mXXMIeVR9GfCL4clc0dWyBKIlLU/9jYKRe/vS3xZei0EJ2i5yLczQ2
	RLrI4HSh3++ngmcW/j2XkP/6cbNshTezcGToWqStjpWws6NB11g6hwu0MRVOyxqAfIFNYcfXjdnm+
	2Z2YBAF1l1oBZXLKYQ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvqJ-0006sP-Us; Wed, 11 Mar 2020 07:31:51 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvqA-0006s2-Si; Wed, 11 Mar 2020 07:31:44 +0000
Received: by mail-ot1-x341.google.com with SMTP id h17so924067otn.7;
 Wed, 11 Mar 2020 00:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XqjRh4XcbIeWg34nWgx/BvCMLg6ufHpF8wfPSvWuHz0=;
 b=ha0QoGSg3KAv2R3HAXeMjIi1d2yifW/WkdBw5qGgsGm7I85pu+VvryoyW+Aixi5GgS
 qBKwqs0T7EDZzEjVgZRIwAdwLj45t2CJMcEoL0xIZbpMtIvWYAAGV7be+q3GmnOyW8K5
 QLSYJoGv+8aS2zAchGen7HEtn84ZcCGbGCNllJVOY9J0nMWntTKnlSDeiaT1OAcniVwM
 cTo9eU1CwGZzm22dU1Dhny9fJ04ox9whJynLlSjGu1dznihaf3W0/+hdHyuF54rs6QKy
 s6t+eLKwL0kzbjcE8i8UBesMf0/Jn/L3bsffHSqkwCHvOMZezEf+/mfkxQSIzS4WP8Rr
 EYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XqjRh4XcbIeWg34nWgx/BvCMLg6ufHpF8wfPSvWuHz0=;
 b=CjIgBiYbARKRgujPD770E4WvxgGR1mhxJ/GIBsOExtcM48ZzLl1E6MueQcRzl49hbP
 VX3FSYdYr4Ci2v53PMSSkvHUmtNVZS1L2yeTLujipP4+XkdaoDLgyOB0KBByRYV6rCX8
 oiE/koM3AHbGBj8XPjbO+RQ1YaznAnLLLesnnEnnS7J6FR39opf+HMPjrXJhhUE13d04
 HLXweZT9JJ+58tVNhXx/XHWMRAkMi/54IM7eIMwyslusEJeQszcW9fyJhpuHozL3cpNm
 PxKD69EBKEcumeE6W5oJLpF/GVpLthMTLY/cWBTK06WgXqoNuH4EoRCDvhkJtdCseonX
 bGqQ==
X-Gm-Message-State: ANhLgQ0HuGqX1+z6ia0PJsUGJed8D/E0IQOxqvOsD0dVAMnbaFpguhOW
 SRmeZfTcZvuJiooJo6K7Pz5F0uYJMMq8NGCMZnU=
X-Google-Smtp-Source: ADFU+vvWMFP54lh2YUrErXGIZ9ola/n/+/kwLa2LvSYzQozOfvkatAweuBFXM5bgscaPALmt8YeGtDcj7RXgUFalloY=
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr1329009otr.86.1583911901252; 
 Wed, 11 Mar 2020 00:31:41 -0700 (PDT)
MIME-Version: 1.0
References: <1536716612-24610-1-git-send-email-xiangsheng.hou@mediatek.com>
 <1536716612-24610-4-git-send-email-xiangsheng.hou@mediatek.com>
 <20181023075247.004982c9@bbrezillon> <1540532796.24602.11.camel@mhfsdcap03>
 <20181026080833.2fedbd94@bbrezillon>
In-Reply-To: <20181026080833.2fedbd94@bbrezillon>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 11 Mar 2020 15:31:29 +0800
Message-ID: <CAJsYDV+dAikBZ4gg_3u7z_jgV2ZehhyWyRQ709dNQV0XdDOUbQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] spi: spi-mem: MediaTek: Add SPI NAND Flash interface
 driver for MediaTek MT7622
To: Boris Brezillon <boris.brezillon@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_003142_930784_83FA7A4E 
X-CRM114-Status: GOOD (  22.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ryder.lee@mediatek.com, srv_heupstream@mediatek.com, sean.wang@mediatek.com,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?B?QmF5aSBDaGVuZyAo56iL5YWr5oSPKQ==?= <bayi.cheng@mediatek.com>,
 linux-spi@vger.kernel.org, marek.vasut@gmail.com,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 honghui.zhang@mediatek.com,
 =?UTF-8?B?QmVubGlhbmcgWmhhbyAo6LW15pys5LquKQ==?= <benliang.zhao@mediatek.com>,
 xiaolei.li@mediatek.com, Xiangsheng Hou <xiangsheng.hou@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris!

I'm about to pick this driver up and start upstream it in the future.
So I'm answering
your questions below and would like to get your further suggestions.

On Fri, Oct 26, 2018 at 2:09 PM Boris Brezillon
<boris.brezillon@bootlin.com> wrote:
> > > There's a fundamental issue with this driver: spi-mem was designed to be
> > > memory agnostic, and you seem to have a SPI controller that supports
> > > only SPI NANDs. Is that correct, or is it just that you developed the
> > > driver with SPI NANDs in  mind?
> > >
> > Yes, this driver supports only SPI NANDs.
> > Actually, Mediatek's controller is designed for NAND specifically, which
> > can support SPI NANDs and PARALLEL NANDs,and this driver is just for SPI
> > NANDs.
>
> Hm, I'm not so sure about that (I might be wrong though), it seems you
> can send any command you want, not only SPI NAND related ones. Maybe the
> controller is optimized for SPI NANDs but can do all kind of SPI
> transfers.

You are correct here. This controller can perform generic spi-mem operations,
and it has special routines for page cache R/W that utilize controller's ECC
functionality. I think the purpose of this is to provide better ECC capability
for some SPI NANDs with worse ECC algorithm on chip.

> > > Don't know what's possible to do with your controller, and maybe it's
> > > not able to execute random SPI memory operations, but in this case we
> > > should consider a different solution to support this driver.
> > >
> > > Do you have a public datasheet I can look at?
> > >
> > We do not have a public datasheet for Mediatek controller currently.
>
> Unfortunately, there's not much I can do without a clear understanding
> of how the controller works.
>

I found a public datasheet [0] on wiki page for Banana Pi R64 [1].
Register description is available under "NAND flash interface" section
starting at page 592.
There's a hackier version of this driver in OpenWrt [2] which checks
opcode and use controller routine for page cache R/W.

ECC part of this controller can also be used as a standalone ECC
algorithm and perform ECC operations on data provided by CPU.
But I think if it's implement this way, we wasted the page cache
R/W routines in this controller.

I have two other initial thoughts:
1. abstract some kind of ECC functionality in spi-mem interface
    I haven't really learned ECC stuff so I don't know whether this is
    possible and what kind of argument we needs for it.
2. modify SPI-NAND core to add support for special SPI-NAND controller.
    This limits controller's ability and adds extra burden for future extention
    of SPI-NAND framework.

Which way would you prefer and do you have other suggestions?

[0] https://drive.google.com/file/d/1cW8KQmmVpwDGmBd48KNQes9CRn7FEgBb/view?usp=sharing
[1] http://wiki.banana-pi.org/Banana_Pi_BPI-R64#Documents
[2] https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=target/linux/mediatek/patches-4.19/0306-spi-spi-mem-MediaTek-Add-SPI-NAND-Flash-interface-dr.patch;h=2370925372f69aed0566339a4808056580e88837;hb=HEAD
-- 
Regards,
Chuanhong Guo

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
