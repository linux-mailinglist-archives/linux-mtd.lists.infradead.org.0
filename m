Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E56F16BC14
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Feb 2020 09:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvExBbNq2XT++K5tCnc3RRYBzHLwwVeu3FT1D5h58BQ=; b=VAAts9f6o6N77p
	i4Z4WFfQFtelRrW5+PWTQ3YALFOgFFbzU/DRr9KkHgeUijoHG533N66dcP7cvd9JADHVOWytW1ara
	b25rCNGB3/9QL+FvMeePEdW0XQFxMUzUcfFXpCE1RBOhrH1Npak6YQfA0ioRjP1np1jZiR8UGqByh
	VlUP1B/ouEeNQ160pHYDgG/Owlt88JL6RGJqQAITfqmOmFLk6sYAn/bpwLJZ0LASIGVVkzMyjttIB
	kSCQYFbustMnrEaideHirpmDiwdNNGIkFsw2sgx1UC+zTdkV3pTfjCDye64HfP+cycNUZg0/zfF72
	igO82eJDq6Sjmo797Bvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Vqc-0006ev-WF; Tue, 25 Feb 2020 08:45:47 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VqP-0006dK-Sd
 for linux-mtd@lists.infradead.org; Tue, 25 Feb 2020 08:45:35 +0000
Received: by mail-il1-x134.google.com with SMTP id b15so705610iln.3
 for <linux-mtd@lists.infradead.org>; Tue, 25 Feb 2020 00:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=XTRAZ1qsWWAQqUw5vTBluYNh2RF86NgOV/opT4oKpw8=;
 b=bJvJpAamxwwTWpKz2jM/p/0bdz/gwqFolyeBaEIyJffcCTBQlkZ4yeUp+iYHxdWUSc
 5mm9NhrtsNDFiCkpEn5cuuj5VdIesXh3wJA6EJZS8x2gkaPsqO9TsewSJtmYdPaltwNU
 yX3nOZXGgVFWmYVeu0twM92Xo4Ls4MJEmCJ4MJ+OuypSCyJujpLMD7LrwLegIxf8IyP7
 waKerTzk/TdB7OM7UFBHLB4kutC+GxUnYsNaEEyF+990iadNijhZmC268ziyOnRWsukT
 dvoDovUrPOat6prqRa+Vsjq8/fJC07mBcjwX/YE+YfDgG0ZG9g1RT5oSLnzT1ddc3PZJ
 0i9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=XTRAZ1qsWWAQqUw5vTBluYNh2RF86NgOV/opT4oKpw8=;
 b=OrAcY7vF3Fcppw1+9KwBxREXi80lNavltT343mN2E/oRqTz3REBCiqkZnxfGpK07WB
 hL78S4o0r5Qb08c39xoEr/J8JzeOAGdBWSTMMntNseGNtB3VOidG3f8GiaBd9Ra0hB1S
 THRIKvZQDHhxyMh6+i/w5KFGRGJeNMpSbYMkzOswgw7otn8BPgtMjnuIk7Kb7DFkRIcc
 oithlw8T3inFt3333Hq5+5jP9xEXFLdSR/NqMVIrwds4mDp57ifYuMlHNhc6C9KETbjN
 VTscDPj5MCpzjVumAFmK90PUZKGzI0PzeurUZmy0G10nMkgzBDjH8Erl75yFVRypsmCY
 xmqg==
X-Gm-Message-State: APjAAAWN/8RZERdILHOv0Pdp/AD66oFzxfO0MacTgACfDk2XMKRrmXjq
 p3NwkgHgEkmXjVWdhr6wZz641GMLrL22Y4WS88oCqw==
X-Google-Smtp-Source: APXvYqxJZxLK3sgdRArb5VAQAv1sPrrlEJ5kgd3/Muypx+mgd+V1qtVro+s1NLVK+XvFx8kYsEfddNsfKjMDRk4d8W0=
X-Received: by 2002:a92:5855:: with SMTP id m82mr65255839ilb.302.1582620332915; 
 Tue, 25 Feb 2020 00:45:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Tue, 25 Feb 2020 00:45:32
 -0800 (PST)
In-Reply-To: <CAFLxGvwUMsXCO2yG27z7av3eAajwEzuHafX9Fimejc_u2mpGig@mail.gmail.com>
References: <CAA=hcWQOxh-FDU9iy-juGySDdxDRvj7nKDOWebQS7zF7RJ+fSQ@mail.gmail.com>
 <CAFLxGvwUMsXCO2yG27z7av3eAajwEzuHafX9Fimejc_u2mpGig@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 25 Feb 2020 19:45:32 +1100
Message-ID: <CAA=hcWS1WPA-Sb93rGgXYFnJckYtwypTXS2LTZ=HhLRiUfYnyw@mail.gmail.com>
Subject: Re: File IO write flush time span
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_004533_947457_92006639 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:134 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Richard,

On 2/25/20, Richard Weinberger <richard.weinberger@gmail.com> wrote:
> On Tue, Feb 25, 2020 at 6:58 AM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi,
>>
>> If I write a file to a UBIFS volume, how long the mtd will write it
>> from cache to physical NAND? I try to understand in what time span
>> those IO writing in cache will be lost if the power is turned off
>> (lost power).
>
> What cache do you have in mind?
> As soon ubiupdatevol terminates, the volume is in stable state.

I was actually talking about applications write files to a UBIFS
volume mounted as RW in Linux, let's say if I write a file by vi, will
it immediately flush to the NAND or will it stay in cache until some
algorithm in MTD to erase NAND pages and flush the cache to NAND page
based on size of output or time, is it correct?

Thank you.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
