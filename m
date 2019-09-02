Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DD9A5849
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Sep 2019 15:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whaBnxBXfCHWnhOarsOc6bf3t8ixE2ETytw5TQNORak=; b=owwUiemZFPeu1i
	3AO6fuYUtqVCanGQy2LYyurkEFRZ9kQndUeaE6IU+vFcH6bBbyxuyNPqvOo76FIyd8zfs9RlqC4KY
	cgMzckxdlmL1JUo8NxeacLumFh2InM/Untz/2uD8LmM+RnRdz85KvQixTqOMRiGChC5GeHjzZSiO3
	1gjknTbXB5oJTI2DRbKRu6ILaOKFXisoo/BCmhZKpwoaGEnSsAfc17Kvc0C4ov+WmG4ujga9hCzUH
	mz93KrwevnHssZc2u6zxBmKu27FkmNHXWg7MKcOJu9EcAAyl6a9Il5I4Mcaxkn5EsM3wsjvb1NIiX
	X9xFrHWYea67KyYHctag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mcJ-0007J3-EW; Mon, 02 Sep 2019 13:43:35 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mYB-0001j2-HG
 for linux-mtd@lists.infradead.org; Mon, 02 Sep 2019 13:39:20 +0000
Received: by mail-wm1-f65.google.com with SMTP id q19so5833891wmc.3
 for <linux-mtd@lists.infradead.org>; Mon, 02 Sep 2019 06:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=PkDpB4sth3sTgCnaLAVjJ1mLztUz5Y7mplxR5CYkQGc=;
 b=ei22fVNtKeZ97GvMgtAs9TXorc6b7+oF677WAus66O9f76K5Yqk2v0/+RaCQ0Hsy/O
 i6bny240zhZJJty5DCD+ExHrPm9cpYBr5mwJN20EWI/oRoEQHG25NBAXiehet5v7xj6j
 LrYEhfnV0vePXMPNSSadQ9y2Iro/vRjhUaHGqrBgrbVC1FkU4iCp+92lpIM+vlLl2nkc
 S28svmzewhlnacXK9SJFZHQz4L8HKzqV0S8e+7O7TFgHQ2mNePCdFocpFBNPBg7VeEZV
 jQG2ThfwqSEV/gIgkg5MGW5DWIOhzrJ350ZtYCsOYlrno+M0JSDf/SwPQjD4PDYsbEvJ
 cV3g==
X-Gm-Message-State: APjAAAV6v9y+fdOrAaHC09gJMq0Lw2tRuVMIqug7Y6zUwfc7ame8rr9k
 nl49yq3hfXteBLYAXPSwwg==
X-Google-Smtp-Source: APXvYqwYm2s6Gmmrf6ryiQK0P0Y0VG6vrlmGJlljuLZ0cRK11tDXzUM3GY5iH8aQZK9NTww/KJUsIg==
X-Received: by 2002:a7b:ca5a:: with SMTP id m26mr5204994wml.177.1567431558279; 
 Mon, 02 Sep 2019 06:39:18 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id l9sm11671308wmi.29.2019.09.02.06.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:17 -0700 (PDT)
Message-ID: <5d6d1b85.1c69fb81.96938.0315@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:17 +0100
From: Rob Herring <robh@kernel.org>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: cadence-qspi:add support for
 Intel lgm-qspi
References: <20190827035827.21024-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20190827035827.21024-2-vadivel.muruganx.ramuthevar@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827035827.21024-2-vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063919_628399_B5EEFFBD 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 tudor.ambarus@gmail.com, vigneshr@ti.com, boris.brezillon@free-electrons.com,
 richard@nod.at, qi-ming.wu@intel.com, linux-kernel@vger.kernel.org,
 david.oberhollenzer@sigma-star.at,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com, jwboyer@gmail.com,
 computersforpeace@gmail.com, dwmw2@infradead.org, cyrille.pitchen@atmel.com,
 andriy.shevchenko@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 11:58:25 +0800, "Ramuthevar,Vadivel MuruganX"          wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> Add new vendor specific compatible string to check Intel's Lightning
> Mountain(LGM) QSPI features enablement in cadence-quadspi driver.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> ---
>  Documentation/devicetree/bindings/mtd/cadence-quadspi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
