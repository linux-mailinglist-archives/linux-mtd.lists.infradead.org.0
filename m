Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B7350AEC
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Jun 2019 14:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDiQ7XH4Hw4HB5jXK3Ml8iXIJOCznHCs88sDsJBXz1Y=; b=Tj+StYiA/vwzgi
	igkxHqXiTdLP+M4FXTnJuvwWit0v0GoaNJDiq0mxIHeQGBc+591UKw+Fi0Lkvj1lKU5LWPXmLsKJO
	pFXDTvys7v2QDfvbfcbT7CpbkZ68Qa8bpXly8TKmyXXok2DJb2G8QpmaTHlWZ1FCX7i91pguCNotO
	U07veaBYFxJoXLh4ajZNXGZu9joFawxxzCvmG5dtW4uXGCLAc8ztu5SpVzGeqb2D31gm/PszCC7kB
	2z//rYDDlRNEzdtq3bvcAftrgPoai6TkSvn7Ea/LY0peUn8dz4y1IVQPLSyy1wKSFU6FZgBXmuWGw
	/NBik+vfBsohwK2ZkXgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOH7-0000iR-5M; Mon, 24 Jun 2019 12:40:45 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOGu-0000gm-Tc
 for linux-mtd@lists.infradead.org; Mon, 24 Jun 2019 12:40:34 +0000
Received: by mail-vk1-xa41.google.com with SMTP id b69so2707879vkb.3
 for <linux-mtd@lists.infradead.org>; Mon, 24 Jun 2019 05:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LbbBl9v654ofW7tpEPGffdLt3++9EBoXMdvBpwh+0tY=;
 b=PjycnB6Lc0fHTMb2RhE5dSXv/9OzcmZy+SccDVQKTEBkxtQHtnxto9nHOPmx107tPl
 sY3TqT1AjjnnF4BY3UJ/+UvxGSqKQBBDHT24z5L68KxjQms7BLrPgMComPJh4KUh85jf
 XL4/9iS4FO3JmHO3Es1SoAtnasHxpi6EesFCYngw1bvnm8irnbMrk4ZITQc3MMQ9dfGb
 OP9aGkXBWXkLKJm6KxYzuL4e7u4Ff+Vqr0cVqR8/gC+BH8KqgUTDK/ImQko75xwgD1Bk
 96R1Tz2vLMqEQSkWAU4iGtf7bibOnf9mOJHRu9ixnc9CMyDjqZN3CRjO2EP2qkBdoNKf
 KA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LbbBl9v654ofW7tpEPGffdLt3++9EBoXMdvBpwh+0tY=;
 b=ZCUn+lFH5g+w1oRyerS1FqOWD5y1lRqJLGtGUeJWt9nQUIJvXuUaKXSOcmC/AJZhIw
 rrYbLMPQXnqB0xRkMzyK08fo8g3DufL83bt3qBtE3UAZKBOKEvN/eRs2ZlLhJ4JGukIe
 IXe99chE4HwBqDk+mbQO11bYT+sFNYt39IaO/w382Qpm3h5neuoPE9lwCu+rxOI6K5wk
 hTKVD6J/JZgLvCm2dbgp45VBT7V8B0ohP2z+Zuk1Csr5w20QxxtoRjTOe43Lm9QizYQC
 2jrNF7ByBEGvryvJjxZnzlZKCia8bZ5QhNnkFyK87uGRwnwjG2hQO7/F354a4BOqRonK
 K1tw==
X-Gm-Message-State: APjAAAXdZGm0GCg6ShaZwWeHoXCNcbweDGyZgpGRjBfxsgA0PwQmvgEi
 L8K0lKwxbD4g+aRtxK3a23JRXFhht2DKKUacklu/CA==
