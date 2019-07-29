Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DB179AE7
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 23:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7T092CzepTFCJMMuECEvozyzxXbg8Kxwn5hyeFv5Ds=; b=Q3i9AS5DEWX8zN
	LoPiZNHSWC5wlHbUMi1CjzQuvkY7VQooRT3kpuAMW2iJ5ubeEOpH3tDpPKv6rKhYAARmmIMJHrbda
	eqZctfyvvHjtxeQNm/vCrYd5N2Y3nhuWV78s0LD+pfMimBxRSsDQkeyKRUKYBD+2oRdlE7qnv445s
	lGvWiUbfllEY2raZbNU9X/4vUmXoh7qrN4IcytdsB3aKLxVV9u7KB6kgqBxEMr4HwULNkFonuL/pK
	TNmF4mUYcOrI5PMiLZHq1VP+NkUfxXkLEdSddWOR5jqv1onvtEv8P2Wpe1YnSgTYZ/tRY6xIAQ3ad
	T4s/ofPSf8dnlhcIY/2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsD1R-0008Hj-9n; Mon, 29 Jul 2019 21:17:33 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsD1J-0008HS-8M
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 21:17:26 +0000
Received: by mail-lj1-x230.google.com with SMTP id y17so35411300ljk.10
 for <linux-mtd@lists.infradead.org>; Mon, 29 Jul 2019 14:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zIZTo5rrRAIbqrKAG7olb5hErgIdmyCcRf8kjuouat0=;
 b=akgARd9hmEUIn4rRmON7DemxBPcetES9X6V6qGibsqtb4XbCUySYldnArICIiYXneP
 tQ2ONpKcbNsg2aTvIrmSLJQ9+e8iwTzWUbNkJPYUtifiWvqKjDOfFNyPszOTaimNDC2Y
 NOK+WKhyGMvFrPRO7MDFz0oDv0LroNLzE3OmOXJ1UxAHKXakbrKUOuuQKm04tdoCronB
 Bw1XQSmW5dDQUD/If/DA7hdDQHfrg0Q8fb+3r8cZtApdZlypavrOuFhOeJgf1eC7dvgf
 rQnHl8Bvlo5ITBejWxFfddzblRENs2W/ggVSjLRup6L77SkQWKO03g7+342SGl9jenRJ
 E5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zIZTo5rrRAIbqrKAG7olb5hErgIdmyCcRf8kjuouat0=;
 b=mWZjxIqPUE0cJiKyrCxQx08Y662weKIh2tGR5M3gBsKQwAb2MlYclXFDtYzmZbMdu6
 SxIR6EcrMIh0ePzjF7gpSxW/aJ6PbrbiHc+GsNngG7IGcrlkZy57goQXjcLrR4BPLe0N
 qA+g157iB234DDJFajthmd6PKgIN/dlyLeJfBWmXqdEojlFsSsPIhs8ivxj7XPGMW5hL
 7r/J/bJladr0d1tjk8CwufBDpgStZNfmXwhBoFINCHC/gAeHnJ+vOZL1YpY9CUhEsDU1
 SQNKV928sPOZfpD5Q86zNKqAqdI3ezHs56v78Y7I0EKtXEXiqw4cgFh+Ny/WuzdaM1sO
 OO5g==
X-Gm-Message-State: APjAAAWFzDi/CLGB5H7VZSftTBXRxJBhVNrnXhCDqyEc2BHsXIRrQ4jb
 d7LeUf0sZw9CEeyUQVPjrjFOImuOFAsDN3CzMEM=
X-Google-Smtp-Source: APXvYqyvffVYZpK1/iNBV3GSrFIR/URxWULglQBm+xx73uz5LKug38Puu+xuJdOEuEHpcm3YsuQZGxfZCwEEK9fmoOU=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr22167680ljs.44.1564435043220; 
 Mon, 29 Jul 2019 14:17:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190725001114.0ceff19c@jawa>
 <CAOMZO5CsTPaRSe-VmOwnnYrsMMXa3GhurmsWwzaPo948xs10FA@mail.gmail.com>
 <20190729224326.44aa3057@jawa>
In-Reply-To: <20190729224326.44aa3057@jawa>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jul 2019 18:17:28 -0300
Message-ID: <CAOMZO5C4UgetHAW6_JqLGZH96_8TyHSzj10DxFe+XMnZR07ASA@mail.gmail.com>
Subject: Re: [imx][vybrid][qspi] Regression notification - vybrid vf610
 QUADSPI - BK4 board
To: Lukasz Majewski <lukma@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_141725_300120_F0F1EABF 
X-CRM114-Status: UNSURE (   5.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yogesh Gaur <yogeshnarayan.gaur@nxp.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, Suresh Gupta <suresh.gupta@nxp.com>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Lukasz,

On Mon, Jul 29, 2019 at 5:43 PM Lukasz Majewski <lukma@denx.de> wrote:

> Thank you for your reply, Fabio.

I assume you are using arch/arm/boot/dts/vf610-bk4.dts

In this file I see that you only define the DATA0 and DATA1 pins for QSPI0_B:

VF610_PAD_PTD11__QSPI0_B_DATA1 0x397f
VF610_PAD_PTD12__QSPI0_B_DATA0 0x397f

Don't you also need to define DATA2 and DATA3?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
