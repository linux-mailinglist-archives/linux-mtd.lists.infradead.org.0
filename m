Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616EDF39F2
	for <lists+linux-mtd@lfdr.de>; Thu,  7 Nov 2019 21:57:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBufjJia4RYI6lklh0lUt0HIkwgMw3Wa/YfsAsYfmI0=; b=f/Ka7SyFcafG0k
	WFHUQge11nMQ/RP/oruEA0bHiQI+lHP/eVuu4jGxfNmXlW/Ila3jyXdM8mtzo7kOkTestUGY9V1o6
	YOrSeNqUDF9kAGT2RD5SY273+OOvn7BCbnVdxXN+OktFp32uJuPYPUp8F8rtJqpug2mvH+3nV7OVG
	/KZTdLIldO09ZGYCPghf3k5BhrHlMk1U6fNUgs0yvOTHNipBG1FI+qncObhHwGfOSSxfRp0AkRd1F
	wMjKdLwp+x3Huue0hVtpXB8WXasideXi5dhwN2tIcgwvkPZCttDuxw/9pF8tGNOutCIuelQS+vJhB
	ZekqZ5rFV6O7BEwHrCvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSopx-0005Ev-92; Thu, 07 Nov 2019 20:57:01 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSopb-00051m-Gi
 for linux-mtd@lists.infradead.org; Thu, 07 Nov 2019 20:56:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id l20so3825114lje.4
 for <linux-mtd@lists.infradead.org>; Thu, 07 Nov 2019 12:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b8tcba7fukpmUIFYRaBhWyTSLg1IuBUA9tgozZXWczE=;
 b=DLpVOsURdkwX9i2r6nIk0Z0VCplrcG7fn2RhUtKjBRsUyKxiMoWBaYgORSnTDf3s1Q
 lwTckNGbFgSA3U4+pV2ea8x35dUWt65QkKUYFoEwW1mP0MYX7PXD6Aes1/KRXNi8PGQK
 fCUv7GygNqD064X/YsjFotSnGcAkw4MjJvaqZNJ6/3YOPtJ256jSj7jMxq0RVtLCt+kG
 TRvHz1w4gAbicLnCUoILWOXoOEmi3gRrwbfA43r6VccYbL9uy1u2lUrYd01lJTEgzWD5
 PpfEA3cmoB2Nhl3Cw0p+aGwcMMoKbkz3CCZ2ea/sYpmp4By6OKgAltHExZm2iH0LGKw/
 aS6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=b8tcba7fukpmUIFYRaBhWyTSLg1IuBUA9tgozZXWczE=;
 b=Wf6wSogWxmVlxsptS947DH3s3fRh+9yEL+hlVl4Gef0EBjmIvUQU6CLoSSkdMf7fjm
 0/l5SN32nJJYpm6S4yfIBvNGU+7bHB5RvEMSShqqMQpggV33i0azHqhojhEYWuRgDSEL
 WP16Fx2kQbXN3FBxtXW1cI2EzAn+KXdvJElQB6S2xeVgW698OMTZ6x7SEkSMLBfja9Ju
 AZvf0EW426ptGbsvRj+9Fy7Eo9Ob+t9FxT58XrvAdw6NczbEIwPOoEDrU4jBCuyrCXvh
 OfnTYCUNzPpTfR06VDqQfNnVgzRKwnfhyh2heIuh7g4TAtjLoacb9mZzGhRtBed/fHdu
 LiJw==
X-Gm-Message-State: APjAAAV2K7JJUKfPwCeZP3u43sYcusaFdKBWn56MXnlbO0Ee1zJFxmLI
 6fkgNlvJjDCxMC22F6EbNfM2uQ==
X-Google-Smtp-Source: APXvYqxW8cBlEjTMJ5ay/dbF7axEDAKq7hDf9wQPXhYnP4C5hugCKijamAuv/NWzHknPTF8eTQ3AtQ==
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr4042709ljk.103.1573160196712; 
 Thu, 07 Nov 2019 12:56:36 -0800 (PST)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:4419:fb0d:268a:7979:ff08:4b0e])
 by smtp.gmail.com with ESMTPSA id t26sm1333949lji.4.2019.11.07.12.56.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 12:56:36 -0800 (PST)
Subject: Re: [PATCH v2] mtd: spi-nor: use spi-mem dirmap API
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Marek Vasut <marek.vasut@gmail.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
 <ef173d36-c918-4636-ace6-f6ba82dac672@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <da09e349-130d-89d7-33db-b56468f1f95a@cogentembedded.com>
Date: Thu, 7 Nov 2019 23:56:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <ef173d36-c918-4636-ace6-f6ba82dac672@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_125639_617531_214813F6 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 11/07/2019 11:49 PM, Sergei Shtylyov wrote:

> Make use of the spi-mem direct mapping API to let advanced controllers
> optimize read/write operations when they support direct mapping.
> 
> Based on the original patch by Boris Brezillon <boris.brezillon@bootlin.com>.
> 
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> 
> ---

   Oops, forgot to mention the base. Was generated again mtd/fixes by mistake,
should still apply to spi-nor/next with only small offsets. 

> Changes in version 2:
> - moved the spi_mem_dirmap_{read|write}() calls from spi_nor_{read|write}() to
>   spi_nor_spimem_{read|write}_data().
> 
>  drivers/mtd/spi-nor/spi-nor.c |  125 +++++++++++++++++++++++++++++++++---------
>  include/linux/mtd/spi-nor.h   |    5 +
>  2 files changed, 104 insertions(+), 26 deletions(-)
[...]

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
