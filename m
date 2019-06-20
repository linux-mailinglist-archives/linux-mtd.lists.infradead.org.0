Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1454DA8E
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Jun 2019 21:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDUz+zNJLxw0r16Tu0ExiqUBZ69wTMdaVMymQFqw05I=; b=eU2lDI9o7d0tt7
	NlcVFqB4QxYDliLA87N21JRphqWzQIPLTVypzz7Zm2liafHipOsAl9yLvYZpdupDodjlJ/UjetdIz
	ucC4/BHQMzRM07CEP9fA5YnRNcYhxIUssEmhlYQV269a/QU0XJE9scbOBET81rxQXsjwQWaQKn5Ak
	J6kZGqwuceYV/kn56SwsON5S+coeDggGCUhBjcdMc6eD3OWmsqv1vwX53Dt9DbeUvYoh5ULgzFrOw
	cpuIkcB9c+qd3MAQiFq8caHVzWpJarSHsv4XQaSVMyVPAcynvV0bG4xnBse+Y3TNmZ3Wt4Q/tLZtz
	9IPCxP5RzM8uJ3XUOpDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he32y-0005FQ-8Y; Thu, 20 Jun 2019 19:48:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he32V-00054r-MG
 for linux-mtd@lists.infradead.org; Thu, 20 Jun 2019 19:48:09 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so3831142ljj.3
 for <linux-mtd@lists.infradead.org>; Thu, 20 Jun 2019 12:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DiLGYKI//ln9TQDjClJ3qLkZ4+6ogsSbHs45QXIwYsg=;
 b=jNNUOCYmU/JK5+UWg28Aqbf8xYiFLRnSldyJKKOqmDY0/vwfwE0cxokADlvibQ7WG9
 rKkDfuom+wSxmcPQ+tJKT2gBiSZ9xXNQM2/4mrOgSiE06jLE14C22X5ZRyIqg9MUiKQg
 UJb2kmWO2BWr+EoPSphPXDggbCNB9IhYM0IHV7UFpNZNWbdLw+HXPPXU0eNMASytrLfk
 nb78wyy65As2v8t6QrnFye0EOJEX2L6QyEbxBrSo5VQP54x0Yd40C4WTNeTDXYntDPr6
 QkuuLiU/eLvCA5QTImNc8I2QqSKs/hSxL3sMvyBUEblA2hC6pI012RMnPjdLz/bQ1KbK
 WdfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=DiLGYKI//ln9TQDjClJ3qLkZ4+6ogsSbHs45QXIwYsg=;
 b=Cle0UbzHb+rwtTpArCukeBCuYKCUKQRaHLhu91FwVFscES4vSaTfplAFyYIUiZTvRw
 yME19OS1ZHo+Rc8DTTtNqsWD44SB+I28aplWikBhZfnPiEfNimLaRZVZxZOCTxWRMOzO
 gV0baK+4zt+7p+Q9QQTI97bncBNQdD9ENsAB0q1dbu2m9/5bXd3UguBix4jd+//j0sFT
 IvYihLiKkxNxcPmffAhx5TGDaOkMhrrM60WK3T/CF9N3nm+7h0kgoaG7jZCJ76cQkvOC
 CRxeSLnLDCPTDEEDTSppMGPNPRjnEQM3eqdbN6dMySFdR4Cz3+6G6hC0qdeMybm3DYfF
 47Yw==
X-Gm-Message-State: APjAAAXj66FBRMYriyCQ5Iyspaqc90D8KZ1iN1QlphUgCEAwLtwBzOlM
 WTUMhVvUEAtmz+iNRsuqTFg6ew==
X-Google-Smtp-Source: APXvYqyFd6TRCOumDBpWc4p1kzxveKVV0+WF6v+02t8D9nWCK7W5yGioY0Fkzuf6ZjwlPM2PnfVURg==
X-Received: by 2002:a2e:9106:: with SMTP id m6mr56628892ljg.164.1561060084407; 
 Thu, 20 Jun 2019 12:48:04 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.80.47])
 by smtp.gmail.com with ESMTPSA id g4sm83832lfb.31.2019.06.20.12.48.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 12:48:03 -0700 (PDT)
Subject: Re: [PATCH v7 4/5] dt-bindings: mtd: Add bindings for TI's AM654
 HyperBus memory controller
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190620172250.9102-1-vigneshr@ti.com>
 <20190620172250.9102-5-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <d4ddd75d-92ab-4bca-5e2f-853ade714ba2@cogentembedded.com>
Date: Thu, 20 Jun 2019 22:48:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190620172250.9102-5-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_124807_915528_E6C551BC 
X-CRM114-Status: GOOD (  18.87  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 06/20/2019 08:22 PM, Vignesh Raghavendra wrote:

> Add binding documentation for TI's HyperBus memory controller present on
> AM654 SoC.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
> 
> v7: Fix example to move HyperBus node out of syscon
> v6: Use generic names for bindings
> 
>  .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 52 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> 
> diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> new file mode 100644
> index 000000000000..d424a0b88ab6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
[...]
> +Example:
> +
> +	system-controller@47000000 {
> +		compatible = "syscon", "simple-mfd";
> +		reg = <0x0 0x47000000 0x0 0x100>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		hbmc_mux: multiplexer {
> +			compatible = "mmio-mux";
> +			#mux-control-cells = <1>;
> +			mux-reg-masks = <0x4 0x2>; /* 0: reg 0x4, bit 1 */
> +		};
> +

   Empty line not needed here.

> +	};
> +
> +	hbmc: hyperbus@47034000 {
> +		compatible = "ti,am654-hbmc";
> +		reg = <0x0 0x47034000 0x0 0x100>,
> +			<0x5 0x00000000 0x1 0x0000000>;
> +		power-domains = <&k3_pds 55>;
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
> +			 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
> +		mux-controls = <&hbmc_mux 0>;
> +
> +			/* Slave flash node */

   Overindented.

> +		flash@0,0 {
> +			compatible = "cypress,hyperflash", "cfi-flash";
> +			reg = <0x0 0x0 0x4000000>;
> +		};
> +	};
[...]

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
