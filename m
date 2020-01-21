Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ED414468B
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Jan 2020 22:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtyOBC8pAbC4OHXhA62V4V0C84wwTsIXGa5J7EhBp2A=; b=qZI8S28CpWL8vJ
	pjkU9KeuHrAd19QOD17ZhHDFEE0Nb7MIqCfiJNQj2uZiGtmHB+/+XeR9rmti27pXcWyBZUtbDRrHD
	6dSXMNvw80HB5kHgpeRpJsfceg8IF1mW4HDziBYEhe5FZqWa9jT6DtIhP2t4G+6neKBbLSYa7ckEv
	Oho0XVfTM/322COiVNx1MqL+dhw7lB3SFBWwbmISP3D89hdHk8dnRmnYJ/sK5R9E6Yp2c9UxOQxQa
	JGi1z+8cMsTzKtv1oBqGyGQcKDtteTH9FUMn3wQOdE2TaJmCK8QvlSkLBbR+EJgHFqx8MmhJl6Y3d
	OH7j0vMH8H3NksklfK5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1CR-0004vO-8w; Tue, 21 Jan 2020 21:36:39 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1CF-0004ue-AM
 for linux-mtd@lists.infradead.org; Tue, 21 Jan 2020 21:36:32 +0000
Received: by mail-pf1-f193.google.com with SMTP id q8so2157462pfh.7
 for <linux-mtd@lists.infradead.org>; Tue, 21 Jan 2020 13:36:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5E3leOx8mkDeLNWMdug8yTuuSxcBJ1PUjfQJE88tDM4=;
 b=SzLFDR18aUbi8BRhRnFCRlBQi95h8HKOiup801EQ//fcD+bzkRMwKO6vfya0EYM5XA
 GlQQrGzEksPcDpgJ86CGuH7z9xzLPSijnIYQSu1Sv3SxhUhv2evYU3pI/vx3yQruiXDZ
 vi3rAKEsXpO+U2VC3i4uWYo0LtjA4uRLqQ5QeNQVSjtjHRJi7cpg16/aoosp3P9Gj3/Y
 XTS82JsWU4CzwEjbAhbEg77OhKr/yOTCULRfok0WyyhksSEYcL3PWlnsxQ1nsIdMTDn9
 d3c7j/eMvIW3CMsOt8nE9u6dY3AtHaYOrYCXsbwYVb8oSKQAKH4vu5dSw5YfefN/cpNP
 QD7Q==
X-Gm-Message-State: APjAAAVHo3nOU1RDCyP56hgjX82O7h6gLiAjwrREuCNci0frU0oGi7Ct
 mNEH1gzSulxQiNmBVtkilpI=
X-Google-Smtp-Source: APXvYqxsUHAjAyitLEiDaPpJCe7u+UqiIWSvSSQ37YpJNgMu144R9j4TyoyRpzpeVvHls0KTjJ5jWw==
X-Received: by 2002:a63:2a49:: with SMTP id q70mr7371095pgq.265.1579642585629; 
 Tue, 21 Jan 2020 13:36:25 -0800 (PST)
Received: from localhost (MIPS-TECHNO.ear1.SanJose1.Level3.net. [4.15.122.74])
 by smtp.gmail.com with ESMTPSA id
 k21sm43078123pgt.22.2020.01.21.13.36.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 13:36:24 -0800 (PST)
Date: Tue, 21 Jan 2020 13:36:24 -0800
From: Paul Burton <paulburton@kernel.org>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH V2 2/3] arch: mips: brcm: Add 7425 flash-edu support
Message-ID: <20200121213624.iy2zcmixdea4iwqg@pburton-laptop>
References: <20200121200011.32296-1-kdasu.kdev@gmail.com>
 <20200121200011.32296-2-kdasu.kdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121200011.32296-2-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_133627_358317_8D77FF86 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [paulburton89[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paulburton89[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, James Hogan <jhogan@kernel.org>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Kamal,

On Tue, Jan 21, 2020 at 03:00:07PM -0500, Kamal Dasu wrote:
> Nand controller v5.0 and v6.0 have nand edu blocks that enable
> dma nand flash transfers. This allows for faster read and write
> access.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> ---
>  arch/mips/boot/dts/brcm/bcm7425.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/mips/boot/dts/brcm/bcm7425.dtsi b/arch/mips/boot/dts/brcm/bcm7425.dtsi
> index 410e61ebaf9e..aa0b2d39c902 100644
> --- a/arch/mips/boot/dts/brcm/bcm7425.dtsi
> +++ b/arch/mips/boot/dts/brcm/bcm7425.dtsi
> @@ -403,8 +403,8 @@
>  			compatible = "brcm,brcmnand-v5.0", "brcm,brcmnand";
>  			#address-cells = <1>;
>  			#size-cells = <0>;
> -			reg-names = "nand";
> -			reg = <0x41b800 0x400>;
> +			reg-names = "nand", "flash-edu";
> +			reg = <0x41b800 0x400>, <0x41bc00 0x24>;
>  			interrupt-parent = <&hif_l2_intc>;
>  			interrupts = <24>;
>  			status = "disabled";

I wasn't copied on the rest of the series, but presuming patch 1
documents flash-edu in the binding documentation at
Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt:

    Acked-by: Paul Burton <paulburton@kernel.org>

Thanks,
    Paul

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
