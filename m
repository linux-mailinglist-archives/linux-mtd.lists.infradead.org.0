Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FBE142AE
	for <lists+linux-mtd@lfdr.de>; Mon,  6 May 2019 00:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt32TwRusmaZiSfdTngZd9iWlDRfBVF8LYQAwmI5aYI=; b=m4sbevqkZ8tk4l
	msi4QRdhxxTf42yccs6vz+0nMoBrZQrxn9q4mB9O8neeDtYsEoPvFgm4R1MmjbAkF3LihVx+SdbqP
	ctr7YxkgxLcU2qltOLnM7IVodnQYD8SsZhDFcsKDNS8ToJjIoDZGW4KIlehVcIrmn3FlUX8AHMCqZ
	IJtvfxN3KKmfGnWRzHKlE9IoKwVEAHoRMA0GBdl0WxFG/vshtVg5qU9PHtaEny26K0zoNwUXsvztU
	H7srXYJnKF7HvDcQZ0gj4H/jSvVYml2GmUpwZmnIcHA/U+d+1wZpJgBDxQd7NVSmpTbvY2KTjB86M
	ebmrjM+iq6j8HQBNDrtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNPJH-00040W-13; Sun, 05 May 2019 22:08:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNPJA-00040B-3i
 for linux-mtd@lists.infradead.org; Sun, 05 May 2019 22:08:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id e11so1735641wrs.0
 for <linux-mtd@lists.infradead.org>; Sun, 05 May 2019 15:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i5QiJ3NdIFD5nZFEnfNh+yTmCECVnOFz7H/TdJwFnmA=;
 b=uijdkwSG3ei/OwMTW2QBBPaPWLg/tAeerW+Dr+sGMwvSheAa79f2JB7CsQI+kNw/JE
 67JsiTKibb1eNKtnv9iHEIslUBhqPvW7N0P4xJIHjF1e6Dz3KEtInxiK78zL0uoVWem7
 /56wBHpVtMnQW1nWOV85/sJDVe7I7ooyj3b6wsI3OTuY9JqRHeGGcV2Z3+VIkm6eB0Rm
 VtCFAIfSlH8pYVM/k9PTDv3lZeoUUr0bZ3i/D1ZAzuLwviUrrrdnEY1XzDN6S/p7jOnN
 qyilxNFAH+gI6IbujEnZTMo3LxPk7dBKNvPAp2Ra81S7aNwiTcn/soi/Xmx0+h67DJeK
 dZxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i5QiJ3NdIFD5nZFEnfNh+yTmCECVnOFz7H/TdJwFnmA=;
 b=t2oQn7RTQCZKlq8W4OCZzWc0yB0c0CNqz0K2tqECQpb+twuJHeRWINKts15KM4nvYC
 PlYzV4v8y7aK0KNnp8OuVXZAZs0Kzm385CordaB+lVnUbNOKNloocNBU991IZ4lxKl6J
 Nz4IDJAn3R8Qo+Kj6AJ0yrqRuBZEtU2Fdgtsf1zZ0akvV3+9aDp9F/uRuascmFcpIpxT
 aOROTRnBnQtPC+/HzXreGDUpSGLZXcGkdBw+RmMb6tSqOzpFl3imx+ROCDjh/NzpgT50
 WnpL2kvGvPxBdsnr19hVheO9dV5q1M4vIvq/DfugUBZoFvvgkdUvlN0TKbqH+Xy3yux6
 hm2A==
X-Gm-Message-State: APjAAAU1Uoj4XZh7PfBUXQArTfwQEidTucFfhGJ69fzl6ea40Bd7ijuY
 iBATjuMlc40R4XL6gBJ9OgA24faaP/kM/Viml0Ebhg0A
X-Google-Smtp-Source: APXvYqyxDs2Sa07oAjukvRwZL/MR6y0n4cWS2w8h/8ODMkjN9M4ynR7mssQMZZ1nB98vhr5umTpvCAqWMzc1li67vS4=
X-Received: by 2002:a5d:4c8d:: with SMTP id z13mr7084722wrs.296.1557094108715; 
 Sun, 05 May 2019 15:08:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190430142823.28044-1-xoxyuxu@gmail.com>
In-Reply-To: <20190430142823.28044-1-xoxyuxu@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 6 May 2019 00:08:17 +0200
Message-ID: <CAFLxGvzMU02By_GUAKwdXUY6Wa33G2FBxwTxg2QQ=1qrf39TOw@mail.gmail.com>
Subject: Re: [PATCH] ubifs: wbuf->offs must be aligned to max_write_size
To: Yuichi Nakai <xoxyuxu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_150832_180911_9A9E0FB8 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 4:29 PM Yuichi Nakai <xoxyuxu@gmail.com> wrote:
>
> UBIFS has a journal recovery function.
> It is useful for devices that experience a power failure.
>
> And as per comment of ubifs_wbuf_sync_nolock(), wbuf is optimized for
> performance by writing aligned max_write_size.
>
> In following environment, checking offset is not aligned to max_write_buffer.
>
> - Using a SPI-NOR device with a write buffer size over 256 bytes
>   For example: Micron MT28EW01GABA, its write buffer is 512 words
> - LEB hedaer size is 64 bytes
> - UBI header size is 64 bytes

There are no such things are LEB or UBI header.
Do you mean UBI EC und UBI VID headers?

What is c->leb_start in your case?

> So if write buffer command make a crrupt data in a block,
> is_last_write() and no_more_nodes() can not check correctly.
>
> This patch adjusts wbuf writes to max_write_size, taking into account
> leb_start. The recovery process also checks the data at the corrected
> alignment position.

I have a hard time understanding your patch.
Are you facing a failure? If so, please share it.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
