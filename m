Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3476A150FB6
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Feb 2020 19:37:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5MdAc6BMSTomh12s1PXllkLYR1qQWWpIH68HP/nSnL4=; b=LDpsNKuaOmouCQEHnDjZujF2hA
	V1+whLO5WY28WN21rTP1mGwkiazfJtgIK64876Bs5ij7m6Rrba8x/lDNZbmrncXJ0K6G5EmHXxXvN
	h8eAOO/W96NLbKVkr4R1AcqxBnrtHj7+eQyqOt/KbUJP2VfarfeBensizkq6CGrXaq3hdFEYtLrOa
	B65SuITUJedx7QgB0fDu5qZI4SfBwYodXAfmwT8tGTlVRFCuAo2L2A1eizLQzpXIEeMOWL8qyc550
	R5Yg1eEpXRHQvGx0w3u1NqrKWWRWAnOwW/t23wCxsxNTk2LH8DKuZXQaluzfwaL/zd69QhGC0ewQe
	badd3aoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iygb8-0002Ug-53; Mon, 03 Feb 2020 18:37:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iygav-0002U3-IL
 for linux-mtd@lists.infradead.org; Mon, 03 Feb 2020 18:37:15 +0000
Received: by mail-lf1-x144.google.com with SMTP id n25so10467298lfl.0
 for <linux-mtd@lists.infradead.org>; Mon, 03 Feb 2020 10:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:organization:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nFUBjSG1r24bnwLvD0crLpzPAjk6AFCyiD5gPqq1UCE=;
 b=Z7baCJYLBtojk5vjH2kUV5gNqJu4Gp4sBc6tKZx9fjq6vEG6QAQTbEWtIXQ50a48Ku
 YMOyEis+7Bq5bBlF3cSar7eAcXue+zmJFnGi3Oq0WXvyreZkPtjpdN3dVZumNcd/Xyv7
 67d+8peS4Qs/08bqIpep5NF20udaivZFU5zgJZW9GJWwH/Sav0bFchRycQ+Hx/WWunGr
 231IeqBHfHbnsCnA3wNA514RAmp9TYEeAiWkomCZa/AmBStrN+4kW1ETOauNk3pMesbS
 hsoj2x4/FAaY9/AasHMaXnA/bzYFfVNHeq5RxJvlYqJ+COnfh5o5tcTcHAFXV4E7s9H0
 U/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=nFUBjSG1r24bnwLvD0crLpzPAjk6AFCyiD5gPqq1UCE=;
 b=IHP5ZSfURshdfyJx/NeWGVoC6kVw7tjl7gdyCUlv2Dgcpizdr5FdbPW11ZPYYL4hsp
 dNJEFDLhzCZ1AYLz1SYJBbvOFqQed4frbbCBGCDbck7rRiawKrY8Kg5cTWlCtR5Lta5G
 ojQJnnNLT7gF/sPuM/hG29xT8mfRhIMuslejj+nAQDQpV7FBUMIlNghhdlEMQtqo8QxJ
 s8jueNzUDXjAONwiLLt1+IePoc2KgNoQr8+/KFJaC3jRRKkJJOd/o87xV96X6gTYduIe
 02iBUSvfKEz3AwvROZHDcRFwOPmWgE6SkzsvHL7zeEzUXFtGg+ot2j3N2dDrsm8+SBCx
 Jtxw==
X-Gm-Message-State: APjAAAUDwUhpeW73WWcuxIcYHax8grPnRErLumYpgcw/ADTAuH/dTee5
 tVqBPZahcBLiItXRyhfX7HHW0Q7ZA7U=
X-Google-Smtp-Source: APXvYqydaQcOd5QCAImWobF1vMfXZfqxmZLMV9+DpUCRkCgW4uZNrWo682ZxK7qc1VJElOy+aGRFdA==
X-Received: by 2002:ac2:52a3:: with SMTP id r3mr12701025lfm.189.1580755030269; 
 Mon, 03 Feb 2020 10:37:10 -0800 (PST)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:466f:add8:5793:bc04:7360:f621])
 by smtp.gmail.com with ESMTPSA id g15sm10071183ljk.8.2020.02.03.10.37.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 10:37:09 -0800 (PST)
Subject: Re: [PATCH] mtd: hyperbus: Add proper error message for missing
 compatible
To: Dirk Behme <dirk.behme@de.bosch.com>, vigneshr@ti.com,
 linux-mtd@lists.infradead.org
References: <20200203075531.3739-1-dirk.behme@de.bosch.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <ede8426d-82d3-9c2b-1d6a-6259067ef256@cogentembedded.com>
Date: Mon, 3 Feb 2020 21:37:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20200203075531.3739-1-dirk.behme@de.bosch.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_103713_758835_4252135A 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

On 02/03/2020 10:55 AM, Dirk Behme wrote:

> In case the compatible "cypress,hyperflash" is not given
> output a proper error message. Do it the same way as some
> lines above.
> 
> Signed-off-by: Dirk Behme <dirk.behme@de.bosch.com>
> ---
>  drivers/mtd/hyperbus/hyperbus-core.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
> index 6af9ea34117d..61b0f686a6dc 100644
> --- a/drivers/mtd/hyperbus/hyperbus-core.c
> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
> @@ -73,8 +73,10 @@ int hyperbus_register_device(struct hyperbus_device *hbdev)
>  
>  	np = hbdev->np;
>  	ctlr = hbdev->ctlr;
> -	if (!of_device_is_compatible(np, "cypress,hyperflash"))
> +	if (!of_device_is_compatible(np, "cypress,hyperflash")) {
> +		pr_err("hyperbus: 'cypress,hyperflash' compatible missing\n");

   Traditionally, the string prop values are enclosed in "", not ''.

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
