Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141931EA6F9
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 17:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypVE99axSli+AvguzfEI0hsyqP06rdlXM1UqEy6TCwM=; b=I+fjeIk2O5ziO7
	GIBnb7vy9nZChmbwAsbh1ekW4oeJmhqVZ86KnuJClhs715YqE5ftVMMhkkLrCP0pVAQZibsuukWoB
	AUE+7fmEt2qG4RW/DXie/02ShpoUWzo8k/s7dbRUdF4IivtHoY4Vg8vKzYLFr2RCpMt8VFyjVjQ+/
	K18uXDaAsyImFVEmuMtYdlxe3z9ufED73ugQmi/k3NJzs/khLIurfQ/wCmIUcYk7pjPEfcNepMe8a
	2AgneAMQlbMhbaXFH7hqY48j26GeIfDSHRCM0WdjyWSjndHEXbRebPw8YS+3FQ6JybUILNS/UVYoW
	oQYCSOZeEmLqruXH9aRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmWd-00013U-Ft; Mon, 01 Jun 2020 15:38:55 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfmWV-00013C-Vg
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 15:38:49 +0000
Received: by mail-io1-f68.google.com with SMTP id c8so7344732iob.6
 for <linux-mtd@lists.infradead.org>; Mon, 01 Jun 2020 08:38:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CDM37rioFaHDwFqAto2+Bw+wARtkcLP5WD+n2feLzXw=;
 b=imtQoituhhFPNXctHbbbjZkMroN4yG1c6DcwVhorYoVDRiabfXbrnhNZ5YjSTCnvWv
 czFpAwk/tDQ+nV++5Y4Mp76TgMDvJIrv1Q3Qhrbk0mJ5YBFmqXRyAobSj9ClDEoqhVhL
 lVLAgzM1hnDZhME+UXGpAwndmQdpfhBNezwH1olVgN0vM8vHIIHGUUmwHZsAHcJTuPah
 ReByG+TD+G7tNSnMNWoBHAxjgwimiocsiVwLQLfo+mgKG3fIkj3wxtQ3rGfSs1fyRG8b
 2Yf3CvYd8+ZpuEIRztpgvi+ZuDOAtQcvZy2X7MrT3ZfoP99hpjlNIUOlfUO+AGmlqy+R
 YM2w==
X-Gm-Message-State: AOAM530pc9OihMECQnIDFAR79ECWVyDG0SPAGPLjjXYFOK388MB5ebKg
 LxxLlAeqwypHfshTLDvWtw==
X-Google-Smtp-Source: ABdhPJzFApjLBdOEoq97wU671Fuxf5SQK6949rH8EWZ5Y/LYwbVomscZOA7JDF6HRFZfUOyYrPnk7g==
X-Received: by 2002:a5d:8cc1:: with SMTP id k1mr9372757iot.123.1591025926294; 
 Mon, 01 Jun 2020 08:38:46 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id v17sm7452956iln.67.2020.06.01.08.38.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 08:38:45 -0700 (PDT)
Received: (nullmailer pid 955608 invoked by uid 1000);
 Mon, 01 Jun 2020 15:38:44 -0000
Date: Mon, 1 Jun 2020 09:38:44 -0600
From: Rob Herring <robh@kernel.org>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v11 1/2] dt-bindings: mtd: Add Nand Flash Controller
 support for Intel LGM SoC
Message-ID: <20200601153844.GA955555@bogus>
References: <20200530005117.10986-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200530005117.10986-2-vadivel.muruganx.ramuthevar@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200530005117.10986-2-vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_083848_019549_0DD05D76 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 masonccyang@mxic.com.tw, anders.roxell@linaro.org, andriy.shevchenko@intel.com,
 arnd@arndb.de, hauke.mehrtens@intel.com, richard@nod.at,
 miquel.raynal@bootlin.com, brendanhiggins@google.com,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, boris.brezillon@collabora.com,
 tglx@linutronix.de, qi-ming.wu@intel.com, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 30 May 2020 08:51:16 +0800, Ramuthevar,Vadivel MuruganX wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> Add YAML file for dt-bindings to support NAND Flash Controller
> on Intel's Lightning Mountain SoC.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> ---
>  .../devicetree/bindings/mtd/intel,lgm-nand.yaml    | 99 ++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
