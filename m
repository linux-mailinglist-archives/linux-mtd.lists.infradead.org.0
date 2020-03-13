Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1387184D7E
	for <lists+linux-mtd@lfdr.de>; Fri, 13 Mar 2020 18:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSPCLWIHFv/7cfeTtMP+g1M9u5Ch6gFPfw2heX5eapw=; b=a4Kz//T+/5P6RW
	5+PgEJ5+Ff//pZAESAQdBRYFg/R3p9kOZMA6oBrVFZROKlFsnRqE3WkN+i3w2vEnao+EoMzPEB/+A
	irZZqGD6ffr0C9jX0CQqFwOW4Vj00aHTweT4hJLFYrq7Vvb69rjyL2py4GRRqz3T72JOWqRH4W5fA
	IBEKUQ1kRgBIhEVCNKTkfo62Y2wQkM3rn/0Ec9viRjCKAW9uYr7nEwAMapp/AEUZ5CI78HiQnKQZm
	Ag/01kix6VHpGBOHV2s827fcYYgo74jNEKP1sYUEC4cQV+M2Brr6MQBniyymUKfJjGhysqRXl+3Q8
	GQ2V6BeHsyXg1CU9A+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCo0o-0003KV-HM; Fri, 13 Mar 2020 17:22:18 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnzn-00039k-01
 for linux-mtd@lists.infradead.org; Fri, 13 Mar 2020 17:21:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id j11so8526941lfg.4
 for <linux-mtd@lists.infradead.org>; Fri, 13 Mar 2020 10:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S8ol+aCQWfmc0Z8es3pJShdbNVzJAyKuhxdz2Y8nQ7I=;
 b=uYwRbsEjB+XRhUiZo4qoCEWwOZYRugRDu1YpX+qfEmZWexQo11MAmBzChCEg/CdFUV
 ZW1ERrmKGQRl+0iMizeaTOLk14wr39Ej05XrmuXWlq1gDaw2mh/GJOg7xZXrw50HHTqX
 21uZlQJDd6lyqdyykz1KLcjY72jo3QEEgR8xhFehu5M87A4BG831Eeh63a2TTudYyVbd
 a7KGaN4Zv8JnuAH6WUdqZ5oPUhyPzKrgCMGw26AFrUTB6A3DTGGoT2J02Yj0Ba9rKz1p
 /AD+EvhoKXXhNnHNxp5wLfo3MAn1vgz+7SpfEi893QhvOnqQHxNnVEV7i/+WXZoFaA21
 drWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S8ol+aCQWfmc0Z8es3pJShdbNVzJAyKuhxdz2Y8nQ7I=;
 b=tw0pJSQunwrRpSlduL1qJRcYWd/TgLOKIXKrqlO9biH5Ar8VTZ4++7hdtibsRHCT/7
 LDrKuQYHykEMR6Uq/qOfVBhLLA6QKNswbbl8AT8zgLfumBsEzQ+emkxgzT3Ry3btDluf
 urKDWxCi60XXNBoujdI6FySrs7JdVatl0eWdxs4P24QhdIB9hMFhWUHsx/AhBvyj3c4J
 oYIolCLTQSt+09YmHfMu3h9mTnGf0rfFIv97dyaHaY+sO+sfmZhBoznQKxFjhJZn2ZEi
 v1IzddMHpwFmgroXOowEYx3HeBww8aS4pqbjAJFZf6LhpPNI6Hm8QJVlyW/EDSMbeABj
 4YdQ==
X-Gm-Message-State: ANhLgQ3ebnWEu7wqcTqhNrfkGnDD1EYXWe7/sFEr9Lb0Es80brUayL5M
 0hF0UKH/MpCugBq36pH5CDoMgxDLs7fZxVXt2xo=
X-Google-Smtp-Source: ADFU+vv29Gep1CuoIYZbXZEIoH7OutCu1R14wQQsQMbrFJzqXk03SeYuYiKociE1NY8KeQxfxhcqJtRAY8yCBECcfYo=
X-Received: by 2002:a19:cc11:: with SMTP id c17mr2137132lfg.86.1584120059230; 
 Fri, 13 Mar 2020 10:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200304110830epcas1p168bd480847959dc497ac5cc272fa2f80@epcas1p1.samsung.com>
 <20200304110800.20658-1-js07.lee@samsung.com> <2264052.42fd6meZLV@192.168.1.3>
In-Reply-To: <2264052.42fd6meZLV@192.168.1.3>
From: Jungseung Lee <js07.lee@gmail.com>
Date: Sat, 14 Mar 2020 02:20:48 +0900
Message-ID: <CAPP0e=MOKw+O=q-PjfrEQo66HSU0zy42O_9=WHmHadYx_d6mfA@mail.gmail.com>
Subject: Re: [PATCH 1/3] mtd: spi-nor: reimplement block protection handling
To: Tudor.Ambarus@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_102125_710913_68697E60 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [js07.lee[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: michael@walle.cc, chenxiang66@hisilicon.com, linux-mtd@lists.infradead.org,
 vigneshr@ti.com, Jungseung Lee <js07.lee@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi, Tudor,

On Sat, Mar 14, 2020 at 12:22 AM <Tudor.Ambarus@microchip.com> wrote:
>
> Hi, Jungseung,
>
> I'm going to respin your patches on top on the what will be the manufacturer
> move v2 series, https://patchwork.ozlabs.org/cover/1247794/, I want both
> included for next.
>
> On Wednesday, March 4, 2020 1:07:58 PM EET Jungseung Lee wrote:
> > The current mainline locking was restricted and could only be applied
> > to flashes that has 3 block protection bit and fixed locking ratio.
> >
> > A new method of normalization was reached at the end of the discussion [1].
> >
> >     (1) - if bp slot is insufficient.
> >     (2) - if bp slot is sufficient.
> >
> >     if (bp_slots_needed > bp_slots)    // (1)
> >         min_prot_length = sector_size << (bp_slots_needed - bp_slots);
> >     else                               // (2)
> >         min_prot_length = sector_size;
> >
> > This patch changes block protection handling logic based on min_prot_length.
> > It is suitable for the overall flashes with exception of some corner case
>
> What corner case, do you refer to EON? Are you aware of other corner cases? We
> should be more precise, for easier review and understanding.
>

Yes, that is eon. eon is the only corner case I've ever seen in 3 bit
and 4 bit block protection.

In 2 bit block protection case, a significant number of flash fully
use available bp_slots (2 bit = 4) regardless of the above rule.
That is the case with microchip, catalyst and more..

Of course, none of the 2 bit block protection flash has been set to
lockable so far.

Thanks,

> Cheers,
> ta
>
> > and easy to extend and apply for the case of 2bit or 4bit block protection.
> >
> > [1] http://lists.infradead.org/pipermail/linux-mtd/2020-February/093934.html
>
>
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
