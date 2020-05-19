Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF1E1D9510
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 13:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbXzgTscKzeviE7fbkJeshiOBbX/L4wyw6zOChiPK7w=; b=YO9ZXxglyQB3L9
	fKfnumtSlobFRaY6GgLA0AV3UPhEiWFr1ybca6+RiHMHkWUqtaJdStQp2BnBCqZNyQcy4tKlUN2W0
	9eRpeBBFTP/u/HvqTY4R7OUibY1JzN3nsuabnl5BL0i+3pZ82SJqjlzSHAJGtvki57EHZQ8AiJR4/
	buL5elR0Y+cWsWCV0RBAgr/BZ9KoTBYWnZMVRXKMLd93OGDxsOwilQim/rrOeoee/tBpvV/eVJGNq
	b55Aeektp5u8EeScC3mgv6VM/nd9tVOtikoV6j1OQwHPVCyGx9wmq1mTMmNi/lkBJ/88RjwmS0gpK
	S0Z+bMA+YJKvXZymRzAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0FX-0001B0-Fr; Tue, 19 May 2020 11:17:31 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0FQ-0001AN-D0
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 11:17:26 +0000
Received: by mail-qt1-x841.google.com with SMTP id o19so10713194qtr.10
 for <linux-mtd@lists.infradead.org>; Tue, 19 May 2020 04:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FkPofRNcMbXyidznz5rPbV+dhRqOcYCkUmYQhR8zNpw=;
 b=LjKId3Kr8ZMbr09bN9bNX37UrHGCpsZFFYmlANV1+RwgZUhrnZb73eq0gab2pwfd7S
 zKYPhJr+j2y4m1eU2JxjyIgmb6idJ2L0a7l3hgagF0/cHLZ7s3tfOdifXS0VjYDjDCcb
 npTHJNQx7pJBaIOENEqXDIS0PoX6DlaQMAlhArlG5qoo8QYKapPTXySNKSHmZywc6sej
 K/ApAuu31jyLo06eH4ZUspSpZJAKBZBGIefa5GgN1zhmWnui3rFlfqNjVSKS/Xzbr2kx
 qlYzCPgNOlF4FouH0NIRNTmZx/84X/nI0ykpUcuJJxvYwQsIh5EcS2jzE3PVEQvdviiC
 J1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FkPofRNcMbXyidznz5rPbV+dhRqOcYCkUmYQhR8zNpw=;
 b=s+LsUz+WOpuF4Raolwe6s1LZVZBJlxfGFNi8BDySAyXgIkenjr875SbCAvBZsd+H71
 UUZxM/8gIgXn/ovaNwwBbXS/RN8fINLZV87Coq6ymwECBdLBoqzp4t5l5GC8GzXEitN3
 AqGnl8FMn8c6n2fjl3h5Sw+wzDOCrH+OxpHyGGzYb6BCp8I7h2NzieMd2lL4Z69bLuIx
 UXIMat789DPd77K6UeUEm/QP1Yv30kI9TntBVR5BM/w3BKoUcFy3rgdl2fo5A2vKL6p7
 yV39XLvyA+BrpuC1NDXub1r6PvDEvulr2IBjRArBRFLe1uBb+82VElv00kheX0szBjqW
 +ncQ==
X-Gm-Message-State: AOAM530z/1+By68N0m4lsvUTW36xHEgC0DLmBF7vnRDk9+pvsev/nQYh
 JT+8TAI/ebNPsJRfTXfIpXefYPnRrERhZfNkML8=
X-Google-Smtp-Source: ABdhPJyEQYUC6XYIXlhdProrcxLqU7QvaH+lWtMR98/Nx8zkXswtH3NLVV4lpH+vla6gdzAIEz3Vn8hJhA+voFLnqeE=
X-Received: by 2002:ac8:1e16:: with SMTP id n22mr21549107qtl.78.1589887041611; 
 Tue, 19 May 2020 04:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQ8ZjjdzdTVtBas42L0_qbhJhayqogz_Gg5wgtDBVo+hg@mail.gmail.com>
In-Reply-To: <CAA=hcWQ8ZjjdzdTVtBas42L0_qbhJhayqogz_Gg5wgtDBVo+hg@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 19 May 2020 13:17:10 +0200
Message-ID: <CAFLxGvxp3+JuaEatmMg_tvMFonSVC-pwhiB_ikf6i_edAGPewA@mail.gmail.com>
Subject: Re: Issue with 'ubi part' ubi_io_read: error -74 (ECC error)
To: Jupiter <jupiter.hce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_041724_439433_739C946D 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, May 17, 2020 at 1:28 PM Jupiter <jupiter.hce@gmail.com> wrote:
>
> Sorry for a bit recalcitrant with the issue of calling 'ubi part"
> error -74 -EBADMSG, is it MTD issue or u-boot issue?
>
> I used Linux kernel 4.19 to flash UBIFS volume images ubi.img to
> imx6ull NAND using following command in Linux:
>
> flash_erase /dev/mtd2 0 0
> ubiformat /dev/mtd2 -f ubi.img
>
> The flashing image process went well, not errors, but in NAND booting
> (u-boot version 2018), running "ubi part" stuck following errors:
>
> ubi0 error: ubi_io_read: error -74 (ECC error) while reading 64 bytes from PEB 2
> 35:0, read 64 bytes
> ubi0 error: ubi_io_read: error -74 (ECC error) while reading 2048 bytes from PEB
>  235:2048, read 2048 bytes
>
> The document says "The -74 error code is -EBADMSG and means an ECC
> error. In other words, UBI tried to read some data from the flash, but
> the flash driver found that there is an uncorrectable ECC error, and
> returned -EBADMSG."
>
> My question for ubiformat, how does it write ECC to UBIFS volume
> partition when it flashed UBIFS image to NAND?

Neither UBI nor UBIFS care about ECC. The MTD stack does.
If you write something in Linux you cannot read back in u-boot a common
problem is that u-boot and Linux use different MTD settings (layout,
ECC, etc...).

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
