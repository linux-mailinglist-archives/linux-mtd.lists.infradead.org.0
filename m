Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9257C1BFE3E
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Apr 2020 16:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSLI2PfZOec1ZTDquR9OmFeNRYdp0Gm7U8+On0keFNg=; b=s8HJkJmq+GDWZ0
	ObevbMc4LAN6ZLn0YFXJv3IXt7Rk6luRW5+QR/757JfCFmnRZikwmItaLLytCfcItqaWNwyr9L5T8
	uhJr/D17YqTaP0vhlmP1hOmXOT693rhvhw5Ip7VvvEUwW29x6NeIlU8fkAWkTwmbnzBf6gTAWUyI5
	R6f8BYDPH+HLHMPCxw8UEkdVMW1zl0QWPT/QMPp67pziySrb5bw3zni+CDMti0GAykwOtbsUfe8+p
	gR82VEAZc7Gp+fdcXE83sVEfz7pK0Rh+lyerA0RtOlb9y7pPMTIJC3//nkO88Rgj9pI58OxmXEGCQ
	DZ+u3ro5vsubMHbOdQsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAC4-0000Rh-TD; Thu, 30 Apr 2020 14:29:40 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUABw-0000Qu-AN
 for linux-mtd@lists.infradead.org; Thu, 30 Apr 2020 14:29:33 +0000
Received: by mail-qv1-xf41.google.com with SMTP id ep1so3087931qvb.0
 for <linux-mtd@lists.infradead.org>; Thu, 30 Apr 2020 07:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U5ED3m6+Kwj6sALrIjVkWFgvqj7cx+1ZuwKWZdIPJMg=;
 b=RYkX/NiyyRHY+TKOC7yJzk51wxzli/4Eppz9HT2YeXHLVjtTwsfzlWh+RWzpvDLDZ8
 QJgrmifLsTthxpFwGP4oC2usAZJmfBJ/UBOAZk8jDgFNP9m9Ylhr1RyGF+F9ht2QzlGC
 7vwXz+mqKfpeIBGbJI4btjUP9VJciZCk36TJib3AyG0YmdqC7vVhb4Ey8KcSumafXmCm
 zoMRKD5+oItKnOaZtE4eLGsSJyJdyHF3ZKhh87DKd1tISIYHgZ69O5Gn4MmXME4jh3vN
 xl5zKoTsh4w7F+6o0jkKl/wFKaminpqQDNrZAcblH2lMbcWOwVNLeslAenQqjOHiheBO
 gVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U5ED3m6+Kwj6sALrIjVkWFgvqj7cx+1ZuwKWZdIPJMg=;
 b=hfJ6bGqPyBClGNydCDcqvm7WWhjWj34E0ygg+d8ydJW7yIUZeKldB4iYVpvh9tkVdD
 c4pvZ7Bjse0IFxLmtU4WEedrrkm6wK+Z2nEDcMvkHu3ZcgQDdt/FBIaGSQt9ygQtZGEj
 mHjWW7iZDhBSoIc7K0z3nycXE9yRVFXZhzMrgEMZZk3HXE2aVisxZY+/Ay70n3wjvq4Q
 mroHCFs+XByOP/3lp83xyPXH5sK4B+w7dEtcYyN6tQzs30/xx/ega3N+i/NumWwyU7Ki
 kxH2oNK43NQSwv4bqxj1eRKABsJfM1vcb9oLMUJIA0IzA9jv5E+JpppZfQ0eNguKS758
 gbXw==
X-Gm-Message-State: AGi0Pubcr3F0xNOk3zETaD1TH0alh8tKHgAZr3+xbqQh0leNEHrkti1y
 ndJ7tO/g3zeHzqGLjQAXEAhGuhfa03H6UCUkq8c=
X-Google-Smtp-Source: APiQypJJ1uAtqEB36bDSqXxq1e5FOGinYMGUUiZN/OPnh52XZW0tdCZ2YQY2i2XhxvgIKzWc2WyHX99y5BgRP+kHuro=
X-Received: by 2002:a05:6214:1342:: with SMTP id
 b2mr3137603qvw.171.1588256970781; 
 Thu, 30 Apr 2020 07:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200113145622.18357-1-arne.edholm@axis.com>
 <CAFLxGvzEHdxDKfNnDxMXAd0Fct2Yo1+sJDmKfT8eUwUDukRYXg@mail.gmail.com>
 <6b360811-a227-c32f-f9a5-660bea4861c3@axis.com>
 <24ef4730-83e4-ff91-21e8-739153a44a8e@axis.com>
In-Reply-To: <24ef4730-83e4-ff91-21e8-739153a44a8e@axis.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 30 Apr 2020 16:29:19 +0200
Message-ID: <CAFLxGvwNxNkwdiovrWQzDfPNr9t2WnXU2VNyNs5caFNZ1WsySQ@mail.gmail.com>
Subject: Re: [PATCH] ubi: Select fastmap anchor PEBs considering wear level
 rules
To: Arne Edholm <arne.edholm@axis.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_072932_462878_C0250D29 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel <kernel@axis.com>, Richard Weinberger <richard@nod.at>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 10:34 AM Arne Edholm <arne.edholm@axis.com> wrote:
> Are you satisfied with my answers or are there additional
> information/changes needed?

Yes. In the meanwhile I did more testing and with your changes the
anchor PEB selection
is *much* better. Testing took some time and then I scheduled away to
other stuff...
Critical workloads are these where a fastmap is not written due to
heavy write load,
but other events like volume change/creation.

A good reproducer seems something stupid like that:
for i in `seq 1000` ; do ubimkvol -N test -m /dev/ubi0 >/dev/null &&
ubirmvol /dev/ubi0 -n 0 ; done
Wearleveling threshold is 50, btw.

Without your patch, the erase counter of the first 64 PEBs:
4    4    4    4    4    4    4    4
4    4    4    4    4    4    4    4
4    4    4    4    4    4    4    4
4    4    4    4    4    4    4    4
4    4    4    4    4    4    4    4
4    4    4    4    4    4    22   4
4    19   4    4    4    4    4    4
4    4    4    4    8    908  906  1

And with your patch:
95   95   95   95   95   95   95   95
95   95   95   95   95   95   95   95
95   95   95   95   95   95   95   95
95   95   95   95   95   95   95   95
95   95   95   95   95   95   95   95
95   95   95   95   95   95   95   95
95   95   95   94   94   94   94   94
94   94   94   94   94   94   94   95

In tests where the volumes are just filled and erased again, I could
not see a difference.

So, your patch will be part of the next merge window. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
