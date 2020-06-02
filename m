Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BF01EC419
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jun 2020 23:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5sLxiT5fw2fIKwRc46dOUWzfRTfHypVGup13q8JIDs=; b=rW3KdOpSslPFfp
	Yv8B6KsCFTuJk1I0uIBVTZceGtq8Nf4oE+1ny/6I2UBp6/kXJ1XYnEyg4RUCbq+ZgDfDdjkEGVNDK
	x0aMFjqVmgZ7gVS0kOfEo42XB6Yi8RbMuTbjnounxLTIt2CV/m9CNC81jvWdmgaeuuv/MzZA6mPnW
	EpvZjkzDjm2SZTXr+NVEEmljLqVbWz6Q/oL1mFg2vPKkCC5/9A7cihMU4m1XIA+uSUIHq5Eo7mPMs
	LSmwtlM6p5c1PpOcqhhm91UQexpeeWU6nLc5lpDcSXX51aOQDH0kqD6prBxxHBEfzaOLmtg14RLYG
	2UUJmGenhx2umSU27KzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgE1X-0004Sd-5I; Tue, 02 Jun 2020 21:00:39 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgE1R-0004S7-5n
 for linux-mtd@lists.infradead.org; Tue, 02 Jun 2020 21:00:34 +0000
Received: by mail-qk1-x741.google.com with SMTP id c185so13994917qke.7
 for <linux-mtd@lists.infradead.org>; Tue, 02 Jun 2020 14:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iNNjrivnEoUAC366H2FdWIu2TL4+Vn1cT9nXKpItZgI=;
 b=vIhBYEHSKoY8Cekw6GyOOeo3n+07mgvI8uOG4etR/8uRWOCCdLJR+zdh1fO+iqebSw
 fYmcthB+lPruvOxedOJkDn+ymgXEbma47JB6bQcTE24EvPWNtbZa7s9zBNxWV4hDg33P
 1C17QLyILtUPc+wEN+1LWWNqlq9do5T0SpIljNma2/YFG3fWNPXu+qVrB4n0dStEp3dY
 TDSIJdAZiEc+0kYObw8VHNiwg8NV/HeqCb7dNkWTdoDYzVofFtyOsEfmCnuPSXfIt+FQ
 VnrxjOXYH5VVzuhJvCO3pKlUkZ6CIuqpoxDcouQqOqerdNzfyu5wrykW5IWS05pi/WdJ
 mUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iNNjrivnEoUAC366H2FdWIu2TL4+Vn1cT9nXKpItZgI=;
 b=io7J0p1IRAvNN52w1TMnoggAqBV58tp5eAAq5bnWOXoUoDI7F3knHrPE1ogpWzFjP2
 +OC1VT+TP0DPoQSIOcBiaKVHToIrZ/o9/yk8AuwUNZlfqN7aKRYoOBKcHkiTA/w/AD5F
 7wBNFOLwO2tV4vJUJx5YHXvFhQ3jxr9pYCnjbJOS/okDMpDx3BjUzO7iZumPbh/tTkqO
 whAX+eeNeetmuB6YrAcaRPDR5lYl9d+q6y+C3T1OB34yJl+EsDRXARcZ/FnWqFcch+YD
 AwAreV6wo9PnhNasx7TXxBF7kQf8zw4cquYjjhbCZNvOm9UY5zzZ/lh1CUwy0mKsW7+q
 /qBQ==
X-Gm-Message-State: AOAM533BMp89faS4Ql/nyV2dWTQfhQLo1x+Xz5mMDL179vP8Jm3aF1pd
 YfN+n0r3usQFWLl18OYvCqpuztvM/DfESrADimGg3g==
X-Google-Smtp-Source: ABdhPJyLE9zCZZJafGOGXEqm+4U4hs8l9S6vCTzQCOjJ77rPe0CNuYhuRj3iQCQw+qBksUJzARnIDg/hjtaOqEm3XsI=
X-Received: by 2002:a37:bce:: with SMTP id 197mr3407307qkl.370.1591131631351; 
 Tue, 02 Jun 2020 14:00:31 -0700 (PDT)
MIME-Version: 1.0
References: <149914202384.24318.7331828698981799313.stgit@kyeongy-dl.atlnz.lc>
 <CAFLxGvy4NbfHHoHXaH=sR-3e10+EAbDwLsdM1_Eyk_gT5=HE8Q@mail.gmail.com>
 <1589932809.26085.25.camel@alliedtelesis.co.nz>
 <CAFLxGvyAoZ+G3V8i-4CsQYSuHPTdG6v7s-78vL7Wq1EZEzDOWg@mail.gmail.com>
In-Reply-To: <CAFLxGvyAoZ+G3V8i-4CsQYSuHPTdG6v7s-78vL7Wq1EZEzDOWg@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 2 Jun 2020 23:00:19 +0200
Message-ID: <CAFLxGvwLgSTt12pPYVXUixMV3uK=iGbomhWdgy=XLYjk1HvdOw@mail.gmail.com>
Subject: Re: [PATCH] jffs2: GC deadlock reading a page that is used in
 jffs2_write_begin()
To: Hamish Martin <Hamish.Martin@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_140033_232555_B5035B12 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 Kyeong Yoo <Kyeong.Yoo@alliedtelesis.co.nz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 9:45 PM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
> > Please let me know if you'd like me to test a modified patch, or if
> > you'd like any further assistance to get this patch completed.
>
> Let me figure why this patch got skipped. :-)
> Thanks for letting me know.

Applied to my fixes queue.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
