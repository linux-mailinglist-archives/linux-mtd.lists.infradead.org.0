Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6CAB7D90
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 17:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdtUBILXoMTM+RbR7eBtXTIPUnz8ir00S/QpLfUc7d4=; b=pBRPHyMk4z3WGO
	73n2pxPY63cD8k+m2BlT2MjQAh1BZ9jwq0ZdxzJpditcz98+hdXj8tLNjAjc/CT1d6Dn+LxC05X75
	arOvWbgJB8AR590CYKt35O/FE79TIVyTe8DDU8vbqvoxrWFBcIpmi0gBJOQobENwzfw1JYVlpd5Rn
	tNUduav037KEqiumTPjFZGLBZ1P2MajOin7NSZQiC86hVgGyPxRXh65O1x57jpH6NsL2Ht4dc0MwK
	n51WbMgq3ouJJZkUaUyiKYjlqVIM4X+7Ig3iXTqfP58uMmIIq+If3OqgcpwlXRDtt4cOB+eMDqoJo
	t2th5aq3W1+Y8HL4Sr2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAy3L-0005Uf-Q8; Thu, 19 Sep 2019 15:09:03 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAy2X-0005QQ-W7
 for linux-mtd@lists.infradead.org; Thu, 19 Sep 2019 15:08:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id m7so3988309lji.2
 for <linux-mtd@lists.infradead.org>; Thu, 19 Sep 2019 08:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bRiBZLWOEHbZzElzw6qYdz9cEfrj56jePR8fFrLJB6Q=;
 b=JLYIJh7UlR3hPvwmVneFgqbEqVHl3GPDE4Vc3SIHWnj9E9cQIqKU7szXckxtR23sN3
 oTuVimlSKjgMuZEFNXkZuVDJVntY8q41D8yhkSP1/uZ3tu+1sf66QXLA6bfL5z0gRkbx
 +Qxv4PduCuVdsA6Ci9kdkEixWeLqO8BT13SggpjvDkwm5PgSR3ja6rHxiFfSCo+aN7m2
 Y4ixYplF9xezHbCdsePOT5gq40iCvDhU+0JE9xg6W8p1UDID8do6oPtwv0c5LRgeuyqA
 b8Y6dzE97J3nNW7oBIAle0WNL3dUGgnS4ZGbpNmalc8hAy4grTbAiAdF64y+gkNtQTgz
 umXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=bRiBZLWOEHbZzElzw6qYdz9cEfrj56jePR8fFrLJB6Q=;
 b=MndyNer5+b/A9T5zo6h2krHaJ70ZAcVQyyP9ST6EzpTk7sbfZH2NNuw5v9DJb6hZ4Q
 p1bH15oKAtt9y5kLm+oXqjN9MCgvO+89aDYc69+pe82HSbYAURJiNOqhsb5cDM0iazbA
 mEGuBFW9uOIwmzmeNc9qnrWTEO7FsgvYKhFa3MWdVTzP5tadDuNul5JMj8m7ImfJ5tvP
 IWybPu8jRcRiyjFtK01RAju2uWkMJLKDGbKELN+fW2aWicCzs+PkCd2C0MSigX0W9T/6
 //xnEPgg1WOnoVF6H9QP287VCegArms2LAAZvqd3BwVD4CezhTmVWcTZK3awDWm/NGfs
 +mCQ==
X-Gm-Message-State: APjAAAWSeb2A5TLYutvyCqhjoWwsOU3CNS/7wSmWwvltrmqOL9KjmCl/
 B4VD/J8tIHwA7lTsnMdVOwGplw==
X-Google-Smtp-Source: APXvYqxZR0gHbcpd6pV7XpkEj1tjQ3U/96VZ+XgTMaXBqjUvXXsnTnVXeCYzl/257fe3o9eXJFj40Q==
X-Received: by 2002:a05:651c:20a:: with SMTP id
 y10mr4731466ljn.163.1568905690384; 
 Thu, 19 Sep 2019 08:08:10 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:42ab:49bb:193e:bfb0:9713:18c9])
 by smtp.gmail.com with ESMTPSA id 77sm1697616ljj.84.2019.09.19.08.08.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Sep 2019 08:08:09 -0700 (PDT)
Subject: Re: [PATCH] mtd: st_spi_fsm: remove unused variable
To: Bartosz Golaszewski <brgl@bgdev.pl>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
References: <20190919122937.29850-1-brgl@bgdev.pl>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <e062df64-1e13-f88d-5bef-cbc3a1a7fdf0@cogentembedded.com>
Date: Thu, 19 Sep 2019 18:08:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190919122937.29850-1-brgl@bgdev.pl>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_080814_731984_57DFCA42 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

On 09/19/2019 03:29 PM, Bartosz Golaszewski wrote:

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> The region resource in struct stfsm is unused and can be removed.

   OK, except it's not a variable (as the subject says), it's a structure field.
"region resource" also seems strange...

> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  drivers/mtd/devices/st_spi_fsm.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/mtd/devices/st_spi_fsm.c b/drivers/mtd/devices/st_spi_fsm.c
> index f4d1667daaf9..1888523d9745 100644
> --- a/drivers/mtd/devices/st_spi_fsm.c
> +++ b/drivers/mtd/devices/st_spi_fsm.c
> @@ -255,7 +255,6 @@ struct stfsm_seq {
>  struct stfsm {
>  	struct device		*dev;
>  	void __iomem		*base;
> -	struct resource		*region;
>  	struct mtd_info		mtd;
>  	struct mutex		lock;
>  	struct flash_info       *info;

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
