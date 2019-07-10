Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8FF641C3
	for <lists+linux-mtd@lfdr.de>; Wed, 10 Jul 2019 09:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ukJcMK1VNQMhxuZkPtOehZ5oY7DXpX+b0RGnd1guPA=; b=CPk/L2EcQkU3ko
	f+yHQFz8YTSQhMwrdKmnsrFaTCp4UWL3hZzvWS+Kj3nUGH0mtl23gwP+BjsV3ZzK3yTYqP+JEdnz5
	jQSHU5iFodMhxoetjQc4dojnXsuURpdKsRkvFkpFrnA/g3xv3Fk6NfyW7cTX7LhGQa14LzpLXtUik
	R74YrqT0Fdzc3LZ8aTOHgGZInEiGSi24HsEk03e5I3xJERJ/qw3Wh7kGAiNYQxDLhS1jbH8m83977
	8sv39lYF+Lcuy+sqU9Ohxyqh9AHC27vohr1BFUZ5fWV0AkSdHKODSJnIGiIA5vMQppfu/q1YQ03Xx
	Q+U8OB6F8xnECNzUE3cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6p1-0000YV-IB; Wed, 10 Jul 2019 07:15:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6oj-0008Fw-0C
 for linux-mtd@lists.infradead.org; Wed, 10 Jul 2019 07:15:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so1047223wmj.3
 for <linux-mtd@lists.infradead.org>; Wed, 10 Jul 2019 00:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bofh-nu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IzC29uxjD7uIE9ZiX4d3rbTKwd73a/1Di/16J5lVe/8=;
 b=Mk/iSb24A4fePcsSBIUGIduk26VabRj0jxa+9msViZUKPAuDysfTvDQmT+1rVdBp3w
 TU9A2I+ItDqc4325RNakyVeaNJwx26tFD2J/ZW40BqWhCVVHire8U+kfWoMKFRcdmLhj
 T5gLap6nOgDxcM8riYP30DFw9oHpljawS2eO/AZ4QsDI9apyfMMzsBYDSZmVheIB42Pv
 vnc/v+0KPbq7vDRg5zpgL5JDJoGRPnYW7PeVfpPnr2TKocuph9OZITPoU18foI/2kFfR
 Zc9p7r8F3gSW7K93KRjsa61c/Cfrey+c9hN1mOzkYR8QaWcbirdXVnKdZAXe2lGo3qKM
 83kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IzC29uxjD7uIE9ZiX4d3rbTKwd73a/1Di/16J5lVe/8=;
 b=s7xNeJdahdi9bYVsRH6tAEpTq6F/h0XWqpvXj2f7W9RovsB84A0s/FXWClUFV62fGX
 +GmOyORe8PA7fA88g4lVI8kxNv+3ncTh2TDmS3gUKeTdcy8tQQF5kWZFRo7+IRNI6bwn
 3VltxMVp0/z+rh1BRzB+54jLuPcjn2mlr7Z9AT2pmMIoyLsb0H1B7wJCrdovAK5B7ffy
 vOx5MqHYFb7w/P3FaOVcZkx6y65STzZ2NKDHnffi4lwTTBecdB+AQdoWVr73QjxlRJKn
 yHRJD2iVOjGuFUeQIstOSp5PsHu7IRy91ROrxzLml6x390M9ud3MO68rr/pxEv6nKIG1
 Ns0g==
X-Gm-Message-State: APjAAAXGzQxcH/RePTAGfMR2uGIPdQZhAxuBNIqJG5TaImAPsFTpRRgw
 IzLH2j0cCodEgOjWnZ8ZU1PhHWMAJIRLY+6mX/8DiYy4sx8=
X-Google-Smtp-Source: APXvYqwutVZhzDdkkvBmyYXA7TVUHOw/5uAe8FE1QR/fDqWJsEk6t2Ze2/YTOZvo8vA3C2KnRoPBxi09k1W8rwPSK78=
X-Received: by 2002:a05:600c:2182:: with SMTP id
 e2mr3443053wme.104.1562742902553; 
 Wed, 10 Jul 2019 00:15:02 -0700 (PDT)
MIME-Version: 1.0
References: <CADnJP=vQURY9u7Fb=Bt=udf89A6VX_TccBXfk8q2kdkqMnqj4A@mail.gmail.com>
 <1586391.XHllXIAzYb@blindfold>
 <CADnJP=usEgBQH5tL2k79kFhraDvir6Byt5j7n1FHfT8z84ET+A@mail.gmail.com>
 <2946812.3xOJdY2bgb@blindfold>
In-Reply-To: <2946812.3xOJdY2bgb@blindfold>
From: Lars Persson <lists@bofh.nu>
Date: Wed, 10 Jul 2019 09:14:51 +0200
Message-ID: <CADnJP=ssoVB_XJ_hp8LgVipz3uH3PFf6j48NBEHseLnaMiN16g@mail.gmail.com>
Subject: Re: UBIFS file-system corruption (missing inode) after power-cut on
 4.14.96
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_001505_089673_3EF9C073 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Apr 5, 2019 at 3:23 PM Richard Weinberger <richard@nod.at> wrote:
>
> Am Freitag, 5. April 2019, 15:19:31 CEST schrieb Lars Persson:
> > On Thu, Apr 4, 2019 at 11:53 PM Richard Weinberger
> > <richard@sigma-star.at> wrote:
> > > Can you please run your tests again with this patch applied?
> > > It needs further optimization, but we are on the right track.
> > >
> > > diff --git a/fs/ubifs/orphan.c b/fs/ubifs/orphan.c
> > > index 2f1618f300fb..c15e484f73a4 100644
> > > --- a/fs/ubifs/orphan.c
> > > +++ b/fs/ubifs/orphan.c
> > > @@ -691,8 +691,21 @@ static int do_kill_orphans(struct ubifs_info *c, struct ubifs_scan_leb *sleb,
> > >                 n = (le32_to_cpu(orph->ch.len) - UBIFS_ORPH_NODE_SZ) >> 3;
> > >                 for (i = 0; i < n; i++) {
> > >                         union ubifs_key key1, key2;
> > > +                       struct ubifs_ino_node *ino;
> > > +
> > > +                       ino = kmalloc(UBIFS_MAX_INO_NODE_SZ, GFP_NOFS);
> > > +                       if (!ino)
> > > +                               return -ENOMEM;
> > >
> > >                         inum = le64_to_cpu(orph->inos[i]);
> > > +                       ino_key_init(c, &key1, inum);
> > > +                       err = ubifs_tnc_lookup(c, &key1, ino);
> > > +                       if (!err && ino->nlink) {
> > > +                               kfree(ino);
> > > +                               continue;
> > > +                       }
> > > +                       kfree(ino);
> > > +
> > >                         dbg_rcvry("deleting orphaned inode %lu",
> > >                                   (unsigned long)inum);
> > >
> >
> > Thanks Richard. The power-cut test is OK now with this change. I run
> > it with chk_fs=1 and it passes every time.
>
> Cool, please let it run for some more time, just to be sure.
> I will also do more tests on my side and optimize the patch.
>
> Thanks,
> //richard
>

Richard, we tested this patch for two weeks and saw no further issues.
We can assist again with testing if you make the optimized patch.

Regards,
 Lars

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
