Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D17100085
	for <lists+linux-mtd@lfdr.de>; Mon, 18 Nov 2019 09:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60kFTEQW9gHTaxrzNtxMV9p/HWSmrzb3smg4KUfbkoY=; b=RbMt1zRSXyr/PN
	XZPdGsPoAa/FQW9GO/bWjuiP2Y+sFvyD5cwEZMn5n0NspAymm3oiDmcggm2zBdmcMiLgrGOA19Kk6
	+na1Y00VQ32DhbLMzP4aCvWshCfQ4bIWSpdNZVPDi7/RAQvuBqQhwiSu5q8dfwHRgU6Xq8hEQ6BfC
	gyMtw7PRRuxAnS58VPOe2vasqU8WIwuUJdW/tFpFvHP3kTLIZHznNFZ5mwDckep3gNS0291XZhW91
	Tf0SpO1hKn3engGTG7mAEbbqlMWckXoyCTy5jkfQ3ZH08SFMg8CUNjbM1oZIaLO9jKsXgUm5/x8J6
	gqQec8yRHrOukIwF/I+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWcXZ-0006Fs-5n; Mon, 18 Nov 2019 08:37:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWcXQ-0006F0-K7
 for linux-mtd@lists.infradead.org; Mon, 18 Nov 2019 08:37:38 +0000
Received: by mail-wr1-x444.google.com with SMTP id n1so18295176wra.10
 for <linux-mtd@lists.infradead.org>; Mon, 18 Nov 2019 00:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zyRyDdnwFrDF22qF/6Kg6E6UCBOkHXooVVbfjsN3zck=;
 b=bqHAwTW48FBmtcp/JM6OZkKuYkOTIDhMVmdAda/htJZgBNT3UKIHuW5C3ofGR/eKQK
 PVKGhq1kGahNJVyzEQF7fKu0wpYTDLaGF1pYW23zH5gjWN0O4QIOfpWBTJwahShB4Wkw
 7J2QFrpdGSyBb2WE7vqPokYyZq9JldidZNAifzTMpThJhIFOPOjMaJ2IK0t9+pInsgLx
 J7SLADlcRJuI0cfebUhgjQu+J225mCuDsFaUWWiF9ug6nx+WV1WZV5IKOlCg+eov5aWT
 QWla4RmnJF02s+Paab4/UWMQOpIdLGa5a+t3ThQ281tADzH8YQ+ZTWqtoyAVtx6xFW6T
 /plQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zyRyDdnwFrDF22qF/6Kg6E6UCBOkHXooVVbfjsN3zck=;
 b=iIfkEPXukB4io7xAOzYaGdkhpBQVJZoKXiu9UDK/pLFviHaz0/m2mnihq4tj4DGJNv
 AeffTY4sOWoJs2MEpqLvk9b6miWNGWQ6PCuE1ogA1PwPXW2IoJwdBrEsUd2UhESordB2
 vSPHmMm4oSHPSI5h6TCer+ahEsh5km1Ouu+P1McG3nlvhj5TfdmO3uolRUA7+gwfNpj5
 j4j+a+jDMnRE/7Wx7AtMJ9PKNdcecQ7v0a73zMnV1TPIqDTohZboG7vBh7DFH7fweCM6
 mh+hGXBfXIjacJSrAmwmD/2cET61UOBs7uvBHaJuR84Tqb5+/Z4eYk6K5N0Ra8FRNXzm
 s3Dw==
X-Gm-Message-State: APjAAAWPIa8MkhI8BjumN3Z3nRhsmbelgxV5817CctFsoXMqfzWfVNc3
 GiOjXVzn0kdzX1DQQ65mkaVIDlKRCZMDLdLc4gxBpQIq
X-Google-Smtp-Source: APXvYqwE6Nr/nHKPZBWJuAt+7Dr/Cpd5r07mcZBqUOjdaZPOfNZFClIaUpX10MfCOP0JBtqGADLBK5WZF0TziWUg1aE=
X-Received: by 2002:adf:cd0a:: with SMTP id w10mr14295747wrm.4.1574066253742; 
 Mon, 18 Nov 2019 00:37:33 -0800 (PST)
MIME-Version: 1.0
References: <20191117174413.2876-1-pakki001@umn.edu>
In-Reply-To: <20191117174413.2876-1-pakki001@umn.edu>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 18 Nov 2019 09:37:22 +0100
Message-ID: <CAFLxGvzB64YgGS4nmx++f=jwY1h=Uha1d1nP_VONtemm0DoEfA@mail.gmail.com>
Subject: Re: [PATCH] jffs2: Reduce the severity level of logging errors
To: Aditya Pakki <pakki001@umn.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_003736_687959_69BE060E 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kjlu@umn.edu, David Woodhouse <dwmw2@infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-mtd@lists.infradead.org,
 Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 6:44 PM Aditya Pakki <pakki001@umn.edu> wrote:
>
> Unlike other instances of critical errors that call BUG(), kmalloc
> failure in jffs2_wbuf_recover does not require pr_crit. Replace this
> error logging with pr_warn().

Well, JFFS2 warns that data will get lost. IMHO this deserves pr_crit().
Unless you have a strong reason to change this I'd leave it as is.

> Signed-off-by: Aditya Pakki <pakki001@umn.edu>
> ---
>  fs/jffs2/wbuf.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/fs/jffs2/wbuf.c b/fs/jffs2/wbuf.c
> index c6821a509481..59e145220b51 100644
> --- a/fs/jffs2/wbuf.c
> +++ b/fs/jffs2/wbuf.c
> @@ -339,7 +339,7 @@ static void jffs2_wbuf_recover(struct jffs2_sb_info *c)
>
>                 buf = kmalloc(end - start, GFP_KERNEL);
>                 if (!buf) {
> -                       pr_crit("Malloc failure in wbuf recovery. Data loss ensues.\n");
> +                       pr_warn("Malloc failure in wbuf recovery. Data loss ensues.\n");
>
>                         goto read_failed;
>                 }
> @@ -354,7 +354,7 @@ static void jffs2_wbuf_recover(struct jffs2_sb_info *c)
>                         ret = 0;
>
>                 if (ret || retlen != c->wbuf_ofs - start) {
> -                       pr_crit("Old data are already lost in wbuf recovery. Data loss ensues.\n");
> +                       pr_warn("Old data are already lost in wbuf recovery. Data loss ensues.\n");
>
>                         kfree(buf);
>                         buf = NULL;
> --
> 2.17.1
>
>
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/



-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
