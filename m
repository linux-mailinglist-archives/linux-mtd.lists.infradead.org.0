Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54B8D5406
	for <lists+linux-mtd@lfdr.de>; Sun, 13 Oct 2019 05:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gcLFXC31kvgt0cr0Q0qT+ckbYtS0HihFhRupOfJOT28=; b=YlTI7KSkFX2kP0iQ+qAn1tnMG
	erl3gYATHwy8ilzgVe3RO2tu13iZI3A0reUJA0oHO6lI0fiIKf2b76tQo6pGahqtlfhYLXbWx/JVM
	gkK0sxSldrUkAwjZ/4BHTp9zjOXkeXOR5Hj1N599P8ZP4wgL6e+crvf/W+EIy8gIcTJaD2vpfIRCm
	gcY2KpVaKSf+YWZduvhoF/nk9E7a6NUi3tTEZzs9n2Ud1pnplLn54wJCpba5vswOOvRFQhfoP3YaO
	l0yImDQ0wV7vo2heCcHWpsbYXRtQPeMEqbCWwf4qfHHBQosM/QjGL6A9BMIXRj4Nshx0VMhxZmbtk
	B4oq8gFiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJUfS-0003A4-Vm; Sun, 13 Oct 2019 03:35:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJUfL-00039X-AC
 for linux-mtd@lists.infradead.org; Sun, 13 Oct 2019 03:35:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id 205so8428182pfw.2
 for <linux-mtd@lists.infradead.org>; Sat, 12 Oct 2019 20:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=5gY3u0aCy4zmCTe1arRIZ5VrxfLV6LQaaIiHb1rpknU=;
 b=EUFrLrySaQNJsDucxur9ZkwccfYAE8ZMM/A8Iu+h1rA16jwsPdsoAb8hiS/iLYkLBW
 thGrC6CjlUe5bYpFBsHJtxSmjsBvXtrn5aGUBbq9HJObO5PvxCKiGGQXJwuDqA5sCUlI
 97LOGkcpb9i1nz2+E/YyC/zOYmQ9t7I/viBqJfBIsf8WHeg9fu2+XuVPPQtTt9Bwqqw5
 R/zIXEKqe5LvPvhyUt8rtVpwEO6ms1AQ4Ys3Dta7kSxJMBJ1Z6rvWok+cd027P90i8bY
 3k2S5iHToSpNc+r6fcHF9jnoZKvTLkm02FLglsSjjJRaJUvSqnDBtJHzjV1xCUrqCdsH
 wbyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=5gY3u0aCy4zmCTe1arRIZ5VrxfLV6LQaaIiHb1rpknU=;
 b=RkSpNHJD4ykBwPRv1EkJ2zYqGjNHKwsZOPLrqmbi0E/K0o7HQ/V/+mHp/p9/Pe8XaM
 FOnjdLK+WcU57NY6dUO9NoFkrcBU/gK9Fc2xE+jYrtQSb/Y6E6k8PtM0HHhajMMuMesv
 s5V5zP1jvGadKeIgbsnKKM2M1WlRb59c0AvNpmMo+BmlVUkkgh+ijBw3kUHJUO1qvwhF
 KJ2wR/fyEq+753dIsu/y5O+t42edgthCN8kAatdz3BpIIxjLgH5wZt9gkLu/sO3maFGC
 8CpjGMfMCxTMMrhZt/TkLz2CLul/L0l/6/XsEER7tye0GknDSI7N/K57bg4aDxDgiEqL
 QguQ==
X-Gm-Message-State: APjAAAVNaJ+Yzu2f56EOCT3XCWmibBFAqb40Ffxh++TLHHZnB9ZWSXRK
 Hj/9gdyorf5FT99GLhVZSvgM1yzQ
X-Google-Smtp-Source: APXvYqzjFfVf7FhT7EnBWo27nUb5z2dg/sh++pHxbvcwLOp3Stz8PxcXrVANeELv9U58AcKGz3odrw==
X-Received: by 2002:a63:1e04:: with SMTP id e4mr5180878pge.4.1570937729999;
 Sat, 12 Oct 2019 20:35:29 -0700 (PDT)
Received: from ?IPv6:240b:10:2720:5510:5e3:d434:e8f9:e619?
 ([240b:10:2720:5510:5e3:d434:e8f9:e619])
 by smtp.gmail.com with ESMTPSA id x9sm12650625pje.27.2019.10.12.20.35.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 12 Oct 2019 20:35:29 -0700 (PDT)
Subject: Re: [PATCH 2/2] mtd: cfi_cmdset_0002: fix delayed error detection on
 HyperFlash
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
References: <b93bf510-8812-3f82-29f3-43f41d08550a@cogentembedded.com>
 <b146c469-6cc3-885e-3e8e-ff7a5fa8dcd4@cogentembedded.com>
 <b4d19e66-83e6-d7a2-8aa6-85034460725e@gmail.com>
 <4610a3af-302f-dc35-27ba-6b5bb21f8bef@cogentembedded.com>
From: Tokunori Ikegami <ikegami.t@gmail.com>
Message-ID: <9ff3bf56-075c-9a18-3260-391f51e28e97@gmail.com>
Date: Sun, 13 Oct 2019 12:35:24 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4610a3af-302f-dc35-27ba-6b5bb21f8bef@cogentembedded.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_203531_353851_FBC98DE7 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

>>>            if (chipstatus & CFI_SR_SLSB)
>>>                pr_err("%s sector write protected, status %lx\n",
>>>                       map->name, chipstatus);
>>> +        return 1;
>> Is it okay to be returned 1 for the errors CFI_SR_WBASB and CFI_SR_SLSB also?
>> Before the change only CFI_Well, SR_ESB and CFI_SR_PSB were checked by chip_good().
>     Well, pr_err() calls above spoke for themselves: all bitmask 0x3a was considered
> the error bits. But I can change that back to just ESB/PSB if preferred.
It was mentioned before as it is enough to see if ESB or PSB is set to 
know if write or erase failed.
>     It's better to remove the diff you're not commenting to.

Noted it.

Regards,
Ikegami


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
