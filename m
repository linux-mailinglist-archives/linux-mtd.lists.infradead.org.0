Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E8139381
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Jan 2020 15:17:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ux4viuJS/UKpQRKzUSreuE2l5JNkz9jTpCyVOaevENA=; b=H7sKfuCMsxlQSj
	0Q5BfMU3/jK1rjFs9qP6r+tWdn1VZ5l+Z8d98bwTvvOrbSpqEQHtmAwDalKgKgEDgSfOi2eumCZvz
	41o4+QwpRX9dFtwUVj9tfSIQWOM0ZMM5MA1QVawNEbHtZgbPsJlT5tQ8IzEdUJ3CFCC9FAZbXmxzj
	c/7ZdRwagvOYxnlBCni66FT0S7hNRQ6r/wsKf9Cp5gaKcrDXUu3njou46QjuNI+XsULVx+4KFIduu
	30P66u40EId5nP65Yg+cYoKJEGtjOxkZvH8ZmywpdmiyJN5wwCbxOLZTeb2Xu2qwtOITG4e4aDr1y
	BARX8S41m13rnQI5l5lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0XP-00048S-OK; Mon, 13 Jan 2020 14:17:51 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0XF-00047l-Um
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 14:17:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so3876229plb.8
 for <linux-mtd@lists.infradead.org>; Mon, 13 Jan 2020 06:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=119x/Eo/ZhPiCKgs62+XdxHroV/8LTfvJfM2saKhvMM=;
 b=EpmaSjOrQz0+d6OkeqW0heot71A0xa5DkM5q720p+CpVjpinNi5eu32VBhrd+O34lQ
 eDAQz7/+a32YcaPqT9wIRP3A2pFR0c1Gl4JsduM49qY4JbHD32jeuCSH3OqK59mEVOms
 DHFe8PsooYXnKhrGxGQnqE8OhP2rhBv5NbrfdpRRGC9vbfv+q5vFfMYAabn2KfYeA4gK
 94SnJHIbEjbr2HIYR+Hr68pfBzBrAVYEhCWKuw3DEyijbjb1Sw7+jaLnLB2+hD3oVapk
 LlmfwTQtbzwUdOB3+ZLzl55wNOoZgI8t618Y7T5meC05opnGClv0Eyb2+ViO/n9v+Qp9
 SZ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=119x/Eo/ZhPiCKgs62+XdxHroV/8LTfvJfM2saKhvMM=;
 b=SplL5pJIaP9jj42Eh5tI0+sdvc3YUDyxoD3ta6Z8rJw+impR/nBcwkUSTVFxCMBJT7
 ha5EXAGiGBtgOjOzVw2SVNmBuzHMKUgtQfEb/oBnwLM6HbxHc4A4YNe0oT1kwmJqwAbm
 +CkiKolHJzb+zJ4+GGNBzG+qndHp/0nn2WSLdGv7d6r60IF06OzbaiTBbGE+67sl0Mwz
 mgC4pKitbY7jVV7acc+VquCkFpVqJwTW1lrpKDigpg2LeJwbCzbg2XgoAtJGSdeEaMAk
 KrFOxNE5Kqy+gHoqtFhIe4w1eOnWXJ+vwkaHcHEgKwV4yExMtb12jNpYe4M15sjYtW3N
 5FWQ==
X-Gm-Message-State: APjAAAXh/54TvG9M+gS6uzt50/DOWs4olqSHmn48ekTqDWrjUhV2y9Qd
 rvKEsnYkcZgjFDgAMcbFFwbhEchFda+RbkpWZdE=
X-Google-Smtp-Source: APXvYqy/D2U/FQw2fb9jrTRONhgmF8LX4dXqawk9ArLlxHsN/8v4y1E1uniZK1AjWAL142s551EWDJ4RvlQqLC5nESU=
X-Received: by 2002:a17:90b:3109:: with SMTP id
 gc9mr22592063pjb.30.1578925061030; 
 Mon, 13 Jan 2020 06:17:41 -0800 (PST)
MIME-Version: 1.0
References: <1575900490-74467-3-git-send-email-john.garry@huawei.com>
 <0dc5cb2e-b765-9e13-b05e-9e3c835c5985@huawei.com>
 <20200109212842.GK3702@sirena.org.uk>
 <df67b562-7d82-19f6-7581-680190a7772d@huawei.com>
 <20200110140726.GB5889@sirena.org.uk>
 <6db83881-927c-d11c-9c77-23a45892ddab@huawei.com>
 <20200110193119.GI32742@smile.fi.intel.com>
 <612a3c5d-69a4-af6b-5c79-c3fb853193ab@huawei.com>
 <20200113114256.GH3897@sirena.org.uk>
 <6dd45da9-9ccf-45f7-ed12-8f1406a0a56b@huawei.com>
 <20200113140627.GJ3897@sirena.org.uk>
In-Reply-To: <20200113140627.GJ3897@sirena.org.uk>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 13 Jan 2020 16:17:32 +0200
Message-ID: <CAHp75VfepiiVFLLmCwdBS0Z6tmR+XKBaOLg1qPPuz1McLjS=4Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_061741_997548_46899F78 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: liusimin4@huawei.com, chenxiang66@hisilicon.com,
 John Garry <john.garry@huawei.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 tudor.ambarus@microchip.com, Jiancheng Xue <xuejiancheng@hisilicon.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, fengsheng5@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 4:07 PM Mark Brown <broonie@kernel.org> wrote:
> On Mon, Jan 13, 2020 at 01:01:06PM +0000, John Garry wrote:
> > On 13/01/2020 11:42, Mark Brown wrote:
>
> > > The idiomatic approach appears to be for individual board vendors
> > > to allocate IDs, you do end up with multiple IDs from multiple
> > > vendors for the same thing.
>
> > But I am not sure how appropriate that same approach would be for some 3rd
> > party memory part which we're simply wiring up on our board. Maybe it is.
>
> It seems to be quite common for Intel reference designs to assign
> Intel IDs to non-Intel parts on the board (which is where I
> became aware of this practice).

Basically vendor of component in question is responsible for ID, but
it seems they simple don't care.

-- 
With Best Regards,
Andy Shevchenko

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
