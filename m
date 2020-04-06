Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E5E19F60F
	for <lists+linux-mtd@lfdr.de>; Mon,  6 Apr 2020 14:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rkTcZAb7/F9C63C/9f+yBAUTR028xKRt6hPyetXSoxw=; b=qyAx5iAW0kcdAAam8jh/LB3+r
	NTQTNJndLk5Z3YTbkeTbZAaT4+2Do/J6a1otv6oXAGXWhfrKoZkPmtmiO+60grriwHO9Z5AteVVb+
	GM9oEnVsXzf1CPOowei0fr/l3ej3iqwnyFyJrdcoiqo9vieonyWzY1OQS5JgATMTwyCknwhhPWY8P
	/VGefPPmi/+v9cKaIoQXAxYhhrR2w1sdzWZgg+MvHgXWJa4L2hlgbRm7/46AyTRi1MtI1w2d1FUnc
	/ebMAD5E5MOOqOu3n/YgWb+SDE2EbhEBbWFfBTJ6znuI6RIRHv6wyLWtOQ/7tl0/whjTmARSfA9VS
	x4J6vmWxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRCG-0002Ra-Sx; Mon, 06 Apr 2020 12:49:48 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRBk-0002PI-Db
 for linux-mtd@lists.infradead.org; Mon, 06 Apr 2020 12:49:32 +0000
Received: by mail-oi1-x242.google.com with SMTP id l22so12868293oii.12
 for <linux-mtd@lists.infradead.org>; Mon, 06 Apr 2020 05:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fFB4VdA84Kugwzr7cseBJwu0dBCE6rHh8pgVv8EEcS0=;
 b=tc47wP7v2iRxBHrC4XRQCCKeCh3hWP45Nin6JzgR3+4GyevHAWChQgDAKOfMtyjmK9
 VOsVxkgLbMbW58sh4UpBrQRTKFdFnniHrU/yt309hGVa0gub/FsysLJMwD1xquCmQRGA
 xiHuAJuoFhQl7veK5j9wCnk3W9bbPkO2EXrmvpEJSXzypOIDJPVQDKErZodbebvt726B
 h8M5jUCKjLQUotXM4U7CGxB8CF+Vx3RWNrL/KOonulMVcijs/zR52xudTFNRPq0WJyy6
 X/MOFAgZizYVSLrK6cSA4ll9AK3iZJc5H8yorq0nmHOZcnLLK/IpwO+eBBCCzUTL8+kV
 EN/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fFB4VdA84Kugwzr7cseBJwu0dBCE6rHh8pgVv8EEcS0=;
 b=rrihNz0QnzyGzP75qqgxg/laNZzK/a3/vkGW7Ao8Clg7OJ6Qu+hC4iEwCuseIDtfrg
 95GlaztPnMstHUnVdVL+cCNnSo49O3FcZNpo2M8dbN3Lls0X3AIDEw9Vi3e7x90uKK7U
 qDE7zvkM/K7oYQ8PL7daUpGOHORHPNbpjc7EA5FyFMBWV1Zyjyf9PVPBfQiTUdtFAnJE
 zZrjtsqc1Cq9nx9yqRB4Om48dfxthWA8JxPCFoepbM4ly7PYMoUopnd7o4sbJnY4XchF
 keBEZs4L8wssOG0FpTAjr2hBpbpNxYC6FkMVbjGCzAGBvLnAp3McC1gHg+nnGqmvzCOo
 L3bQ==
X-Gm-Message-State: AGi0PuZBGozcUiidfRjOCpklk+Vb7Pgp+wqim6CbDzUpzf1+niihoUpS
 /OKrSolSYK7vssrxjqc5cxcl89kufxyxZ3Rq5P0=
X-Google-Smtp-Source: APiQypK+8VytYADNh4P+zG7WCNGv9WUis8t/SIv0S1IzfcExS1VnQzKmLTrz8eNCcJ0u1hURK/PclnoAZK+H2zmiSR4=
X-Received: by 2002:aca:3196:: with SMTP id x144mr12841366oix.77.1586177354089; 
 Mon, 06 Apr 2020 05:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200404125845.1381080-1-gch981213@gmail.com>
 <CAJsYDVLA3fgjBGdStkiZeqEv8q2j2sUdDzgj3QdahB=tvyYJWg@mail.gmail.com>
 <CAOX2RU7ZU0Jj71YCAoP=qaqUomaHKTi=XMV8wGvwRg_fYpfoMg@mail.gmail.com>
In-Reply-To: <CAOX2RU7ZU0Jj71YCAoP=qaqUomaHKTi=XMV8wGvwRg_fYpfoMg@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 6 Apr 2020 20:49:02 +0800
Message-ID: <CAJsYDVJbczAST7HPtkPAtQXhm+RdZFyAJz4XVjwkNMPDdMnDyQ@mail.gmail.com>
Subject: Re: [PATCH] Revert "mtd: spi-nor: Add 4B_OPCODES flag to w25q256"
To: Robert Marko <robimarko@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000be6f7405a29eb139"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_054924_572435_DF8BE8F1 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

--000000000000be6f7405a29eb139
Content-Type: text/plain; charset="UTF-8"

Hi!

On Mon, Apr 6, 2020 at 8:23 PM Robert Marko <robimarko@gmail.com> wrote:
>
> It appears that W25Q256JV has an SFDP table and in it advertises 3B or 4B modes.
> >
> > [    1.957903] spi_qup 78b5000.spi: IN:block:16, fifo:64, OUT:block:16, fifo:64
> > [    1.962185] SFDP advertises 3B or 4B
> > [    1.977393] spi-nor spi0.0: w25q256 (32768 Kbytes)
> >
> I have used the attached patch to check what does the SFDP DWORD 1 advertises.
> If FV version has or does not advertise 4B support than that can be
> used to differentiate them.

My old w25q256fv spits all 0xFF to 0x5a read sfdp instruction.
I've asked someone with a newer w25q256fv to dump the entire SFDP
for me and it's in the attachment. You could do a comparison between
w25q256jv with this dump.

> Can you apply this patch and check what the FV version advertises as I
> don't have a device using that revision.
> FV version also should have SFDP as datasheet for it clearly advertises is.

I've checked the sfdp dump in the attachment and it's also advertising
3B or 4B in 1st BFPT dword.

-- 
Regards,
Chuanhong Guo

--000000000000be6f7405a29eb139
Content-Type: application/octet-stream; name="sfdp-w25q256fvem-wson8.bin"
Content-Disposition: attachment; filename="sfdp-w25q256fvem-wson8.bin"
Content-Transfer-Encoding: base64
Content-ID: <f_k8ogxpxp0>
X-Attachment-Id: f_k8ogxpxp0

U0ZEUAABAP8AAAEJgAAA////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
///////////////////lIPP/////D0TrCGsIO0K7/v//////AAD//yHrDCAPUhDYAAD/////////
////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////w==
--000000000000be6f7405a29eb139
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--000000000000be6f7405a29eb139--

