Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA586AFE42
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Sep 2019 16:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrlrprtrHPCt2+x2VkVWNOlnajhTHjhmClzcd5164mw=; b=HRfYzwPwEVGluL
	sYLRaEK2+4+O8X7qvQyBZ37aATbduVtMtAhKAXaOev8lD+RcHSfrNvF9wwCYt9u1ObG1hLQLKODAN
	7MLM9CxTOemZOKpzL86CBzIMDG4f0YCMhqHrmtVZV8e4n/nvIRkbKIqVolo5+mSjPKnTPurFAxMfK
	WPHUPexHHYa7DeM2eT/DCpK5YmrBbyghhQUuWfLWz5UpN8LGCM6eLHwh99LPyTYOcwQOsAN8WkJTc
	fFOu1ab7CGIAMzxtbgt9J7jh8SVF+3qSSbvlZhaUo4IkhdB5rVlhbiEfivCEiOPzfCDoXVglP0jQM
	RBaFZmrsFYwXbzOMrW4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83CG-0005m2-7L; Wed, 11 Sep 2019 14:02:12 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83Bx-0005lO-3m
 for linux-mtd@lists.infradead.org; Wed, 11 Sep 2019 14:01:54 +0000
Received: by mail-io1-xd44.google.com with SMTP id j4so46026133iog.11
 for <linux-mtd@lists.infradead.org>; Wed, 11 Sep 2019 07:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gVldwPHBEEmbVAp0mqxQZ8yLS+V+O/vse0Nw9BG4UF4=;
 b=hBNyoV0eH/Hs1sEwCVhxj9P0JoyfQUrF0U3/ZXzz5girYAggowVoFY2+1JI1EFRFpQ
 Fjsdy0gmaNawhrBqh3dirr4WnLeBVcC85YwTMGzVZcowXPgFcVvsoCQ2eF8suXeCJVkz
 JzE011UVXk9nKhJXe1Y50RbHaKbNCH5/fiOGC5eeYN5XB9LkSZHr4wCn93Q4fqtTOCHy
 ptj6s8zn2e1a8JDLxhyaflKp/gsslZYNCH3Xqp+OJsjpf3peoaBVI2T8yCpbdH7MD6Fo
 bl/p/zPK8SVvwuHoAbYY/baFe/qYTBigkc9dQIQv9bno/q7j4HmDRzajYYWIY4yFWnXz
 WJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gVldwPHBEEmbVAp0mqxQZ8yLS+V+O/vse0Nw9BG4UF4=;
 b=jOunW2DzSi0OxCXrjqCt6DYcO2FRXACwOyvvGZtYWI6ESEj5AYMaRtmaVFDpsQgTUT
 g/VvwroFs6ggYPGDwgf5wzg6pE0H+6aYA2XgLBAb2ItCTNklEpLrFuIrMyeh3ymYkjzh
 SoD7D1lGFSHziDUAblKud2O003mG8HK1hnNG+ACENXQWoKNcorEo7alWajpgLU3tVITs
 YQvP+hztYk4W3W0QeQk7zygOg69dWPGeellYy/hBlgFItzMhiihZvN50HmH0vOt1qPPA
 C5mmESaACiVs24GvzkOou+udVuk0uyd7K38LSXrDlrF6J/mlqxHa1H4iz4c4e3CSMW+t
 YTfw==
X-Gm-Message-State: APjAAAV2UeS82s1/Aeaj3qo20XADLUmkNecGR+S89kRBk/YgFHKSnQ3H
 Q3VmdNIymrkH4Hdh03JrqOHNbYXt9KZmwFxR3zqFzw==
X-Google-Smtp-Source: APXvYqxA0bdjqPHqQ2NueNxICWH/tLLMJq1Vz+tJAm+kZ8i8BExfLfIhffXcQQNYtvksdWYGm4ADVKWY6+G86Koreqs=
X-Received: by 2002:a05:6638:93b:: with SMTP id
 27mr1396480jak.36.1568210511727; 
 Wed, 11 Sep 2019 07:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190905161759.28036-1-mathieu.poirier@linaro.org>
 <20190905161759.28036-5-mathieu.poirier@linaro.org>
 <20190910143601.GD3362@kroah.com>
In-Reply-To: <20190910143601.GD3362@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 11 Sep 2019 08:01:40 -0600
Message-ID: <CANLsYkwkq2fLWsGXHxr2tSBLHdfe4JXgu8ehuD1FOEQeDAPNnA@mail.gmail.com>
Subject: Re: [BACKPORT 4.14.y 04/18] usb: dwc3: Allow disabling of
 metastability workaround
To: Greg KH <greg@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_070153_159625_29983EA0 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, linux-mtd@lists.infradead.org,
 "# 4 . 7" <stable@vger.kernel.org>, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019 at 08:36, Greg KH <greg@kroah.com> wrote:
>
> On Thu, Sep 05, 2019 at 10:17:45AM -0600, Mathieu Poirier wrote:
> > From: Roger Quadros <rogerq@ti.com>
> >
> > commit 42bf02ec6e420e541af9a47437d0bdf961ca2972 upstream
> >
> > Some platforms (e.g. TI's DRA7 USB2 instance) have more trouble
> > with the metastability workaround as it supports only
> > a High-Speed PHY and the PHY can enter into an Erratic state [1]
> > when the controller is set in SuperSpeed mode as part of
> > the metastability workaround.
> >
> > This causes upto 2 seconds delay in enumeration on DRA7's USB2
> > instance in gadget mode.
> >
> > If these platforms can be better off without the workaround,
> > provide a device tree property to suggest that so the workaround
> > is avoided.
> >
> > [1] Device mode enumeration trace showing PHY Erratic Error.
> >      irq/90-dwc3-969   [000] d...    52.323145: dwc3_event: event (00000901): Erratic Error [U0]
> >      irq/90-dwc3-969   [000] d...    52.560646: dwc3_event: event (00000901): Erratic Error [U0]
> >      irq/90-dwc3-969   [000] d...    52.798144: dwc3_event: event (00000901): Erratic Error [U0]
>
> Does the DT also need to get updated with this new id for this?  Is that
> a separate patch somewhere?

The upstream commit is:

b8c9c6fa2002 ARM: dts: dra7: Disable USB metastability workaround for USB2

Should I just send the latter or you prefer a resend with both patches?

Thanks,
Mathieu

>
> thanks,
>
> greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
