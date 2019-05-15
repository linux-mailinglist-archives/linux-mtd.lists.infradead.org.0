Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5347B1E833
	for <lists+linux-mtd@lfdr.de>; Wed, 15 May 2019 08:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2pK+wtMMF2BquDV7OFdJ99ItHjj8gGGxVNTdCbFNSo=; b=YjGSnIvZQYDQgG
	inedsLi6DrdIGQxaOkyeFfyk2LsjBzauVhhk3y7a1lkM99zCZCthzmOmbK4ePN9aR42KZXfzodOk0
	12eFyw/AWw3DuCJjKasWLH+YQENo+l7jHzPjhdXggO0fHuLnG5mvKD2lJmlJxgD21Ag7dhHqbUY50
	hPiOBMhiXLjKFsD2m6acg6izg2rZ96FsCtrUDbzS0Q6EHu7xSP0tT+ymHIMnOoevCIqjVsI+9NzfW
	CmJFCapmKktGRcJcWfyj5rArltAAoGKobZgJYU8LYS1BacutlX+huHOa43fiouqyFUiiSayIVQDD4
	fER/MnfrNcw3gvBA2g0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQnFX-0005Zp-B5; Wed, 15 May 2019 06:18:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQnFN-0005ZW-UN
 for linux-mtd@lists.infradead.org; Wed, 15 May 2019 06:18:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id w12so1221430wrp.2
 for <linux-mtd@lists.infradead.org>; Tue, 14 May 2019 23:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jxbQuCq6kfxUE5RewINQp4+ByiSfCMGNEbNEcQrrPrs=;
 b=KzKBJLzxMK1qi/GNhE7XVDb5NBHzSWrYzu5UitJ5uvsO4v+mxJiGqBx9D/op31wVtZ
 JE6zeFYI/ruFAcY5lzp8Tr3iXppqV6smS3DQIMTbn7RSekkoyNgHhALoacd8OceLC9NH
 Xdkcxc13FaEOUHy7R5BE3rtmb3JnwQqTKW0ZbSxU2VdICIPy8o4XQPtufciLhuVwk33/
 Dj51IEHNBwrd0qR/yFW8a1lmO3g5yE9PHFIiijo7TQ+WNooB57R+sTqpAUfNgu1mbcbS
 aaGbEpzCj0yLYYbp62BsZ/YHdzwR1Oa01UbCgZfrb4IyczmzugjUHsa1u7FWHyD85Bvf
 RQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jxbQuCq6kfxUE5RewINQp4+ByiSfCMGNEbNEcQrrPrs=;
 b=A9UwbS20F98Py3ilMjGvlFKNbJnEQ73CCvxo6UCvVxmup3+WY2fp9oI3zoc38VI/LO
 A9SLkJvzgqx+i/mfx7qBexi0jf5qMKvKyxcjxCCLHG/izekth4EelRTHxylQSsuHCWRA
 X6gheKE7OmaLJ5VA5HeDUaLlIhnGBssxna1be4ic+s/0iaM4TwgPSz/ASmOoohkq3DQV
 JblTYloE//0mU4CMvkv/YUnmJ+qemDK8zkKBtbS7vGIuxnZBJnMGKTXFj91IQi1n6smJ
 fRcS3bpCjZtE2rdxUsrMNN/0AJfAKvOn4X7IqozGj6um8Ltpg0i3OvIfUsAuB1BRppd4
 3Ieg==
X-Gm-Message-State: APjAAAWSC3R6YOjgQinRMkQ7mVRSUfDxcPnfv7WmbJ9vh3IV9CFKFFAK
 c3/NczNzEk/UmUhuUYZIzbU=
X-Google-Smtp-Source: APXvYqwVX63RizTyf0Ly0Cwi2T4h5/V0OPVTw41psz7mqe3AnwyeW+c+scMntj/tKsnr3MbA9RESWw==
X-Received: by 2002:adf:94a5:: with SMTP id 34mr23620723wrr.275.1557901115230; 
 Tue, 14 May 2019 23:18:35 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-110-70.net.upcbroadband.cz.
 [86.49.110.70])
 by smtp.gmail.com with ESMTPSA id d3sm1368862wmf.46.2019.05.14.23.18.34
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 23:18:34 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] mtd: spinand: Add #define-s for page-read ops with
 three-byte addresses
To: Jeff Kletsky <lede@allycomm.com>, Boris Brezillon
 <bbrezillon@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>
References: <20190514215315.19228-1-lede@allycomm.com>
 <20190514215315.19228-2-lede@allycomm.com>
From: Marek Vasut <marek.vasut@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <355bcf8d-bce6-1b82-0f57-539c8d9b6cac@gmail.com>
Date: Wed, 15 May 2019 08:17:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514215315.19228-2-lede@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_231838_091172_13E7C4E1 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 5/14/19 11:53 PM, Jeff Kletsky wrote:
> From: Jeff Kletsky <git-commits@allycomm.com>

