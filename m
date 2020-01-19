Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA308141FBF
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Jan 2020 20:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bO7+MGTX43NEQ1jgUWyvkNDyAPRWoLgjeqb76nzvGKk=; b=jhnlLqTqd6HDxu
	8S77P/WD4iFMAoGxETHYT1twPXT6I0JAvJRHQcEQ8kGpcrm+gxF+5DxdueAPBbOG9NTxo2ixMVNIg
	DUuXDbJUsoDAHavgw/990nKx7fCSArZHVAucQVmf45jtm2ZcGEMP7lXEZJEXUv9R8qwCDlchnjBNg
	VeI+Znaoluzf4RmZKcGXEqRF80B2nqV5L/Rn9CeY4flmX7S4YH8Wn+BjBTJsVPlOnAut45PbIicnh
	bfyUjJRTBSX2loyDYo/1ZmwpOhbH7EnZ1hQKjYMm2WYDZoocxhnVcCGZfXQhCyfjyFSc3Yf/9Cw6s
	OOc1XU5DzEF6Ar/lCGkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itG3L-0007eY-5r; Sun, 19 Jan 2020 19:16:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itG3E-0007dz-0g
 for linux-mtd@lists.infradead.org; Sun, 19 Jan 2020 19:16:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so12340017wmc.2
 for <linux-mtd@lists.infradead.org>; Sun, 19 Jan 2020 11:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wjPqQ+QcgdIt/3k/Xgoi79/wU8alTV3s3eopmW4iuJ4=;
 b=pbnbAH/bUX12Izz9PfnJQGv8De5M+j/8A0539bbmCvM9Kr3lCMwBNBj7/NLFX1hX5N
 xevMpe4hX4hU1+EbDyquumYVC6i5bvZn3yMZGSDVgjdR2xJGhI5viocmxGKI/EXsdTaQ
 DMQqrwPyu3QSvdFAin8XnwwCN9WFbwec8Hbyhb3uvo/f7haaG37X5cw1hx/yGc/wt13W
 bJijlhZi148lZHLc/bpgmkztlWg+l7mbxViuqdq5hUj5xEWW8Us24mqYk451C2XXox0B
 DXDfxFN/rL888aF7/S3LuktLMf556o29pIBrQLUyJ2drc0EpwaolAe1EvsieQ/iF1t8a
 r4Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wjPqQ+QcgdIt/3k/Xgoi79/wU8alTV3s3eopmW4iuJ4=;
 b=IG0fhygoK/LXgj2CM3tMt6Ky+vZWM2EhNYImlHS25tz567dveHsJmWLa2ee4iBeAo5
 ygvYmEZwRPs1UTS4toY5Rw5i3h6SCKeI5mdb+1ZbGYcUtJ3o1/oXU9jlURRSGFF9OPwr
 G4bwnFk1vqRgvYAySBXykeE7ZGELklftZJPtadperEwb6GKGSaCNLeFqvf+fpuEFqudR
 0qrKIsxYl+yRBvlLiffJlisUocDcUBXxnMll/8yhk75dIc6oUJ12PYJXpIb9uLF+hKba
 cirs+YrtOT6/5WEVp7Ydp8tETuNCcEt4N9oGl260ZzN7H0QnUYGcviofwEclXrO164m7
 ZomA==
X-Gm-Message-State: APjAAAWNC8Fd7H168tF8UZc8yrldMeZNJko8nSxJCXSfKNE4Ghht5KTB
 m3ncUymwEizywSluzHKkVQaX+1RHu1ITbzbmwn8=
X-Google-Smtp-Source: APXvYqzaBOq+usci2PMODRtU54TPMBfi0WijWwTBptOYu4FQw3HqD/2aJDrNY4I40wXQwl5H1OOYdw9zFnhcOFW5Ma0=
X-Received: by 2002:a1c:f719:: with SMTP id v25mr15697450wmh.116.1579461358280; 
 Sun, 19 Jan 2020 11:15:58 -0800 (PST)
MIME-Version: 1.0
References: <20200113132346.rmeamdmbxwvo7kgj@kili.mountain>
 <CAFLxGvyBO=_4-f+HQPZSaAL=aJouok3y=MxEKjup3Q=Cj0KKZg@mail.gmail.com>
 <20200117034035.GB19765@kadam>
In-Reply-To: <20200117034035.GB19765@kadam>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 19 Jan 2020 20:15:47 +0100
Message-ID: <CAFLxGvymMF-ijcUFc71Rg6MisC5RUa4dsUGesvE=rU=Z9Pj7-w@mail.gmail.com>
Subject: Re: [PATCH] ubi: Fix an error pointer dereference in error handling
 code
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_111600_084176_048E9427 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Richard Weinberger <richard@nod.at>, kernel-janitors@vger.kernel.org,
 linux-mtd@lists.infradead.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 4:39 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Fri, Jan 17, 2020 at 12:50:14AM +0100, Richard Weinberger wrote:
> > On Mon, Jan 13, 2020 at 2:24 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > If "seen_pebs = init_seen(ubi);" fails then "seen_pebs" is an error pointer
> > > and we try to kfree() it which results in an Oops.
> > >
> > > This patch re-arranges the error handling so now it only frees things
> > > which have been allocated successfully.
> > >
> > > Fixes: daef3dd1f0ae ("UBI: Fastmap: Add self check to detect absent PEBs")
> > > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > ---
> > >  drivers/mtd/ubi/fastmap.c | 19 +++++++++++--------
> > >  1 file changed, 11 insertions(+), 8 deletions(-)
> > > ---
> > >  drivers/mtd/ubi/fastmap.c | 21 ++++++++++++---------
> > >  1 file changed, 12 insertions(+), 9 deletions(-)
> >
> > This patch seems badly formatted.
> > Copy&paste error?
> >
>
> Oh, yeah.  Sorrry.  I shouldn't affect anything though.  I can resend
> if you want.

No need to resend, just wanted to make sure you sent the right patch.
Applied, thanks!

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
