Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3773919DE91
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Apr 2020 21:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pv7bV1EC0dSPW7GnIZLOJXg2mJyBfYhlgsJD8FjDjug=; b=plB7nR8myxCQ9H
	eV7reloD3Ufv9luZZvjDf4yngytdSY+xWDkffx631ylOx5R/Uxkc4U69zMnslWYV3y871a8aY5Mmq
	dHLgV7Z+0KwC65iWFxr6fHTvG9ubscTwA5xfHLCvb9PqBqW1Z3MIOR8kuaC6NAZCx7v2lUjPqrifR
	uzSr0PrK6IuYHulHbjrZ4byqXBUkInuHER/cZB+eeMfYufSHVyb/Mo2BhxTg9nooA/x0XYnevJKqe
	v8/23Iwb8LO8yh46GlvgwZjONrcOylq9HFON4MXQnSSEAV/xzlelKqEva7iMIwt5hpv8Szt66ftxA
	D7J/NK0PKFJA03Dv+I2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKS0A-0008UO-S6; Fri, 03 Apr 2020 19:29:14 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKS02-0008Tx-Am
 for linux-mtd@lists.infradead.org; Fri, 03 Apr 2020 19:29:07 +0000
Received: by mail-lf1-x144.google.com with SMTP id e7so6779108lfq.1
 for <linux-mtd@lists.infradead.org>; Fri, 03 Apr 2020 12:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FHa0Nn/YgOjSICTjXKcHO6SaqZeXpXS9aqizTu2Q6wE=;
 b=VJ6owpO+Gf5iCDbXBCeAFeIeEWuctildZUrfhARbHeyA3YjT4WSMRWw6L43fTG08PW
 VyQUMf0WwAOyIh7M6RPei3AGaxCJ6MeJvGsYKqvC1gZkHmiAI1lNdMVo7bBJV82mBUkZ
 pDsci7hpFOL8WMw2ifZN0Gy5hGna6enrdcilUJc3eKX67ioaoIqycitdPhgZS86nKzuo
 NIlQYlk2wZ7vfR3YBoAdge6OfngnE/4Y+sev0Yr7WH+51kRIbsuvWBbMGfiB/zRGDrGe
 LFSHRg9cXEtj6EQs4Wnfl9lh1OkxZq5rE5eGSlv700WDKitguwdepkSnIqcYxNcG6ulH
 jxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FHa0Nn/YgOjSICTjXKcHO6SaqZeXpXS9aqizTu2Q6wE=;
 b=Ws3P8BJmB9TCh1VrSfKSrFZE/cyUr4tFvfARUsypSiuFbWEX1lvTVKH38BVkAJF+m3
 4YnS4jh+5TMGdo2smXTSKOFdtnEiwgFlTenHaCozAWNrKpdKW+totfgIVpRtFqeVWcn0
 PUwQ8DWvr9fx9hJe3UNLwryqXYwSlgpOT7BScSEZl43gMxCcq9ccFqPMpVSlc7bLZeuL
 DtLkdYc9ghY5mfkYk0fkXv0evRiQy4iKBhgxd8kCpqaHDOnxDUkIv9xZpuZo4rr3QVTC
 YjxQd8VIZzjyfvQn1fUnUUOo7k0opgwViuZHlNZjq5A38qMzZZBDQ0hflI5h9Zm7RXza
 KBOQ==
X-Gm-Message-State: AGi0Pubo1JGQT++Xd2M8UQbDDbDWe8AvC1ZpB7ymp10e/fxPOj0E3rua
 IfcsHC20Rm/h0z+7vG2tsn83Fw==
X-Google-Smtp-Source: APiQypKYAodBOsxy9+9MFrYCbn9GNNg0DuZqlT9sh7/TcoCS4waGpCWnuLLfVlAW+HGMS91tNwsdLA==
X-Received: by 2002:a19:c752:: with SMTP id x79mr6123355lff.144.1585942142119; 
 Fri, 03 Apr 2020 12:29:02 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:41a:7e80:40ac:b40e:d552:2978])
 by smtp.gmail.com with ESMTPSA id d12sm6243460lfi.86.2020.04.03.12.29.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 12:29:01 -0700 (PDT)
Subject: Re: [PATCH 0/5] Fix kernel-doc comments for 'struct spi_nor'
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
References: <a2577f42-a21b-e7c4-c550-f6ea1cf94cf0@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <795a9d8c-27d9-386d-a89b-ecd023f6969f@cogentembedded.com>
Date: Fri, 3 Apr 2020 22:28:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <a2577f42-a21b-e7c4-c550-f6ea1cf94cf0@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_122906_574260_907BCC1A 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 04/03/2020 12:35 AM, Sergei Shtylyov wrote:

> Here's a set of 5 patches against the 'spi-nor/next' branch of the MTD 'linux.git'
> repo. I'm fixing a number of the kernel-doc comment to 'struct spi_nor' accumulated
                              ^ issues in

> since its creation. Instead of a single patch, I'm fixing the kernel-doc comment with
> several patches, each fixing its own broken commit -- this simplifies porting to the
> stable kernels (if that ever happens). :-)
> 
> [1/5] mtd: spi-nor: fix kernel-doc for 'struct spi_nor'

   Oops! Only the 1st patch was against a correct repo...

> [2/5] mtd: spi-nor: fix kernel-doc for spi_nor::mtd
> [3/5] mtd: spi-nor: fix kernel-doc for spi_nor::reg_proto
> [4/5] mtd: spi-nor: fix kernel-doc for spi_nor::info
> [5/5] mtd: spi-nor: fix kernel-doc for spi_nor::spimem

   The rest was from Geert's renesas-devel.git repo, should still
apply, although with large offsets. I'll repost.

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