That #define in $subject is called a macro.

Seems this patch adds a lot of almost duplicate code, can it be somehow
de-duplicated ?

> The GigaDevice GD5F1GQ4UFxxG SPI NAND utilizes three-byte addresses
> for its page-read ops.
> 
> http://www.gigadevice.com/datasheet/gd5f1gq4xfxxg/
> 
> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
> ---
>  include/linux/mtd/spinand.h | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
> index b92e2aa955b6..05fe98eebe27 100644
> --- a/include/linux/mtd/spinand.h
> +++ b/include/linux/mtd/spinand.h
> @@ -68,30 +68,60 @@
>  		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
>  		   SPI_MEM_OP_DATA_IN(len, buf, 1))
>  
> +#define SPINAND_PAGE_READ_FROM_CACHE_OP_3A(fast, addr, ndummy, buf, len) \
> +	SPI_MEM_OP(SPI_MEM_OP_CMD(fast ? 0x0b : 0x03, 1),		\
> +		   SPI_MEM_OP_ADDR(3, addr, 1),				\
> +		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
> +		   SPI_MEM_OP_DATA_IN(len, buf, 1))
> +
>  #define SPINAND_PAGE_READ_FROM_CACHE_X2_OP(addr, ndummy, buf, len)	\
>  	SPI_MEM_OP(SPI_MEM_OP_CMD(0x3b, 1),				\
>  		   SPI_MEM_OP_ADDR(2, addr, 1),				\
>  		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
>  		   SPI_MEM_OP_DATA_IN(len, buf, 2))
>  
> +#define SPINAND_PAGE_READ_FROM_CACHE_X2_OP_3A(addr, ndummy, buf, len)	\
> +	SPI_MEM_OP(SPI_MEM_OP_CMD(0x3b, 1),				\
> +		   SPI_MEM_OP_ADDR(3, addr, 1),				\
> +		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
> +		   SPI_MEM_OP_DATA_IN(len, buf, 2))
> +
>  #define SPINAND_PAGE_READ_FROM_CACHE_X4_OP(addr, ndummy, buf, len)	\
>  	SPI_MEM_OP(SPI_MEM_OP_CMD(0x6b, 1),				\
>  		   SPI_MEM_OP_ADDR(2, addr, 1),				\
>  		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
>  		   SPI_MEM_OP_DATA_IN(len, buf, 4))
>  
> +#define SPINAND_PAGE_READ_FROM_CACHE_X4_OP_3A(addr, ndummy, buf, len)	\
> +	SPI_MEM_OP(SPI_MEM_OP_CMD(0x6b, 1),				\
> +		   SPI_MEM_OP_ADDR(3, addr, 1),				\
> +		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
> +		   SPI_MEM_OP_DATA_IN(len, buf, 4))
> +
>  #define SPINAND_PAGE_READ_FROM_CACHE_DUALIO_OP(addr, ndummy, buf, len)	\
>  	SPI_MEM_OP(SPI_MEM_OP_CMD(0xbb, 1),				\
>  		   SPI_MEM_OP_ADDR(2, addr, 2),				\
>  		   SPI_MEM_OP_DUMMY(ndummy, 2),				\
>  		   SPI_MEM_OP_DATA_IN(len, buf, 2))
>  
> +#define SPINAND_PAGE_READ_FROM_CACHE_DUALIO_OP_3A(addr, ndummy, buf, len) \
> +	SPI_MEM_OP(SPI_MEM_OP_CMD(0xbb, 1),				\
> +		   SPI_MEM_OP_ADDR(3, addr, 2),				\
> +		   SPI_MEM_OP_DUMMY(ndummy, 2),				\
> +		   SPI_MEM_OP_DATA_IN(len, buf, 2))
> +
>  #define SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(addr, ndummy, buf, len)	\
>  	SPI_MEM_OP(SPI_MEM_OP_CMD(0xeb, 1),				\
>  		   SPI_MEM_OP_ADDR(2, addr, 4),				\
>  		   SPI_MEM_OP_DUMMY(ndummy, 4),				\
>  		   SPI_MEM_OP_DATA_IN(len, buf, 4))
>  
> +#define SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP_3A(addr, ndummy, buf, len) \
> +	SPI_MEM_OP(SPI_MEM_OP_CMD(0xeb, 1),				\
> +		   SPI_MEM_OP_ADDR(3, addr, 4),				\
> +		   SPI_MEM_OP_DUMMY(ndummy, 4),				\
> +		   SPI_MEM_OP_DATA_IN(len, buf, 4))
> +
>  #define SPINAND_PROG_EXEC_OP(addr)					\
>  	SPI_MEM_OP(SPI_MEM_OP_CMD(0x10, 1),				\
>  		   SPI_MEM_OP_ADDR(3, addr, 1),				\
> 


-- 
Best regards,
Marek Vasut

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
