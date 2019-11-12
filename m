Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775B0F95F6
	for <lists+linux-mtd@lfdr.de>; Tue, 12 Nov 2019 17:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Eu4XHZFyU5H6PncW2+SppxmgBpgfSRv+7qnS0zlA7Y=; b=H3CKCn2SmL6LaunvR4vQqOBJ3
	WdJyPzU7Ef2QNYQfRCkiBiryrs3WY0O2ZHbuBq6yJAORrI1dgnKmNncOjjUAliqk4yNH4tG/lT4u8
	NJPMPDx3IgCrZVGLDpv2sZA2bRPL0k4KLuQ8R5zwfazP6hjbVjCCZlqtSUB64F05Qv0hVH9s+GBnC
	YeBCkZxYLVyLR+d9YHtR01/TYvl/GAaYYRcXldQqMR0D8KqaYCY00b2f4zvYQtBIsldy7O+YW3jAn
	gmLUuidY6XA9u431vELFE6HNxcFUz7bxMFHpptinIzZD/auYt8ENo7CJTax3KjgOwHNXldBRWIRX9
	XBufjfzhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZK2-0003SU-CQ; Tue, 12 Nov 2019 16:47:18 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZJq-0003S8-0z
 for linux-mtd@lists.infradead.org; Tue, 12 Nov 2019 16:47:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id a18so9629128plm.10
 for <linux-mtd@lists.infradead.org>; Tue, 12 Nov 2019 08:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=4eBVr1MIo1IjcS1eR/7vmBGH9u/1BSUnONa4/vDzh/E=;
 b=AwB3Uzd80hNLPTbwuiV+oB/jYZXkZEkijlpwnqaEXmBVvNEx3ATCgxFMwYjWwOVSTc
 iGZtkdH2PxIfrc6WmQJ95hjwmxW6btxNB67YzdQlrmLvrVKOCS7R6OyY8KPoRE/6t/PN
 2FUsp/W4iTCIf39+uuBVFatcL2cEDomETREutlki/tJClUTDvCFnEQycXBvc/jUV76Fs
 OuTWPm/poBHjJSqI6nzur5+4OtnAxHaBkzwBtHFmEHJt3D2NT0R5A4OnOAHTyWoXvEyf
 UENz8B3SV1I0y/Ro0gYCGwoFxvQoy7QP2gnLXseS1e2wE9uXE2bqYKgagJiniydWqNyo
 ds8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4eBVr1MIo1IjcS1eR/7vmBGH9u/1BSUnONa4/vDzh/E=;
 b=BRmy8yMUuDYjExzrhDVCVTe4VCewNOa5A37VcIp85260PBVwCwbn0LGv61HN7s1N7r
 //IT36jeRKVMwOrsF6e6nFar6KJnI1NyrPSGeUb07tKZ/kfzDoCMlBziJVysbfJsoiDF
 xhImjsP67xl1cTHWoga6YMGx4CRP0kbh9cEwG1HBTb5MGKjplHbMW+tWFb8scHPRe+O2
 7EoVbuKfzIzIkgEUt4LdzOPgrxeJMzQwIfHlE6APYcF9y4YZuvI8jyhcPg8M1qAAJopt
 q+GFVHSsg3bO2dXUIYv8GPB3gJyRLpgxxgvbCroA1wrDBB0jqO8Ct/kJLT1Ic31Pvda7
 IRUg==
X-Gm-Message-State: APjAAAVtDuJ0n+yiMUqTkZSuOs/iMRpW2sGQi3vQ4wVEuzpbLYGrKetB
 7wRgKKWShcq9By2pyhTX6WTWA0GC9Mk=
X-Google-Smtp-Source: APXvYqy5LCwHvW3UukYZe6r3t1TZKwnSIDccc4pcQlmAfagsaHdDCxs4L/gdzcSe5G9rdUTs7qVT3Q==
X-Received: by 2002:a17:902:b585:: with SMTP id
 a5mr32520276pls.191.1573577224693; 
 Tue, 12 Nov 2019 08:47:04 -0800 (PST)
Received: from ?IPv6:240b:10:2720:5510:e4d5:7c9c:b57c:bba8?
 ([240b:10:2720:5510:e4d5:7c9c:b57c:bba8])
 by smtp.gmail.com with ESMTPSA id u65sm20234323pfb.35.2019.11.12.08.47.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 08:47:04 -0800 (PST)
Subject: Re: [PATCH v2 2/2] mtd: cfi_cmdset_0002: fix delayed error detection
 on HyperFlash
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
References: <6e2348cc-7035-29b9-5172-ada329bea397@cogentembedded.com>
 <0f13549b-91f2-79da-55b9-a52f1f7c8f2c@cogentembedded.com>
From: Tokunori Ikegami <ikegami.t@gmail.com>
Message-ID: <f581fa03-4608-8b0d-087d-e0eec161827a@gmail.com>
Date: Wed, 13 Nov 2019 01:46:57 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <0f13549b-91f2-79da-55b9-a52f1f7c8f2c@cogentembedded.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_084706_065862_4BAD1D38 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

Looks good.
Reviewed-by: Tokunori Ikegami <ikegami.t@gmail.com>

Regards,
Ikegami

On 2019/11/01 5:39, Sergei Shtylyov wrote:
> The commit 4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling
> status register") added checking for the status register error bits into
> chip_good() to only return 1 if these bits are 0s.  Unfortunately, this
> means that polling using chip_good() always reaches a timeout condition
> when erase or program failure bits are set. Let's fully delegate the task
> of determining the error conditions to cfi_check_err_status() and make
> chip_good() only look for the Device Ready/Busy condition.
>
> Fixes: 4844ef80305d ("mtd: cfi_cmdset_0002: Add support for polling status register")
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
>
> ---
> Changes in version 2:
> - added extra check for error bits in cfi_check_err_status();
> - reverted from pr_warn() to pr_err() call in do_write_buffer();
> - reworded the patch description.
>
>   drivers/mtd/chips/cfi_cmdset_0002.c |   58 ++++++++++++++++++++----------------
>   1 file changed, 33 insertions(+), 25 deletions(-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
