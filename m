Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BECC1B90AF
	for <lists+linux-mtd@lfdr.de>; Sun, 26 Apr 2020 15:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cV98uWgnLynVL4pl3ZkMDzKcG3rTKdrZMH3gtQ4CW9k=; b=XdrPodVW+C/TGv
	aLVjcWxLmlQxFCeRIn/D0FXIsiiJlAz7EqApP2Qy7j7eVuId1SWcMQJ+5JycP61lY8O/SmBv+EG9r
	yz+9/raMlu/pSJHfzmUrZKl+dZscqKFn0adjvR8NiDxkkPAwjb7uT8fNuRi7TBkU4s8liAsSfLRUw
	t3EA6DWz5gSMEOGvDglY5T7h65CSnZDY2X32/QUnNcyfysy0OONQeDyHIgd6dn4sXHTXpxiHPxNXS
	6l12gPErEmeG48/dFIta5ODN2QlabqvP2SurmJHSQgazuEuqmdhOlU+cYVYUiEB4OotUiSwKy7O9a
	TAN2GFPCQeGyANk7mWhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jShWS-0006hL-U1; Sun, 26 Apr 2020 13:40:40 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jShWF-0006g2-FZ; Sun, 26 Apr 2020 13:40:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id t14so17257454wrw.12;
 Sun, 26 Apr 2020 06:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+sfLnAVkgwewq2yi0A2h0qB6umF29EB4ptAx48KX6IA=;
 b=IbGMQCl4dehckFgGfBMPACJvT4fPKNpMmAnPSOo4IIXBvP4gL7G6i1saj4ix9wTuBY
 YlzmWwZadF+cGzBclaWrHk1OVWRsbw1KDMs1elqQZDZgoTFihLK34/XQCe0ek7kczLtk
 duswcMcQZyW6D07Uo5UPikSdUvfbNQ0OkFyFnuPGUI73vGsGkAUneb9b0I877vic/3Jo
 XMjX3CShkv2fVtHO/o5bZ1nDvisKvH5OPhKXpBUzRrQLkrJVmOmituz+inVwdNsBPqgW
 g/0djWUXSPXw5dZ2dQQAejvTqlUOA+Yp7gDHC6mlpuRU7pRxJ6N4yi0PJcSjDGoT6njW
 lOow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+sfLnAVkgwewq2yi0A2h0qB6umF29EB4ptAx48KX6IA=;
 b=LXJNi0HDoadOczCclMi6YmaooFMVPDCyBRLL8693/xx00+MdTlg+uhkaIcexuuHiE4
 zNlQ0weHh5B7zLIwVFpSgKgwZBHw4cq6N08uDKeJkV2A48V9xbnHJGNt5oZJAKYMgRtp
 AoIWElg54nWOrFU3/iAKUYjQDQx97FijH8SGf7bktwsLjSjbWp/ycEJN94n87XGm0BhC
 xBaaa7CcbRJn5F+jU31krwg/HrnjqBKRPoOWFtowyFKl+bKafjn9yzY+008INrhZCHyx
 rtHQtG5g/vqMtB5TvjtMtog5T0K1vS5PSyhnUtFLHaKvDYz4dLwRJZJswwFMcnwCkPN6
 fthw==
X-Gm-Message-State: AGi0PuY1xmfaI8I2itW0C50Fyr8qgucp+ZZrm/j0mSRQCa9wz5153GUs
 /OE4K9l+qEAWsMlCEgQXDrNiCuyU
X-Google-Smtp-Source: APiQypIDYRhG+TLJ9OvTSTngiaU1AY0a5tECxjZhh5mXZdCjrL1m9rRadFtsRcosEArIIPzOPZ6/lw==
X-Received: by 2002:adf:f10c:: with SMTP id r12mr22691915wro.409.1587908425710; 
 Sun, 26 Apr 2020 06:40:25 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id d7sm16376047wrn.78.2020.04.26.06.40.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Apr 2020 06:40:25 -0700 (PDT)
Subject: Re: [PATCH v5 3/7] MAINTAINERS: add maintainers to rockchip nfc
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426100250.14678-4-yifeng.zhao@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9e9e4831-3035-86dd-a478-c2f0eb3b47fd@gmail.com>
Date: Sun, 26 Apr 2020 15:40:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200426100250.14678-4-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_064027_544126_86314A44 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Yifeng,

Thank you for version 5.
A test with the command below gives this warning:

WARNING: Missing commit description - Add an appropriate one

WARNING: Misordered MAINTAINERS entry - list file patterns in alphabetic
order
#21: FILE: MAINTAINERS:2314:
 F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+F:	Documentation/devicetree/bindings/*/*rockchip*.yaml

./scripts/checkpatch.pl --strict
0003-MAINTAINERS-add-maintainers-to-rockchip-nfc.patch

The enties of MAINTAINERS have been sort with this command:

./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
--order

On 4/26/20 12:02 PM, Yifeng Zhao wrote:

Add a commit description.

> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
> 
>  MAINTAINERS | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 58725773cec4..187415b1481a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2308,11 +2308,11 @@ L:	linux-rockchip@lists.infradead.org
>  S:	Maintained
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git

>  F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> -F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> -F:	Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> +F:	Documentation/devicetree/bindings/*/*rockchip*.yaml

The script likes to see a different order here.

>  F:	arch/arm/boot/dts/rk3*
>  F:	arch/arm/boot/dts/rv1108*
>  F:	arch/arm/mach-rockchip/
> +F:	drivers/*/*/*/*rockchip*
>  F:	drivers/*/*/*rockchip*
>  F:	drivers/*/*rockchip*
>  F:	drivers/clk/rockchip/
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
