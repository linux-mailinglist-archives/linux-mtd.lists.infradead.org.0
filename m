Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05E3B5806
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Sep 2019 00:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6B3x9G36//4nRwSPSoSzxajYIviKmm55e3fhI6OyalA=; b=OFpwVjBy5ny3rNf6Zyp864Uvj
	bxpjTeCYClGBRc2Sp8+hJoVlq4ywx41dbbavzNTV0CU2QoBpRn1h58UEvK38VfjIuAswxwrvDI1Nz
	m/eqGaeBci+dKNn9iDzVHsJuMMRjHfjWdaMkrC5rv9T79/674A9khnj1Qm4IJYOo5lBlTC5E+xGZS
	3VxscrmjW5iVYhwHopwDp9rmmxxXnQuEEYjZ2Q1RQcpiIrLXXpz2oiY5MUWhHvHP/cUFFWAMGggFa
	f+wnmOS5xpbpK9ev8hzzALO9xqmrGWFtYGJvl8lw6hjyTAqh5iwYK6QcZSTLt9mn8ip7JepDfnxnq
	N+erY4Zag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAM1m-0005z0-TI; Tue, 17 Sep 2019 22:32:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAM1d-0005xe-3K
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 22:32:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id d22so2145600pll.7
 for <linux-mtd@lists.infradead.org>; Tue, 17 Sep 2019 15:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dmHKlC95wEkb+HENLwm0wnzogMC58TL2IKPX+eVUAOk=;
 b=rdYlYU4iWu37JaHMYZYnsFvPb4IVU+ujYbjqRjhooffq05DM3nAh3j6bzbFqnl+Z+m
 u9ZAKZlglBUOYenB/3BrqhJ3tLmlHyZCLaO3E/Uya10zG0S2a7lm8L0FYkuj/hWdLa93
 4iShr/m6wuZq3U7YBdeXaA74t2uDX31eoste1s5rVd8Hm6zeO6vifII9CTxcFrqfmY/y
 frUpAk8OmB38+keSHKuVEZKnZRV3DHkXPFHewW+TK4X5qpWno7yju2r+e22NP8NAlFQc
 t0q/kHRZ2rZWLYq0mEi1eGiRbcw4+Iltb8k661e/Zg0AJwXBqcaJCA/7S9I5vvDxsGHl
 QT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dmHKlC95wEkb+HENLwm0wnzogMC58TL2IKPX+eVUAOk=;
 b=oixetf9qmjQqsU/so9WYnkBJiTYAufiJ0XJQV3YrZo1wRU4G8OLbE9nWtehtKrtnEm
 slx4I2C6EMZbb/WloCf49LEFRepcYwP7Now7Wm3+Odav/JS8JaGz1QFZ2B6fnf/vxvnA
 u31FGiXi0KpVvcV4FGL6QowfFvrWAgoBvFdSue42XFK/vBCzvJX3wNuwLodoTVA/mWXb
 gt65yEv3ZUqqrpFddSydfmPnEUz3PFzXcHEZGshph8yqUrlG/nAmL/jfi8QOpqxmGoXy
 Hyh95rJE/Q0SX5KfkCh5ddaM98YYPEnGISTYhKsGHTSWfQplfkvDyiR4t9diChUKieNg
 PM9g==
X-Gm-Message-State: APjAAAXZyurHpL1l5yQSrDTONl5dEe2bQ8P9ZZONriDqhlQr/Tirq/hT
 kSO0QFD4FSAutAqrC/IJ5P4=
X-Google-Smtp-Source: APXvYqz2kwMiV3IzxK9Tf5xKPsp4eqjTJDvh2n17maZJlAv70QrBj7iUZdXyac4Xthx4D2Em5ItjLA==
X-Received: by 2002:a17:902:9b86:: with SMTP id
 y6mr1010494plp.217.1568759563045; 
 Tue, 17 Sep 2019 15:32:43 -0700 (PDT)
Received: from ?IPv6:240b:10:2720:5510:a182:288:3ffa:432a?
 ([240b:10:2720:5510:a182:288:3ffa:432a])
 by smtp.gmail.com with ESMTPSA id v5sm5003146pfv.76.2019.09.17.15.32.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 15:32:42 -0700 (PDT)
Subject: Re: [PATCH for 5.2.y] mtd: cfi_cmdset_0002: Use chip_good() to retry
 in do_write_oneword()
To: Greg KH <greg@kroah.com>
References: <20190917175048.12895-1-ikegami.t@gmail.com>
 <20190917181127.GD1570310@kroah.com>
From: Tokunori Ikegami <ikegami.t@gmail.com>
Message-ID: <7c0113e0-d455-e3e6-86fc-45429be196fb@gmail.com>
Date: Wed, 18 Sep 2019 07:32:39 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190917181127.GD1570310@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_153245_144499_4A439861 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, stable@vger.kernel.org,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


On 2019/09/18 3:11, Greg KH wrote:
> On Wed, Sep 18, 2019 at 02:50:48AM +0900, Tokunori Ikegami wrote:
>> As reported by the OpenWRT team, write requests sometimes fail on some
>> platforms.
>> Currently to check the state chip_ready() is used correctly as described by
>> the flash memory S29GL256P11TFI01 datasheet.
>> Also chip_good() is used to check if the write is succeeded and it was
>> implemented by the commit fb4a90bfcd6d8 ("[MTD] CFI-0002 - Improve error
>> checking").
>> But actually the write failure is caused on some platforms and also it can
>> be fixed by using chip_good() to check the state and retry instead.
>> Also it seems that it is caused after repeated about 1,000 times to retry
>> the write one word with the reset command.
>> By using chip_good() to check the state to be done it can be reduced the
>> retry with reset.
>> It is depended on the actual flash chip behavior so the root cause is
>> unknown.
>>
>> Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
>> Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
>> Cc: linux-mtd@lists.infradead.org
>> Cc: stable@vger.kernel.org
>> Reported-by: Fabio Bettoni <fbettoni@gmail.com>
>> Signed-off-by: Felix Fietkau <nbd@nbd.name>
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>> Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
>> [vigneshr@ti.com: Fix a checkpatch warning]
>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
>> ---
>>   drivers/mtd/chips/cfi_cmdset_0002.c | 18 ++++++++++++------
>>   1 file changed, 12 insertions(+), 6 deletions(-)
>>   mode change 100644 => 100755 drivers/mtd/chips/cfi_cmdset_0002.c
> You changed the file to be executable???  That's not ok :(

Very sorry for this.
I missed it to fix to not be executable since it was changed to be 
executable on my local environment.
Anyway I will do fix it.

>
> Also, what is the git commit id of this patch in Linus's tree?  I can't
> seem to find it there.

Actually it has not been pulled in Linus's tree.
But it has been merged into 
git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next for 
v5.4-rc1 as the git commit id 37c673ade35c.
So I thought as that it is okay to send the patches for the stable trees.
But should I wait to be pulled the patch in Linus's tree at first?

>
> thanks,
>
> greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
