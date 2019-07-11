Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE47165AFE
	for <lists+linux-mtd@lfdr.de>; Thu, 11 Jul 2019 17:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fW1dmDpK2/qLWvGA8IVj8sMOBkPEOxMWF3pD8efdkqI=; b=FKx/ok9a92hAID
	PNXi3TwGGi/H7kcMTMM/tPu83i9wQPDsudK17khQua4ucV1JV4MGO7aUpcjmu6eiqM7DrtVyEZhgt
	nVQv0C4t6V28+WZv3eAUGssrxVw4nTzKSrqlgvg08XEL2ar275KNT7F092TnAP8Pqj/o8gj4zLTaP
	TfqA1ddao8Lo681TwcmN0NAtDcd8rJFINFT9obtfRH/HOcnx92aJ+JhA1AC9NSgN/EANCAtFBZMcl
	k+yuMWqM8r0oH+HNyts0/fB/RsV6y8dK0tDSGjL1vaSNx1CkAVJq+GlNJ+W7/vsU1oUm+cacF3mVk
	7Ob8baHRmrA9owH56vBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbOs-0000sU-0c; Thu, 11 Jul 2019 15:54:26 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbOZ-0000rq-JA
 for linux-mtd@lists.infradead.org; Thu, 11 Jul 2019 15:54:08 +0000
Received: by mail-lj1-x236.google.com with SMTP id p17so6325528ljg.1
 for <linux-mtd@lists.infradead.org>; Thu, 11 Jul 2019 08:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lwg8vBTiJo3PigWTrwF21dhX64lcfzlkuIMVwOHy/Po=;
 b=ErjjuKVEBcjwntg/pByuV3nMmLp4ot9a2ltARYK+8BbjTaVZizWTJ9Ol3hTYEtSr2P
 kT0od2VSyZIRG8+4Aw2li8YJuSFWcS+E+Ty7Nj+WwgKef0afneQte/LTf2y29FHbDjLT
 xwV2KK/ABxXb4kXbUIIapmmJyTqk9719xAPcufF4vDIPX4NbY1USu/Dm1r1dJZMcwj8C
 DKC4T6suz+cMZ1faNTZuQ/iwFevCjEUD2AYwf/0RM9rjvIUdrLCxE0AGVLgyWsfmcoRZ
 tUoCM8EAAdKC92Gwnm0Z4jrYFfOA7t/H4MjAKwUAwClGFEkIAdwHxnFhMXtRoO98l1El
 rXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lwg8vBTiJo3PigWTrwF21dhX64lcfzlkuIMVwOHy/Po=;
 b=X53W1Nttr9+dmnx1h99VyWcN45lRWEL9lL4ktryw+py7+mG1h8fiwCQ9pRbVEk5Jwh
 TrdS9PLsx1btKvDnBIw7K3j834dq8dv6EHJvUZD817WARMd7Euy+8wTyeGtBk3PtAnFp
 LdTcd+HohEiRFU880OTN+ja62v3Vx2+TzcpM8n165cacCKLlSOHxDztnMocOEpI3b4MA
 JCD8lshSX560gpkNt40VqWgJhry2cdWucMmnxhBZTRuL9C7EUGHIXe77hoPNh28x8YpO
 fDsNXVKElNhblm94kER0DtbIKaCc/mQRYSqAVcxMfUK6AHfhJnAtyxDEvYMUfFQz9Jp0
 rNdQ==
X-Gm-Message-State: APjAAAX6u+JyMFjrfdYHhGhfwuz6xE7zpMtlGLHTfFe0DWN/rUkljDlG
 vYHkZjLK711sf9ovTFyuHXwQH+WG5+Ub4QMYpkk=
X-Google-Smtp-Source: APXvYqz5QnnDKN039Ck5429hJ8YlJ3SYvI4+DRqK4z0IGT3jalOy9eHk/B64H9THHXZXYPB0PP+n0HI7ZK8i2uuzw/k=
X-Received: by 2002:a2e:9951:: with SMTP id r17mr2891628ljj.125.1562860444682; 
 Thu, 11 Jul 2019 08:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAMk-x8NpDDjqtJQ0WqqRcggQxBp3uu7QbQET0m019LoG9OSkvA@mail.gmail.com>
 <CAFLxGvy=iwwUbS8O1xMAtMZYibzQ+vbft1ZVpg9erR=S1c8s2g@mail.gmail.com>
 <CAMk-x8NfGfXZ6c0QV9kVO677PSo4gmHCgPKV=7_iz7HYX6wYEQ@mail.gmail.com>
 <CAFLxGvwSKVxi=nqnrniDpZaK_5C900traLW46OZEC5ZUw+dEGQ@mail.gmail.com>
In-Reply-To: <CAFLxGvwSKVxi=nqnrniDpZaK_5C900traLW46OZEC5ZUw+dEGQ@mail.gmail.com>
From: Ben Schroeder <klowd92@gmail.com>
Date: Thu, 11 Jul 2019 18:53:53 +0300
Message-ID: <CAMk-x8PdwHryEmot4drePgx9cRfL6mO2FoURm5HSWdJjN97yhQ@mail.gmail.com>
Subject: Re: Available space loss due to fragmentation?
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_085407_659149_9BEC45C1 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klowd92[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (klowd92[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Jul 11, 2019 at 1:16 PM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Wed, Jul 10, 2019 at 5:18 PM Ben Schroeder <klowd92@gmail.com> wrote:
> > Thanks for the reply Richard.
> > I just wanted to reiterate that i am using SPI NOR Flash, partitioned
> > in an A/B scheme as so:
>
> Hmmm.
> Did you create the rootfs using mkfs.ubifs with a different
> compression than used
> by the kernel?
mkfs.ubifs -r /tmp/rootfs -m 1 -e 0xFF80 -c 1024 -o data.ubifs
(I believe standard compression is used, lzo?)
>
> > I am not sure the garbage collector will improve the available space issue.
> > Regardless of the UBI being mounted with sync option enabled or disabled,
> > the issue persists. Even if i allow time for the background thread to run.
> > The issue seems very problematic when considering the fact that i am
> > downgrading the filesystem, patching files to be slightly smaller size
> > than before,
> > and i am still running out of disk space, regardless of how long i
> > wait for garbage collection.
> > On this regard, i will stick with your answer that it can be a serious
> > challenge if all nodes are packed,
> > and there is little available free space.
>
> How full is the filesystem btw?
250kb free out of 22mb ~ Approxy 1% free

>
> > Could you please clarify your answer regarding binary patching UBI Volumes:
> > > Yes, you can alter a dynamic volume as you wish. But keep NAND odds on mind.
> > > So you need to replace whole LEBs.
> >
> > It was my understanding that because UBI keeps tracks of bad blocks
> > and erase counters,
> > so that overwriting an existing and running UBI partition using a
> > binary diff against a newer UBI partition,
> > might cause loss of that metadata, or even corruption.
>
> You need to operate on UBI level, not mtd.
> You can open /dev/ubiX_Y and ask it to replace whole LEBs.
> UBI will take care of erase-counters and stuff.

I see, thanks!

>
> --
> Thanks,
> //richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
