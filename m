Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 820E3AED2B
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Sep 2019 16:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Kxjp0hgCKygztBSdLZ9XVaL3Z3FLRT86AK9b5rCyW8=; b=bWMcm8RsmCYV4U
	46Jg9wkVMAJI7KRqPGTGuA8pRExS78J6Aos7Unu6+nJZlIyxBPh+Wo4CdX2btJYE33MDRon6pB//j
	BiGyz3cRqK4+Tsch2418cHBwAvgNuAXjMRkEmSNUhnsjDYNZhmOEAdrgPtRUCXQfYQy66Pz4wtvro
	tay6A9Om1FimUG3PWUqRxSckv4KMMMbtpGFlCoV/wPlDcSkL48OEk/3oG9iybbedORe/rmNIDLfur
	oqG5kVXA64GE5V/Gy3f2I0WAwr0+G1r5ZH5cWDEGQOTfkM00O942jk8tCGq8WeW4Pp2ybxNd8uRU5
	U8mInu6eq7SIyUeXGzzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hFe-0008Tt-7r; Tue, 10 Sep 2019 14:36:14 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hFV-0008Tb-OK
 for linux-mtd@lists.infradead.org; Tue, 10 Sep 2019 14:36:07 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 5B83D39D;
 Tue, 10 Sep 2019 10:36:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 10 Sep 2019 10:36:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=CTpkFiirlhlfJdSOyJ+gt7DX6Cy
 zDZ62hzOsET0mhbo=; b=lkh6dNnA3YhMT+NXx0V2JjxLY7ygwA858KG/TNG82FR
 l+c0YziEnMJXolVI1m9Y06jNivfKgKPI8B5Z1Y+JDXa6H/7UpdPydIVoHGpBukhR
 ndb0uDrrTUgJ5pxvb71eV6p84+TdYDaXvm1vuS4zOpwo1uxsoIn3tITv9TsKBsYV
 VyaJR/07WM0YbsPuBfofcizQp0dqsI44yjNfRggE7QnC7t8sD2WE492HDr0AbPDe
 sBj0rD8VzwPtv9vPpQmVlXSpH6EZPsgL8PLcj6PF8WjlULjFtwSyg1hFXBEeM1C2
 VEn3ytXGUkxKgPU316VxQwhqw2NOgULhGe2K5XRKVMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=CTpkFi
 irlhlfJdSOyJ+gt7DX6CyzDZ62hzOsET0mhbo=; b=c3dcJSeZEG1PqPZAbXtE0N
 1hRnC1pV4ZOMXbarctoPPUYS6zQdxGjFCmkKR7SV3892oLJRuujtuPjVlJd3vYoR
 Tl0rRjQK5Z0767L/PL78VlNvbWzCq45ioIR6PJ94Ux1t9IehrxP7WXZAGTGfAmxT
 wyw1lRpBTBKRl1LjlmkfR0svmvb6sfMg7bJd35/rZvkvEa+gMuTAeIcFy0aHHTHH
 XbyOH7BEnAWNwfuvy/qmcat6Cy2odTuoB7D8n+Rm+EHWmNyeYcHvUzOs8R5/Kw9a
 wUKl0hlaM92sOQpE/P9CLHq0OSbcUEBL2kBGfPmSS/hnbgmK+LHJhh83b9bizGsw
 ==
X-ME-Sender: <xms:07R3XYD3YvM0uVfjzS-sGVIlJ-VEfMYImfUF4DfbjfRAkK5c6FdbGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrtddtgdehhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepvddufedrfedtrdekrdduud
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
 lhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:07R3XSozf-BdWF6nTSVNcofSfTsb1ymwvCRI7MjgdeeQWELQCvza-g>
 <xmx:07R3XbGScT5vv2mtk8uqx05QhjRKJ3sB8gWwFrQRQPpWTItLm4zxuw>
 <xmx:07R3Xev5vKvi9esoDJ0xfA1WnYASLl26F-ek7FWORmfLhS4q65OXPw>
 <xmx:1LR3XaYlSxd1KG3afAJf4xBB2ytd8KUbFayK_ZPrdno8OoI8FrYJVg>
Received: from localhost (110.8.30.213.rev.vodafone.pt [213.30.8.110])
 by mail.messagingengine.com (Postfix) with ESMTPA id F1F8D8005C;
 Tue, 10 Sep 2019 10:36:02 -0400 (EDT)
Date: Tue, 10 Sep 2019 15:36:01 +0100
From: Greg KH <greg@kroah.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [BACKPORT 4.14.y 04/18] usb: dwc3: Allow disabling of
 metastability workaround
Message-ID: <20190910143601.GD3362@kroah.com>
References: <20190905161759.28036-1-mathieu.poirier@linaro.org>
 <20190905161759.28036-5-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905161759.28036-5-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_073605_829170_2D3D2459 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mtd@lists.infradead.org,
 stable@vger.kernel.org, linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 10:17:45AM -0600, Mathieu Poirier wrote:
> From: Roger Quadros <rogerq@ti.com>
> 
> commit 42bf02ec6e420e541af9a47437d0bdf961ca2972 upstream
> 
> Some platforms (e.g. TI's DRA7 USB2 instance) have more trouble
> with the metastability workaround as it supports only
> a High-Speed PHY and the PHY can enter into an Erratic state [1]
> when the controller is set in SuperSpeed mode as part of
> the metastability workaround.
> 
> This causes upto 2 seconds delay in enumeration on DRA7's USB2
> instance in gadget mode.
> 
> If these platforms can be better off without the workaround,
> provide a device tree property to suggest that so the workaround
> is avoided.
> 
> [1] Device mode enumeration trace showing PHY Erratic Error.
>      irq/90-dwc3-969   [000] d...    52.323145: dwc3_event: event (00000901): Erratic Error [U0]
>      irq/90-dwc3-969   [000] d...    52.560646: dwc3_event: event (00000901): Erratic Error [U0]
>      irq/90-dwc3-969   [000] d...    52.798144: dwc3_event: event (00000901): Erratic Error [U0]

Does the DT also need to get updated with this new id for this?  Is that
a separate patch somewhere?

thanks,

greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
