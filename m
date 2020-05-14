Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D2B1D2A56
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 10:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bFx+YbG66X2ntQQXY43vFsp0f2gG+DE4HvduUM3y2Rk=; b=DT54Kcz4RMx6LI1/NQKDvZXus
	Kl4wpqNu5M0rXReuctXrAJVgqxbXGWsp6oqsB2iFE19gWpYPZ9CdIfkg4QqycnWcLyxN5vaPrbpZw
	81uPVRGNHkgFh0tMvugTTrRoJMqOxTHhkDIE9G9FrDGCPyT++kn38L0WeDHoX8ZhOWUgdn17hTSxd
	Ue06jM8+zLNSF58jC0u2LRaJIocdN0NT5/YbT8gpiVKQkHeCgjUmBJQMROXYKg0WVabl38jS0wwQp
	XVCEdDjt74TgkyWoj+PpL71E4xhVBEEPDQa5FC1yUZ2JU7FnClr1llD8xsUQkXLGvOl33m2w3zaYy
	qF1TqPrMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9O9-0008OE-0Q; Thu, 14 May 2020 08:38:45 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9Ny-0008NR-3n
 for linux-mtd@lists.infradead.org; Thu, 14 May 2020 08:38:35 +0000
Received: by mail-lj1-x244.google.com with SMTP id h4so2522343ljg.12
 for <linux-mtd@lists.infradead.org>; Thu, 14 May 2020 01:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Hn0ddVvVK7CGKgL2UWSRJS2cxwM+9zkVV2UevIIkucw=;
 b=05ZCimNM0Che2rdK+hMrG88fkaPUGg7sh2hPe43/sZLKpxvE6OReNGWfd3OsDYdo12
 nY82dYQPTUexC9aT35FmAg5dGT+urirHiYba6PjGuuEqxrWfcPd9MV74zmvxHVKfuH20
 mw9h2xCV6pHC+VKL61Z4M3Fgg9bdVdejmkqcWCI1t5R5TNTVCXlIWa01opYuo/VRZcjd
 StWznmtFA1GC0xUrWCZDCTkpLA2dXPbCERPG+CLaNJwIyN3ykklDqavW3Um0b12K0OKJ
 iw+Ace1GvcVYtF9sGGLC/7HOujBapeBF3TE/3NFZMZvAfrAw9g0hUiIjtkSKHn0TVD+2
 BRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Hn0ddVvVK7CGKgL2UWSRJS2cxwM+9zkVV2UevIIkucw=;
 b=GhndGs7i2pu6tomeq+BTnDoVGPA6KfhdkDVl9ssjoWPYx56xGxNxK0CsSnq6FioT6s
 RWsXmzjlU4eABz0wCAGNfhchWdLRDdxz6aLXEwV00+eHNAHQeCUfeu5EFEfswfMEyY5A
 X45T9VBrv5UZG1U+9OMIViqE/omPmpNP4enKPVuMGf8aCkgNeLa1PrRZFxRk60S0Cn1e
 2/3hmr79kA0IwEwIVLjsq07LW7+IZfYzuA1ssYGW1bZ7+SGrgdQ/c5Mjhe2fWFLUaATo
 jC6ktBELlSDd5kEcOaHEmz5Dh8mIhc3ATuihITqGz+4dOOVYDuAR1H9YSfKm8we+7hFA
 9G+Q==
X-Gm-Message-State: AOAM533xXA0B9GDheevKdOp4DF56z4Z7ZwlJnCAxPw0OdKFeywJHB2bA
 RalMyXiR/rHx91nxWJJTZWVWDA==
X-Google-Smtp-Source: ABdhPJzFgn/uwb+9zuMukYm1CBzb5IC/C3EpZJmyHfP3kghhrorY8HdlkWggnqTk5G46Ek94Ke6L8w==
X-Received: by 2002:a2e:87d0:: with SMTP id v16mr1934338ljj.137.1589445511996; 
 Thu, 14 May 2020 01:38:31 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:428e:17ae:1023:2fd9:377b:94c8?
 ([2a00:1fa0:428e:17ae:1023:2fd9:377b:94c8])
 by smtp.gmail.com with ESMTPSA id g11sm1072384ljg.24.2020.05.14.01.38.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 01:38:31 -0700 (PDT)
Subject: Re: [PATCH v2] mtd: hyperbus: add Renesas RPC-IF driver
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
References: <3e4cf141-52a3-ef88-5e25-eb5c75b16186@cogentembedded.com>
Message-ID: <693bd214-aee0-5db8-ed39-234c8f6e138c@cogentembedded.com>
Date: Thu, 14 May 2020 11:38:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <3e4cf141-52a3-ef88-5e25-eb5c75b16186@cogentembedded.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_013834_297693_B1123084 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dirk Behme <dirk.behme@de.bosch.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 13.05.2020 23:43, Sergei Shtylyov wrote:

> Add the HyperFLash driver for the Renesas RPC-IF.  It's the "front end"
> driver using the "back end" APIs in the main driver to talk to the real
> hardware.
> 
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> 
> ---
> This patch is against the 'mtd/next' branch of the MTD 'linux.git' repo.
> Requires  the RPC-IF main driver patch in order to build/work:
> 
> [1] https://patchwork.kernel.org/patch/11283127/

    Sorry, this was an old version of that driver. here's the new one:

https://patchwork.kernel.org/patch/11521597/

[...]

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
