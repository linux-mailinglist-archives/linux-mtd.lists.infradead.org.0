Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F1F1E6E11
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 23:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yl3FXLk7iNE/X7I7TTJYSn+Wecdsr2AHcMH/IGy7HSo=; b=obzUGNt1u13Vus
	TKM3B5itWuZLGlMR6DqBc6CvOQjcvcFNNzLzBehUNOpelL1p5F4D2bLBEOqrHIQ1NWljuG9+6zrYq
	PHMuS+TwsY1Ye/0IsbHkv4F6n3wekic1RVwBLTyc18gimMXey0W/HGGaKOFH7sMjzXr6Y+cf9fIO3
	g9pCAem8S0/tRzkCCr3QeHTTheN2kkfhm+E60xSguT+sgy+VaCO1oyZGOoZ0NOiaijjBxRNDgGqPJ
	/c85TJl8B1GBQ+XlpqDGWPka5w5ynWHJ6J1Tfu576GV8mKrvkhN0imGphycGfkpLqKx/469TsbUpT
	TeyS8/Py0Zv4UwrZp84Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQM0-0007t3-Es; Thu, 28 May 2020 21:46:20 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQLS-0007g3-CJ
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 21:45:47 +0000
Received: by mail-io1-f65.google.com with SMTP id q8so124946iow.7
 for <linux-mtd@lists.infradead.org>; Thu, 28 May 2020 14:45:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=no6HlcdcFcA/a4l7oGUTR6aVzXC2MXn/zYF87og1wYg=;
 b=Uw0AXD9fn5y1FVgnoCisxNbhlKtWK464PIZnPgxu7/C2Fg+3AemnHJhcswP6d7SGPr
 /qCaYAhklG15xm3nshPKiy1Se0jThewQ4R+VVxcHBcGxLnmyNIrxWjEofjJUFYkurEar
 SiB8Bk8tLJPxhDnPHk3VFr1Te9mqzmK2KMal+NGDu52Hb/xqYgBzvd8/SG0+TMpPOfAh
 fefkkaB1jk66mdzY1x95NrMq9qQRLxb+lGAWaUbrXp9kZBURmsEhwktwbgqUUik77Hqz
 HYN1rJ/WbKlOje6rTZkzVTsQ9LrxIU7gAaLGtBxcYZJDmCFk/r9sTRHPUTLB42bdQF7w
 ACDQ==
X-Gm-Message-State: AOAM533U+zbkRs9ENrWMy5FuD7S2Q7tTz12UdG72icw8PMRAyfIi6KbX
 Nh5oBRs2S7sZQiwq7bIC7Q==
X-Google-Smtp-Source: ABdhPJzYXYmo9Aia4JUtPNGct0ALVvFbsn1fqj9BKNroCD9lDsLRuNfCbwzH+Nr0bgOoa2MCjhqxyA==
X-Received: by 2002:a05:6602:2001:: with SMTP id
 y1mr3953649iod.94.1590702345570; 
 Thu, 28 May 2020 14:45:45 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 129sm2877005ioy.0.2020.05.28.14.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:45:45 -0700 (PDT)
Received: (nullmailer pid 739310 invoked by uid 1000);
 Thu, 28 May 2020 21:45:44 -0000
Date: Thu, 28 May 2020 15:45:44 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v2 3/3] dt-bindings: mtd: Convert ingenic, jz4780-nand.txt
 to YAML
Message-ID: <20200528214544.GA739281@bogus>
References: <20200520002234.418025-1-paul@crapouillou.net>
 <20200520002234.418025-3-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520002234.418025-3-paul@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_144546_461231_5C0256CE 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Boris Brezillon <bbrezillon@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-gpio@vger.kernel.org, od@zcrc.me, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 02:22:34 +0200, Paul Cercueil wrote:
> Convert the ingenic,jz4780-nand.txt doc file to ingenic,nand.yaml.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
> 
> Notes:
>     v2: - Don't include ingenic,nemc-client.yaml which is gone
>     	- Use 'partitions' property instead of '^partitions$' pattern
> 
>  .../bindings/mtd/ingenic,jz4780-nand.txt      |  92 ------------
>  .../devicetree/bindings/mtd/ingenic,nand.yaml | 132 ++++++++++++++++++
>  2 files changed, 132 insertions(+), 92 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt
>  create mode 100644 Documentation/devicetree/bindings/mtd/ingenic,nand.yaml
> 

Applied, thanks!

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
