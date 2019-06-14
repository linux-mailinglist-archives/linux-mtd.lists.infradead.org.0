Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD52E45302
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Jun 2019 05:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=JSQZsk9eSc8gebojgqm2wOkFAr6m3VKivuwhh9S0t6E=; b=FI/2WHCDasC6C+
	5T5cfY7r+loZeLvii+mW0cRKwdUSItJ564f5MwP8NvmsRjiyc7D2f9lP6YGtJzc76YlMV3e7ctcU5
	0Fi6PbHAElM3/fEThm1xqj5HrtGcTQ+r+nVn1LO4A/5DKnv5xtLa1LFUI0omtTxXxpyfaycODV7WI
	QnRSJyE9nq+itG901lpBf9ey0ztSBocZjGjixIH9/g0o6TavvTKWAHf7kCkBNF7+o5rK/twwm3Fnh
	f2XPSjpmsWpEAbdkRvgDeBHr+nLLXofqKT2q623r5bwLYcirlo9L7NFQiQrd8YVxMuKvayz9WsIXv
	0OiMjgbO5jfUvaVY1oRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcxN-00055P-AV; Fri, 14 Jun 2019 03:32:49 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcqw-0006sG-K4
 for linux-mtd@lists.infradead.org; Fri, 14 Jun 2019 03:26:12 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 995058011F;
 Fri, 14 Jun 2019 15:26:06 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560482766;
 bh=7cuNjAUOasNNcdtTHWPsfOhv3qMjbKvxs9MCbv9O5Ug=;
 h=From:To:CC:Subject:Date:References;
 b=YLYUJXLC8jQj0CxFuDLhFcOR0xnZ9SRStohsLsmY7DAoSCf8pDCvG1J5fFDQJO3yq
 vcZ++Z4S8R/wA8RsqUPYpVwBzz7fVnAB6TgdDa4YhljxI1/FhkHnYSXpS9LG43EqnV
 wh8G0vGziGTS6zKRD36HkWxBNLFGyHBM4LHiNINR1ttbLmaPILzz7YG7mwGVFFE42c
 Y9pNmORSfIogM0SWgT044OUpkXlrnejbKzBNfyyMdFv12D8OqJYCOjWyTacN2EOt1a
 m/w6MXRy+LOX/u27t0lA0IXrbS49lsqgo9XEhe+hGUb18kmo3MMs7xvpiblixZerXP
 bUtGMALmfNLVQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d0313cc0000>; Fri, 14 Jun 2019 15:26:06 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Fri, 14 Jun 2019 15:26:04 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Fri, 14 Jun 2019 15:26:04 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "dwmw2@infradead.org" <dwmw2@infradead.org>, "computersforpeace@gmail.com"
 <computersforpeace@gmail.com>, "marek.vasut@gmail.com"
 <marek.vasut@gmail.com>, "miquel.raynal@bootlin.com"
 <miquel.raynal@bootlin.com>, "richard@nod.at" <richard@nod.at>,
 "vigneshr@ti.com" <vigneshr@ti.com>
Subject: Re: [PATCH v2 1/2] mtd: concat: refactor concat_lock/concat_unlock
Thread-Topic: [PATCH v2 1/2] mtd: concat: refactor concat_lock/concat_unlock
Thread-Index: AQHVEPTbCX8jgKCQ/EWiWr4BFnYFGQ==
Date: Fri, 14 Jun 2019 03:26:03 +0000
Message-ID: <355dad1321ed46baa98ca6f47b4d00b5@svr-chch-ex1.atlnz.lc>
References: <20190522231948.17559-1-chris.packham@alliedtelesis.co.nz>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_202611_240809_B2BF0CA9 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi All,

Ping?

On 23/05/19 11:19 AM, Chris Packham wrote:
> concat_lock() and concat_unlock() only differed in terms of the mtd_xx
> operation they called. Refactor them to use a common helper function and
> pass a boolean flag to indicate whether lock or unlock is needed.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
> Changes in v2:
> - Use a boolean flag instead of passing a function pointer.
> 
>   drivers/mtd/mtdconcat.c | 44 +++++++++++------------------------------
>   1 file changed, 12 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
> index cbc5925e6440..6cb60dea509a 100644
> --- a/drivers/mtd/mtdconcat.c
> +++ b/drivers/mtd/mtdconcat.c
> @@ -451,7 +451,8 @@ static int concat_erase(struct mtd_info *mtd, struct erase_info *instr)
>   	return err;
>   }
>   
> -static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> +static int concat_xxlock(struct mtd_info *mtd, loff_t ofs, uint64_t len,
> +			 bool is_lock)
>   {
>   	struct mtd_concat *concat = CONCAT(mtd);
>   	int i, err = -EINVAL;
> @@ -470,7 +471,10 @@ static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>   		else
>   			size = len;
>   
> -		err = mtd_lock(subdev, ofs, size);
> +		if (is_lock)
> +			err = mtd_lock(subdev, ofs, size);
> +		else
> +			err = mtd_unlock(subdev, ofs, size);
>   		if (err)
>   			break;
>   
> @@ -485,38 +489,14 @@ static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>   	return err;
>   }
>   
> -static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> +static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>   {
> -	struct mtd_concat *concat = CONCAT(mtd);
> -	int i, err = 0;
> -
> -	for (i = 0; i < concat->num_subdev; i++) {
> -		struct mtd_info *subdev = concat->subdev[i];
> -		uint64_t size;
> -
> -		if (ofs >= subdev->size) {
> -			size = 0;
> -			ofs -= subdev->size;
> -			continue;
> -		}
> -		if (ofs + len > subdev->size)
> -			size = subdev->size - ofs;
> -		else
> -			size = len;
> -
> -		err = mtd_unlock(subdev, ofs, size);
> -		if (err)
> -			break;
> -
> -		len -= size;
> -		if (len == 0)
> -			break;
> -
> -		err = -EINVAL;
> -		ofs = 0;
> -	}
> +	return concat_xxlock(mtd, ofs, len, true);
> +}
>   
> -	return err;
> +static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> +{
> +	return concat_xxlock(mtd, ofs, len, false);
>   }
>   
>   static void concat_sync(struct mtd_info *mtd)
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
