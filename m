Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBB9D3F25
	for <lists+linux-mtd@lfdr.de>; Fri, 11 Oct 2019 14:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w8XMpGC1TRMSWFqGRqoT3J35xeeQTnt5/fEXd6B8rM0=; b=fDDO1wMJWc17VebGeF2UIUkAAA
	k+y0U8l3XSF6IRZLsB23X3kcRBkMTDpCECJoZzM8EtkLJu+F7i5sgDjUeM8O9Qd7GYjM++eQXx3iZ
	U3VRRRXiu6WkrZhLLSEo8SqdOdepz0fv5wcj2LAXwtxwK2jUiXW+Ptyj47ZkPMtQIcd3+RNLlWf1A
	C/yKo0Hhd6pV1xbt1bpdKPVrS1Fowug7M1KtdDqtkOnO8e00FbVWnfZM7XktXU/vAoFmJywkvjhtH
	VcrQnO/g3oWyRG1BKtmHUNbONFshpI0XbSVyrTZ6r8/NfWTcrlzd9Y/bFsAofmkZvON+GpWT0S5Ld
	0XJtg/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItdn-0007l0-4A; Fri, 11 Oct 2019 12:03:27 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItdY-0007kR-HE
 for linux-mtd@lists.infradead.org; Fri, 11 Oct 2019 12:03:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id r22so6860929lfm.1
 for <linux-mtd@lists.infradead.org>; Fri, 11 Oct 2019 05:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:references:organization:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Xp/ZyIETh1HEGsph1G4d4+7Ok/vtzP803vnVycTcLoI=;
 b=0gQtd4n14KKL2hGUpykpfRaSYUjLsxdenovJTzadA9eX4txSotPDo4P7rc47FbqTyn
 6jRgRnBGUEMoCyS0UC95SfMNQgbBwjmhZijo5yk30ZUUAjHahakwzJOxRwHLW3nghiFQ
 Lx6N2Z9wC7JH9+QBAhf6i0Zyg/43+UPst9ZWVMpR8QwkW7/60NbBre3UyXQEPeZZnwbV
 /nnel70F/oqvqxFxxiAZbi5zkNG0nsK4YRmZp5xUE+ZL7I9CusX5slwxT/QogQhR/Yqd
 avd+fwGX5x8yA3G2t4h5SGaF7qqc1vpkuSLJIUEbImUO8if4sAHQq1puuDpTCTbv9C6P
 b+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Xp/ZyIETh1HEGsph1G4d4+7Ok/vtzP803vnVycTcLoI=;
 b=O85S1l3K4umwRFaKNubenlwU/rBxRQEEhGzZDZtwkUsYlwcYgLEGcVDZdEOTihb8F+
 mfKGTKVKs9RdUF+LNqaEQ0hKYRXcZ8tKaHq/QAqVBZ7tW7ebJ27lECjFdlxtSu4kNG3u
 9pbtXWB6yw3ZfloFlCBlCByJqAj6BLVF4CzohMEFKSUCF31bZSy1J7uKu6CTqOG0/3KQ
 8zuZgfYtikld58VGulrVv1UAoOTcdf4lqyxYJyoPYYcCkfRpj+KXYqGMN36MTqm6ldMp
 zWyyuChena2ddOWXmop+nunh5IX2ef9mi78Y2swwB/x36mQqcEPgK0aDP6daEXUyetWZ
 v0SQ==
X-Gm-Message-State: APjAAAVHIxZt5uj9XufIkbfsB1TYD5IuPygpsS68eTtbecDem1336U6K
 /Gy9QaZuNmhR2tZVQw9Ryu6hNegkAvxExA==
X-Google-Smtp-Source: APXvYqyi7Ff+cK8SYS/CBXd4AzuYh3JjlE/yekCE/wDZyJUr8iVWmLP9TdLyUZk3cU0xu7q/OMY/pQ==
X-Received: by 2002:ac2:410e:: with SMTP id b14mr8456231lfi.110.1570795388795; 
 Fri, 11 Oct 2019 05:03:08 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:4430:5cc6:e6ed:2da1:4d7:1d29])
 by smtp.gmail.com with ESMTPSA id j127sm2360510lfd.63.2019.10.11.05.03.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 05:03:08 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH 2/2] mtd: cfi_cmdset_0002: fix delayed error detection on
 HyperFlash
To: Tokunori Ikegami <ikegami.t@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
References: <b93bf510-8812-3f82-29f3-43f41d08550a@cogentembedded.com>
 <b146c469-6cc3-885e-3e8e-ff7a5fa8dcd4@cogentembedded.com>
 <b4d19e66-83e6-d7a2-8aa6-85034460725e@gmail.com>
Organization: Cogent Embedded
Message-ID: <4610a3af-302f-dc35-27ba-6b5bb21f8bef@cogentembedded.com>
Date: Fri, 11 Oct 2019 15:03:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <b4d19e66-83e6-d7a2-8aa6-85034460725e@gmail.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_050312_589513_6FCF49BA 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 10/06/2019 11:54 PM, Tokunori Ikegami wrote:

>> The commit 4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling
>> status register") added checking for the status register error bits into
>> chip_good() to only return 1 if these bits are zero. Unfortunately, this
>> means that polling using chip_good() always reaches a time-out condition
>> when erase or program failure bits are set. I think the status register
>> error checking should be fully delegated to cfi_check_err_status() that
>> should return whether any error bits were set or not...
>>
>> Fixes: 4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling status register")
>> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
>>
>> ---
>>   drivers/mtd/chips/cfi_cmdset_0002.c |   55 +++++++++++++++++++-----------------
>>   1 file changed, 30 insertions(+), 25 deletions(-)
>>
>> Index: linux/drivers/mtd/chips/cfi_cmdset_0002.c
>> ===================================================================
>> --- linux.orig/drivers/mtd/chips/cfi_cmdset_0002.c
>> +++ linux/drivers/mtd/chips/cfi_cmdset_0002.c
[...]
>> @@ -155,7 +155,9 @@ static void cfi_check_err_status(struct
>>           if (chipstatus & CFI_SR_SLSB)
>>               pr_err("%s sector write protected, status %lx\n",
>>                      map->name, chipstatus);
>> +        return 1;
> Is it okay to be returned 1 for the errors CFI_SR_WBASB and CFI_SR_SLSB also?
> Before the change only CFI_Well, SR_ESB and CFI_SR_PSB were checked by chip_good().

   Well, pr_err() calls above spoke for themselves: all bitmask 0x3a was considered
the error bits. But I can change that back to just ESB/PSB if preferred.

>>       }
>> +    return 0;
>>   }
>>     /* #define DEBUG_CFI_FEATURES */
[...]
>>   @@ -1974,12 +1974,17 @@ static int __xipram do_write_buffer_wait
>>            */
>>           if (time_after(jiffies, timeo) &&
>>               !chip_good(map, chip, adr, datum)) {
>> +            pr_warn("MTD %s(): software timeout, address:0x%.8lx.\n",
>> +                __func__, adr);
> 
> Is there any reason to change the message to use pr_warn() from pr_err()?

   Yes, all the other timeout messages use printk(KERN_WARNING, ...);

> In the past it was changed to use pr_err() from printk(KERN_WARNING) as mentioned by the maintainer.

   Oh, OK, I'll switch back if so...

> 
> Regards,
> Ikegami
[...]

   It's better to remove the diff you're not commenting to.

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
