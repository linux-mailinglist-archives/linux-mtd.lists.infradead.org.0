Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49DC494C4
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 00:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kR6jxdFxIl/cWv8dGXJ8WhKTZ2806BoPUa9j4cEaqvQ=; b=mrzGrESG11msIQ
	hs2aa3ptJ2O5W2poAM8uAj4XvDDtc07lRzvnGBfFTKywJRE/KuU0I2umiB8OwVitO/koLb43ni+IY
	tg9Otfc21DN8Yba9jApeLnXYcx1aW/2okAFG3lWGHRJj9WvP2SJyWODOGfVTviY6gyO9eRqI4rEHr
	Wnk8OOVZ2PbBpuiobCIZ3Zk3RnCPE14n5tvTcPPgfHW7S2cdy4ZwbxuBGLCVHiHGYXHwlgeJCpv88
	WOvpR2az3yj+JgtOELs7vhmsvPXCmuYfIq3n+iF/Ds5hNFGgLZRuUO7QHOdBdorBscyEh6jxNy3+a
	OVciS86POgxWVcP4Dfog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcznO-000071-NC; Mon, 17 Jun 2019 22:08:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcznD-00006M-D8
 for linux-mtd@lists.infradead.org; Mon, 17 Jun 2019 22:08:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so910137wme.0
 for <linux-mtd@lists.infradead.org>; Mon, 17 Jun 2019 15:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cq3xBrs71UY77jcBkTVh4FMBqjMhDVmcFlATy07xl4g=;
 b=PbZ2WVJR34XQFcPuUzs458hR+8YmZWdEqmgFSzPWSFIlsVDZL06pJ3uu6mRjk90ijM
 Ee8SeuFeQB+HJC7TOCcuol0gC8EHJ/NDkb1Yj3HJH7fQXsBcYEInOndleiRmubwEHElP
 7jUyZlHaPY1EVbCrsfXv+5ZixqFnRco3DWxyGfSNlyOcWHhFyI0YvfQVXQePgYDQC9St
 Tu4rlUr9z8I52MyfZ5eAvJ7SyiMgOOcjtPv7NktHvOimQwKHX2CjGQPUjJXhRXk2xuEp
 UiA/oBZokE4JtjUJcY9nFy0HxjBPtOAGcvYAZ9pbkKWKQXERHt/Lcq0XxVR2kDyOgMIc
 2NLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cq3xBrs71UY77jcBkTVh4FMBqjMhDVmcFlATy07xl4g=;
 b=ZYyUhybSwQ3WiKmhZILDLWt5VE8XGZBbPdv41NHHv8bWSoigOaGAH0UWmtyp1B2PaM
 mVvlgxQRFDI9XtME8A6xXTP1Pf9AFGowQUVP9/IEdINhME47BPSwsVqi2/4m2IxF83aD
 8oj9GtFQqVcreDoxludmUNbiXELjQjO0Ehdo1Pey6/EF1N+jIpbKlFzNKI+9RJxCckkV
 Lh6HE0BRD6bqEmWfp3epO+L8iEClwSRSF5zgBzYZvEas/HXxcPN7HKmoob/jmM97dM3F
 Ar7rViXtGu6G+iK5+KTuExCgD0jZA3xL1+Ay7qqz8IHLneZimrH1gq8TUxSSqNepq/l/
 uMdA==
X-Gm-Message-State: APjAAAX2MFgd0Xb3cv818nQLcbIIvBi83HQ7JTZghSmP71m9T+t4IlqO
 5S+X4o7+FritACNFzMnBDH2I/uKSyyE4/Fa8k+8=
X-Google-Smtp-Source: APXvYqwelkyoSXZXCs+ok0tAtv5XZgf/Y6CcbjhsQi64NXLvqgTSPnIY3I+Cf5Q+rm0J5C/KRhsnJkYs40tFDWHIiFA=
X-Received: by 2002:a7b:ce8a:: with SMTP id q10mr456126wmj.109.1560809276561; 
 Mon, 17 Jun 2019 15:07:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190522231948.17559-1-chris.packham@alliedtelesis.co.nz>
 <355dad1321ed46baa98ca6f47b4d00b5@svr-chch-ex1.atlnz.lc>
In-Reply-To: <355dad1321ed46baa98ca6f47b4d00b5@svr-chch-ex1.atlnz.lc>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 18 Jun 2019 00:07:45 +0200
Message-ID: <CAFLxGvwNNWKzbfKvDjAK6rujbr5qtmVAWCDD5aULO4BVKutRKw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] mtd: concat: refactor concat_lock/concat_unlock
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_150759_472990_4E72F541 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>, "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 5:26 AM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
>
> Hi All,
>
> Ping?

Your patch is not lost. We start soon with collecting all material for
the merge window. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