X-Google-Smtp-Source: APXvYqxrZZzNE88Z+lazI8IQXlyISaS4UXodF/q7xO2AqU+bKNeJi6OKXD0s5n303/WcdjhwOUhS9TMPF7v2FUhUWPs=
X-Received: by 2002:a1f:2909:: with SMTP id p9mr4510285vkp.23.1561380031042;
 Mon, 24 Jun 2019 05:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-2-git-send-email-sagar.kadam@sifive.com>
 <325855d0-00f9-df8a-ea57-c140d39dd6ef@ti.com>
 <CAARK3H=O=h1VDgOMxs_0ThcisrH=2tzpW5pQqt0O9oYs=MFFVw@mail.gmail.com>
 <93b9c5fd-8f59-96d7-5e40-2b9d540965dd@ti.com>
 <CAARK3H=CmxSG2srUaoxN1HF6W7CVKtpATrf89n6kuht2Paqp8A@mail.gmail.com>
 <3fe68154-5d1e-a395-4c53-d8e806b2cc6d@ti.com>
In-Reply-To: <3fe68154-5d1e-a395-4c53-d8e806b2cc6d@ti.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 24 Jun 2019 18:10:19 +0530
Message-ID: <CAARK3HmNSOqhv_+Y2dMTRTyg=Jtry7J-j419CS5GTAiPiPLLdw@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] mtd: spi-nor: add support for is25wp256
To: Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_054032_989777_F602A9C7 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aou@eecs.berkeley.edu, tudor.ambarus@microchip.com,
 Wesley Terpstra <wesley@sifive.com>, richard@nod.at,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, miquel.raynal@bootlin.com,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello Vignesh,

On Mon, Jun 24, 2019 at 3:04 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
> Hi,
>
> On 21/06/19 3:58 PM, Sagar Kadam wrote:
> > Hello Vignesh,
> >
> > On Fri, Jun 21, 2019 at 11:33 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> >>
> >> Hi,
> >>
> >> On 17/06/19 8:48 PM, Sagar Kadam wrote:
> >>> Hello Vignesh,
> >>>
> >>> Thanks for your review comments.
> >>>
> >>> On Sun, Jun 16, 2019 at 6:14 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
> >>>> [...]
> >>>>
> >>>>> @@ -4129,7 +4137,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >>>>>       if (ret)
> >>>>>               return ret;
> >>>>>
> >>>>> -     if (nor->addr_width) {
> >>>>> +     if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
> >>>>>               /* already configured from SFDP */
> >>>>
> >>>> Hmm, why would you want to ignore addr_width that's read from SFDP table?
> >>>
> >>> The SFDP table for ISSI device considered here, has addr_width set to
> >>> 3 byte, and the flash considered
> >>> here is 32MB. With 3 byte address width we won't be able to access
> >>> flash memories higher address range.
> >>
> >> Is it specific to a particular ISSI part as indicated here[1]? If so,
> >> please submit solution agreed there i.e. use spi_nor_fixups callback
> >>
> >> [1]https://patchwork.ozlabs.org/patch/1056049/
> >>
> >
> > Thanks for sharing the link.
> > From what I understand here, it seems that "Address Bytes" of SFDP
> > table for the device under
> > consideration (is25lp256) supports 3 byte only Addressing mode
> > (DWORD1[18:17] = 0b00.
> > where as that of ISSI device (is25LP/WP 256Mb/512/Mb/1Gb) support 3 or
> > 4 byte Addressing mode DWORD1[18:17] = 0b01.
> >
>
> Okay, so that SFDP table entry is correct. SPI NOR framework should
> using 4 byte addressing if WORD1[18:17] = 0b01. Could you see if below
> diff helps:
>
Thank-you for the suggestion.
I applied it, and observed, that data in SFDP table mentioned in
document received
from ISSI support doesn't match with what is actually present on the
device (I have raised a query with issi support for the same)
The WP device also has the same SFDP entry as the LP device (the one
which you shared).
So, will submit V7 with the solution agreed in the link you shared above.
     https://patchwork.ozlabs.org/patch/1056049/
Apologies for the confusion, so please excuse the v6 which I submitted earlier.

Thanks & BR,
Sagar Kadam

> --->8---
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index c0a8837c0575..ebf32aebe5e9 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2808,6 +2808,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>                 break;
>
>         case BFPT_DWORD1_ADDRESS_BYTES_4_ONLY:
> +       case BFPT_DWORD1_ADDRESS_BYTES_3_OR_4:
>                 nor->addr_width = 4;
>                 break;


>
>
>
>
> --
> Regards
> Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
