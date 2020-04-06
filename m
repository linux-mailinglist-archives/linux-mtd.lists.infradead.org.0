Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4738719F5EE
	for <lists+linux-mtd@lfdr.de>; Mon,  6 Apr 2020 14:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X9zUfrfolUjQdokZ3Czx061aSY2Dc5z72lQ1Lzhoy1k=; b=J1aooPmwxxNL/5v6NuShYKmRf
	24+/Oy76hTe1vPQatgvjvSlGS8pCI+lsgxv8VnOQBF3v0kQFawPvY7u4CkdLDRHPE9O8U+9ws9Z2w
	8xosGm5kM1O/pqHY31pbjsljLn2jwftpb8C7zEiVHRz93HVmVtieBUzygyqmBjkYzdaRLW382Q0h5
	QkkAZSpqJ+UpD7GHlEWhw2PN3u3JsoiB44tvTgq98qQZHbCOncejrqWsGGVS6mWH7OD0Kp4TujVtW
	44HluMqmiMvIrOz3uSZf4hoYydrTzVlErZYFNKbRgnKCn3hH5woCsx4P10kjVLjyMpffyBqbWHkOT
	2VTUCKi1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLR32-00052O-Mr; Mon, 06 Apr 2020 12:40:16 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLR2l-0004Y5-IZ
 for linux-mtd@lists.infradead.org; Mon, 06 Apr 2020 12:40:01 +0000
Received: by mail-wm1-x336.google.com with SMTP id a81so15624457wmf.5
 for <linux-mtd@lists.infradead.org>; Mon, 06 Apr 2020 05:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=oZScMFvcrgYzW3m8ghy1+YPoCxwK039jprfSLC8eF3w=;
 b=Tszal4kzpiCuPCX0GI19uMTRec/f1aMAfLaSqxOlbuKSj3vE8t2kVn7JkTO2AVC+WT
 ezS44PVzNjSrIIXRBJjE9zkublO1fPp52gAc6Yi4X4ZOuXbcDsDaCUstL1IZvh8pmtQR
 NdEB9+sRk+Y9Ttey6DAP3v0gGocV5Hed9xQ74/xNDpCwELs39daFyuhlgVcFXpu++IMY
 xj76uOOQt9aQpEzvPn3fpsGrydZcI2JcpE659ruzNliJ4Rq529uDC5yY8vstchNkOZGK
 Rx3mj43emPilHRzdVBmxrTXzGIwzDBCVuNvIpH827CvuniBo5tiD4XrguaPEzHuH+ohs
 QNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oZScMFvcrgYzW3m8ghy1+YPoCxwK039jprfSLC8eF3w=;
 b=Q73cSFNd8cz+RayJAewKtLYj9b2kwxjCUaJRIAcR5qMfEdHxB2QF0zTgh9eujcA9/X
 6uiq0//ZOYQIgdCcnYdqBTz2sScq3x75FjCenaJspZJf5kDpuwPZnDffBRC+b+E76tjN
 /UmU9B9m4oSowTjYWiAcdAqcRA25gkOltnQKVj/gB+bkvLp4szzJUL3nz2C5K1ZxBs3F
 Xvv6c7T7KJnCECxNk/Ww+wGcD152clZnRUbZl78LAwx9cpz/XYNkgNbs1rQsPimHIKvb
 W09B4omAhQ1utb2g9sTMYgB3t6bxoyuHRh3ia1iwZf4dKm5Zn5ZCD7IV3Vr2Z5p4CdqE
 6fxQ==
X-Gm-Message-State: AGi0PuYfIfNUQlIm0aI2FYgvD6L+f9DyhTNU6wjp9qa5hjEJuEz48Xau
 H3kg8linXzC2SwJYTGSpHl3TRK1G2Bg=
X-Google-Smtp-Source: APiQypLRfZTaMedM3YcesdLFw5VBOsUT+tRgS8v22ZY48eGjb2PqWll1DOmIjiL0LYVsib1zMmtv5A==
X-Received: by 2002:a1c:4e06:: with SMTP id g6mr13349556wmh.186.1586176797622; 
 Mon, 06 Apr 2020 05:39:57 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id c190sm9330921wme.4.2020.04.06.05.39.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Apr 2020 05:39:56 -0700 (PDT)
Subject: Re: NVMEM and environment variables.
To: "Steven J. Hill" <sjhill@realitydiluted.com>,
 Jean Delvare <jdelvare@suse.com>, linux-mtd@lists.infradead.org,
 Wolfram Sang <wsa@the-dreams.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <5645947b-0b42-2ae8-b568-4abe8940a73f@realitydiluted.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <f880292c-dffd-b380-4eb3-8d61ad2f5dd2@linaro.org>
Date: Mon, 6 Apr 2020 13:39:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5645947b-0b42-2ae8-b568-4abe8940a73f@realitydiluted.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_054000_124728_80F87825 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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



On 02/04/2020 17:24, Steven J. Hill wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> The nvmem subsystem shows promise with regards to eeprom and efuse
> driver organization and utilization of those values by other drivers.
> Where it seems to be lacking is the use case of eeprom and environment
> variables accessible by userspace. It seems silly to have a nvmem
> driver with a single 'nvmem' or 'eeprom' binary attribute, but still
> have to use 'dd' to get individual data values when they are declared
> in the device tree. Why is a binary attribute not created in /sys for
> each nvmem cell in the process?
> 
> I played with a mtd-nvmem driver that treated each eeprom environment
> variable like a mtd character device. This was an idea so horrible the
> code will never be public. I also tried a hybrid nvmem driver which
> acted as producer and consumer, another monstrosity. So, in summary
> why are binary attributes not be created for each nvmem cell? Other
> design ideas are welcome. Cheers.

There is no strong case for this requirement!
In the existing design userspace can read or write to the nvmem sysfs 
file along with /proc/device-tree/ entries for offset and size 
information. Is this something that does not work for you?
Or what exactly is the usecase here?

--srini





> 
> - -Steve
> -----BEGIN PGP SIGNATURE-----
> 
> iF0EARECAB0WIQQ7FeQaKpedass6DAiDIrkfYhzfpwUCXoYRxAAKCRCDIrkfYhzf
> p/AEAJ0X3cCZvbpfplAepmJ+P5SCUI132ACcC2zVtOeFm82DvRePSTri9qJtdaE=
> =5yat
> -----END PGP SIGNATURE-----
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
