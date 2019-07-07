Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95006161B
	for <lists+linux-mtd@lfdr.de>; Sun,  7 Jul 2019 20:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZLmEyyK0kzfACuYk5Mo0kAFE5QqPsJUTJ6yN4zPFIA=; b=mbJPZGloyeux0W
	fTx8EuGJMDharZ7RGFfs+3FJhoZIyboGv7DmZSLklM0IaD77Uhn+6uJ3Q3ADJ/PnD3XMjZNsATlIF
	wVGVpqfdULMIFqV4S/rrRSC9iRef6er7VdHo3XJKmUYfJZNe1kqLy7SD4TTcR+llPlrg+sJeHyRuR
	JYs3aq/4SAWnzYQ1fiX0mKnjvbC1m3j7FYB7F+H3s1Qadz+HzoOx5MwZqrQsET82hOwtTpnH5I08Y
	RD0lrmr1jWwOluOjRqQRNHO6+sqVCzn1BSiE9AX8XEvqMS4fQVZBa6ARMOMzaUn4jWvbyPmbs5lPR
	4Gp3SfaKVPqwTytuGP9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkCAu-0004Fv-JW; Sun, 07 Jul 2019 18:46:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkCAi-0004FL-SM
 for linux-mtd@lists.infradead.org; Sun, 07 Jul 2019 18:46:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so14666830wrt.6
 for <linux-mtd@lists.infradead.org>; Sun, 07 Jul 2019 11:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FeNJhnw7kPIAjlZ9A1KqDBd0/gUAXLx+l991tdp7HWE=;
 b=lI5hgz4f3lMVnuuucYRij4MuusAiMy9xvR68qeq2bFyW7nq7qNIFafruAs/5vdQF3o
 2QHm5aeHd0g0K4gl7OLL0YpA30HKmR/5gxamsCf5CPLKC0mCV0qKYzw5+E64nhbSFYuU
 XhhSRWFFt7J7mrOkU+C1L+GX04KpIhSKuE2ls1t5EWA0qyZaehrpKCr5JSmBHYhbkIKA
 PoeYFBKHXxyx9n6e/valVPBDBtTOJUU3kdrZMRLu7a+H0/5qSZwzlLV0dZug2IVdW+iu
 8vyIdBVcfTnf3HCAvrpmiSM+hm5SodLpJgmXB95CMJOzMMXHPGIbztsb+O9JDUr28GwW
 9r8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FeNJhnw7kPIAjlZ9A1KqDBd0/gUAXLx+l991tdp7HWE=;
 b=tS64LVJWX9c+y1t1bQm89rK4ycNxxI8Au7mLo0X4wOlBSHbGJm2kaeMKTtVAC/RUB3
 hxXyFGlo5DJznvOVal1rN945S7B3jTWL3UZVZUNSoRAo8B3XjulPB1UA7X1+QOVsaXVQ
 KsAMvJc82bGG00iXJxMeumC4st81QGu1A3bA21AqSMgKv9yPhPlH//OSv9U3POQnwzwQ
 RZfB9OH+kKYRoG3mOAyTbBk0oXNFvLNmtIr99lJoTGetP55QnnDLiANOjnLgoZGoHC5d
 rLOgs/HR5zegG8uR24wp7I9PVL4c4f8M4BtfjVHvy2O9v1Or0oMJr79jmbHHd9SJ4yKO
 cmow==
X-Gm-Message-State: APjAAAUEFCuFY5YBY8j2dTP7Mkk1n95ukLmEv10p67T1sBcX+PqfiSLf
 nXrPOA6oKESj7ikKbMAIKpbIPEvBIe4CzG3TmsIxKA==
X-Google-Smtp-Source: APXvYqxU1tDH0OYZdseEWpc1ICvZoYOj/V+pjGS6Zbeb05OCnENFn50fmP8dSHU6TGuixN8wqASNCeTs6wlpwmEZINQ=
X-Received: by 2002:a5d:53c1:: with SMTP id a1mr14769726wrw.185.1562525159360; 
 Sun, 07 Jul 2019 11:45:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190522231948.17559-1-chris.packham@alliedtelesis.co.nz>
 <355dad1321ed46baa98ca6f47b4d00b5@svr-chch-ex1.atlnz.lc>
 <CAFLxGvwNNWKzbfKvDjAK6rujbr5qtmVAWCDD5aULO4BVKutRKw@mail.gmail.com>
 <365a80987504424f8685faaceb23b468@svr-chch-ex1.atlnz.lc>
In-Reply-To: <365a80987504424f8685faaceb23b468@svr-chch-ex1.atlnz.lc>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 7 Jul 2019 20:45:47 +0200
Message-ID: <CAFLxGvxs0aQq7kLFQ0e1=PZ6SrWK=KdgEeKXmNoXy1Fh9TRwng@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] mtd: concat: refactor concat_lock/concat_unlock
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_114600_912623_BF367263 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>, "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 12:11 AM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
>
> On 18/06/19 10:08 AM, Richard Weinberger wrote:
> > On Fri, Jun 14, 2019 at 5:26 AM Chris Packham
> > <Chris.Packham@alliedtelesis.co.nz> wrote:
> >>
> >> Hi All,
> >>
> >> Ping?
> >
> > Your patch is not lost. We start soon with collecting all material for
> > the merge window. :-)
> >
>
> OK thanks for the confirmation and sorry for the noise.

Applied. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
