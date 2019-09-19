Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5266AB7924
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 14:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gj9VAqky3rlSGIiyVhRvNhotI/SXHlb8JuG7bzwSl4Q=; b=JCZEJmTOCj4dXv
	oLnm869WzQYGXyz9DIavwo0BP0yYy5SfBW/tt8/AyrMWTZ1SkSJuLT9o6+yq/fg6kp3Cv9LIzwN4Z
	VEp8J0UdvW4tcAIIrCi5uqJz/sRB/n/+ljG+x9qn5J3+xdZLNsVk4uUTYZGI2htkqZqJNNkRtBZCR
	Grv8UTFQ+egkb2d8FE9XG3N+i0aRTASJhhkFpYgkfFV5d/tIAxlW/CVT9aosiuIXEYmPJQN/kfi8G
	8h8v9PB8DKYaOZZZw+wGmPKH/rLjytUOnQap2N4ULUQZThReHxFhjtwPIatUDrKmr9OrYyzosKzO6
	6zMMqz2Vqk//tq7tmleQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvMo-0006nX-Uv; Thu, 19 Sep 2019 12:16:59 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvMa-0006mo-GH
 for linux-mtd@lists.infradead.org; Thu, 19 Sep 2019 12:16:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1568895381;
 bh=CJpu+3benbeqrz8hYMxDJfQ5BQ0/dqDtI/1/aYNreUs=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=g/6JT22Gw75KQqErQlGOO8oQppwTrs8wcisA9M2d4+V0K0rvBKPK5ox2fGt1+DPiX
 WrR7W/YoUUiUC0i7+8/I9FA1h4tyz1Q2eZKHfLmR7LxTgExK3AyUlkf5YwbULw1Xpv
 cpdTA5w77HnQyqD4OFRewEJG/i1kjblpwy4/fUYg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.191.36]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LmQS2-1hbJck3yVe-00Zzkz; Thu, 19
 Sep 2019 14:16:21 +0200
Subject: Re: mtd: st_spi_fsm: Use devm_platform_ioremap_resource() in
 stfsm_probe()
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mtd@lists.infradead.org, kernel-janitors@vger.kernel.org
References: <e1d32aa4-7c82-64e0-b7c4-33c94d9a2769@web.de>
 <20190919111014.6c569cf3@xps13> <20190919112937.GA3072241@kroah.com>
 <20190919133506.6e46601f@xps13>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <4b467bab-db44-da99-b1fd-0b6cc4ac9547@web.de>
Date: Thu, 19 Sep 2019 14:16:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190919133506.6e46601f@xps13>
Content-Language: en-US
X-Provags-ID: V03:K1:/ZxRwPOJYgPd6c2XChuGjk8bjZgKCqWJylAGWIKvBGlNpIKzDYQ
 VviCdRZM4gZFfDCjT8QP/YfWrsemt5UQlWscOVDWYFH1vXEtIGbpjtfoVvUvIm1Sk6V1GM2
 UrkIxS+sstncgL/0yrQexpl3iAd5fo27LqbOCI5Njzeg4+Xg6k+h5ZovySQekuVYCNpCY61
 /V986lbEsfvBLE5r72ZRw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KNjLGHLEwGU=:e+1cD+EzYCMfnkui2JZevV
 pZzD921wunY0MbdQM3F8A9CIQIazBkCaAZGK9ZZ01alnVjiv4/RG+FEWPlFQqgFAcSxrznbF0
 PV8RkR6UWKG0IEvlbdABCSCEb49Rtng7n8Qwl9KT2jia9d4x+fvaaX5X9ZwuFtNCHoXVqVGkg
 4GV2gaspACB70qSdtJRtb3NhaEeSrd1bn8/FR2Uf7mIipd11cVCynXf1T/QKnEf/1X1eAKp9h
 lT8u5hz6Tm75v7H6oRC0qf2kIcUsUsZ/7faon5VIiuF/yO6u8iDKeE2hbkZ4hab/kdBvs+XGZ
 /KftBo4U9WweGqOsbu+s15vC4fDF+JWCWV3Y4w59+98Lfborwzci80N9gvsR/myE0cjE2Qsth
 FpkI9c18BxW/hNYO+IjyEb1fI6qCvuy5NHvUIQMrF4DUJ8eoy5Qaovt7GbAk55uGM2CBHvDXJ
 HLaKr8XI/uK7CnmwZpKBvGc7wiNrX95BXMSv5XlfAWR3a/UT6unqJURkEslc1RmNZ0tKuTfFW
 H2kKlsG2IW39AI5dMuuHahnUhcd+TeYpsWqDYzlSlzYdX6HfFgq2AexfMRZk+en1LRFzbj8BI
 o1MN5DHTz5Q7BLPAQR0zkJcIMojfU0Vd04fhyKlj62wCyeH2d4QvEBlICF7qxO22LCbG1CrPr
 gGyA1076IRN0UNPZj03eGi/TXyYX43JlH8MsI9RkRcnMDFT1DQtlnt0nI0vssip5vugcnuELo
 vfU8QNnWeNttBhlZrdz6DL0SOo6nthllyurf2D6N2Lr57TR1o6GFXqOL22iNG1rPU7EBUgKwB
 gB4YYJKUkms/OIV6ActnYxTYeYedOJFxMoIBevvRwhs2UgPY0wml2Des9xNFgsdOfzgbyUfrs
 KfaklCu6xojaFFy+UK+GFAYRMEzBR5X9lj/Qf4VLlFgvD5AirwzfnR9ekqyTxevVfLR+3ICdL
 WD7l8sqn/WvfmOkT2u5LOGc0sGqXcNKzXiB/NyJeP8tw46kkNCQx6KQ7u3XPDOmI349fk3FlK
 glhWKG4Y1VMLbEM6fDQIY3tDGckTUVuca3iesNLJf4aIjoY/2lB5p45LtHLU8+m2dnKBQ82Ws
 SXix87Z/VdVW8Wrl8p25s7dCGzA9wIokGoc8qIhgh3iLQ6NJ9P3D5NgMFs8Ff6fHWdM7t8NXG
 NqGCrpPAw+VdOFktNS1dEchw/5CRAfJVFjGvJv+refavp7hndgoJ+K+PbpnN52NuIpeO7qb70
 vTtHaNZrmUd4RCVHxoWJtBZ+OqTp7P00nEuZ5L0r+SsoU5D0YGK8KaLY11/w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_051644_835664_01DD5F2B 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 David Woodhouse <dwmw2@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, Armijn Hemel <armijn@tjaldur.nl>,
 Himanshu Jha <himanshujha199640@gmail.com>,
 Richard Weinberger <richard@nod.at>, Thomas Gleixner <tglx@linutronix.de>,
 Brian Norris <computersforpeace@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

> Oh right... Sure, I'll ignore it/him as well.

I hope that you will still care for further possible software improvements
because of presented transformation results around collateral evolution.

Regards,
Markus

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
