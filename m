Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E280127866
	for <lists+linux-mtd@lfdr.de>; Thu, 23 May 2019 10:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCqo9zr0meIT5i55DUQOe7+dIFq6ASXko4zT1dA11f0=; b=NJyAANpztp4TxE
	c32xOE4I2CcmINiqbgWZCmNmsAeeem0FMgV/VdJHkMOOhLaE2b4jkqTrE/FeksQyFdbDHFhjtb1Qt
	BdrZ/E6TpshFvCK7hzK+topQFQ/QulSOWan4AzxedkuYXcRm/1gvNw2Z4dgO82Ovw3H8eToAfl5tK
	NuKcJbLbMpQmfjGIBHkixc3JW/+Anvpa5kQFon0FCge7QAUI+trVKrzCY+EnIA/eApwjd7lUYHuRn
	D0wALs9Le2QFWyK32u1m1Jn9iVTUxXL+oaPcAD6w6mEpBO7sqwZ7xMC0jvrZ1Orc9IR8r75z9SxUk
	+XQS7jRQgMQXrYJoz0tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjPk-0002RN-ES; Thu, 23 May 2019 08:49:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjPQ-0002Ix-Mj; Thu, 23 May 2019 08:49:12 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D319D20675;
 Thu, 23 May 2019 08:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558601348;
 bh=PS2f+sHObdC4FV6JGNeQEnURnd3HAy/JuIONSll3wz0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JPEd3OX0NqUTxUXqY/bw3cMOUuoiflmsHC66la0O7wPNYEs3c0Mat9kqJLlQNeMd4
 kKrzGPqTy+1s/HfD2hic5L4k6ZnUjK/MSiozU4mgZfF0dMnfyfqYK8PJGOySNAMnZU
 1S5CUDgL9trsqYuhhuSXONiH5EMx+wGTaRPP36FU=
Date: Thu, 23 May 2019 16:48:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1088a: Add QSPI support
Message-ID: <20190523084808.GO9261@dragon>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
 <20190516114807.30817-3-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516114807.30817-3-kuldeep.singh@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_014910_765910_570A4EF8 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 Ashish Kumar <ashish.kumar@nxp.com>, "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:47:07AM +0000, Kuldeep Singh wrote:
> QSPI support is added for kernel version greater than 5.0 and supports
> quad mode defined by
> TX-WIDTH = <4>, RX-WIDTH = <4>
> 
> RDB/QDS has two 64MB flash from SPANSION(s25fs512s)
> 
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> ---
> Dependency on https://patchwork.ozlabs.org/patch/1100471/
> Dependency on https://patchwork.ozlabs.org/patch/1100472/

Please send dts changes only after dependencies get accepted.

Shawn

> 
>  .../boot/dts/freescale/fsl-ls1088a-qds.dts    | 26 +++++++++++++++++++
>  .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 26 +++++++++++++++++++
>  .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 13 ++++++++++
>  3 files changed, 65 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
> index 6f48d21b97c0..f01f7fca9df7 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
> @@ -98,6 +98,32 @@
>  	};
>  };
>  
> +&qspi {
> +	status = "okay";
> +
> +	qflash0: flash@0 {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <0>;
> +	};
> +
> +	qflash1: flash@1 {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <1>;
> +	};
> +};
> +
>  &duart0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> index 8e925df6c01c..bdec7e996dbe 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> @@ -74,6 +74,32 @@
>  	};
>  };
>  
> +&qspi {
> +	status = "okay";
> +
> +	qflash0: flash@0 {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <0>;
> +	};
> +
> +	qflash1: flash@1  {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <1>;
> +	};
> +};
> +
>  &duart0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 661137ffa319..96424fd9cd2e 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -318,6 +318,19 @@
>  			status = "disabled";
>  		};
>  
> +		qspi: spi@20c0000 {
> +			status = "disabled";
> +			compatible = "fsl,ls2080a-qspi", "fsl,ls1088a-qspi";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x0 0x20c0000 0x0 0x10000>,
> +			      <0x0 0x20000000 0x0 0x10000000>;
> +			reg-names = "QuadSPI", "QuadSPI-memory";
> +			interrupts = <0 25 0x4>; /* Level high type */
> +			clocks = <&clockgen 4 3>, <&clockgen 4 3>;
> +			clock-names = "qspi_en", "qspi";
> +		};
> +
>  		i2c0: i2c@2000000 {
>  			compatible = "fsl,vf610-i2c";
>  			#address-cells = <1>;
> -- 
> 2.17.1
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
